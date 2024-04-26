import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:ui';

import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:dio/dio.dart';
import 'package:module_etamkawa/src/features/task/domain/answer_request.remote.dart';
import 'package:module_shared/src/configs/services/connect_background_sevices.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/features/overview/domain/news_response.remote.dart';
import 'package:module_shared/module_shared.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../constants/constant.dart';
import '../../../../constants/function_utils.dart';
import '../../../../utils/common_utils.dart';
import '../../../mission/domain/gamification_response.remote.dart';

FutureOr<void> intializeSendAnswerBackgroundService() async {
  log('intializedBackgroundService');
  final service = FlutterBackgroundService();
  await service.configure(
    androidConfiguration: AndroidConfiguration(
      onStart: onStart,
      autoStart: false,
      isForegroundMode: false,
    ),
    iosConfiguration: IosConfiguration(
        autoStart: false, onForeground: onStart, onBackground: onIosBackground),
  );
  await service.startService();
}

@pragma('vm:entry-point')
Future<bool> onIosBackground(ServiceInstance serviceInstance) async {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();

  await performExecution(serviceInstance);

  return true;
}

@pragma('vm:entry-point')
void onStart(ServiceInstance serviceInstance) async {
  DartPluginRegistrant.ensureInitialized();

  await performExecution(serviceInstance);
}

Future<void> performExecution(ServiceInstance serviceInstance) async {
  final dir = await getApplicationSupportDirectory();

  serviceInstance.on(Constant.bgSendAnswer).listen((payload) async {
    try {
      final existingIsarInstance =
          Isar.getInstance(Constant.etamkawaIsarInstance);

      final isarInstance = existingIsarInstance ??
          Isar.openSync(
              [NewsResponseRemoteSchema, GamificationResponseRemoteSchema,AnswerRequestRemoteSchema],
              directory: dir.path, name: Constant.etamkawaIsarInstance);



      final repo = isarInstance.answerRequestRemotes
          .filter()
          .employeeMissionIdIsNotNull()
          .findAll();

      await AsyncValue.guard(() => repo).then((value) async {
        for (var element in value.value ?? []) {
          AnswerRequestRemote data = element;
          if (data.status != 99) {

          if (data.status == 3) {
            data.taskData?.first.attachmentId = 64;
          }
          final response = await ConnectBackgroundService().post(
              accessToken: payload?['accessToken'] as String,
              path: payload?['path'] as String,
              url: payload?['url'] as String,
              body: data.toJson());
          if (response.statusCode == 200) {
            await isarInstance.writeTxn(() async {
              await isarInstance.answerRequestRemotes
                  .delete(data.employeeMissionId ?? 0)
                  .whenComplete(() async {
                await isarInstance.gamificationResponseRemotes
                    .delete(data.employeeMissionId ?? 0);
              });
            });
          }
        }
      }
      });
    } catch (e) {
      log('background service error: $e');
      throw Exception(e);
    }
  });
}
