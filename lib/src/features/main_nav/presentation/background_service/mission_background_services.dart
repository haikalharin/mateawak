import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'dart:ui';

import 'package:module_shared/module_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/features/overview/domain/news_response.remote.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../constants/constant.dart';
import '../../../../constants/function_utils.dart';
import '../../../mission/domain/gamification_response.remote.dart';
import '../../../task/domain/answer_request.remote.dart';

FutureOr<void> intializedMissionBackgroundService() async {
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

  serviceInstance.on(Constant.bgMissionInit).listen((payload) async {
    try {
      final existingIsarInstance =
          Isar.getInstance(Constant.etamkawaIsarInstance);

      final isarInstance = existingIsarInstance ??
          Isar.openSync(
              [NewsResponseRemoteSchema, GamificationResponseRemoteSchema,AnswerRequestRemoteSchema],
              directory: dir.path, name: Constant.etamkawaIsarInstance);

      List<GamificationResponseRemote> listResponse = [];
      List<GamificationResponseRemote> listResponseFinal = [];
      final employeeId = payload?['employeeId'] as int;
      final requestDate = payload?['requestDate'] as String;

     final response = await ConnectBackgroundService().post(
        accessToken: payload?['accessToken'] as String,
        path: payload?['path'] as String,
        url: payload?['url'] as String,
        body: {
          "employeeId": employeeId,
          "requestDate": requestDate
          //"requestDate": '2024-03-01T03:55:58.918Z'
        },
      );
     if(response.statusCode == 200){
       log('submit data result: ${response.result}');
       for (var element in response.result?.content) {
         // for (var element in rawMissionDummy) {
         final result = GamificationResponseRemote.fromJson(element);
         listResponse.add(result);
       }
       // final today = CommonUtils.formatDateRequestParam(DateTime.now().toString());
       // ref.watch(latestSyncDateState.notifier).state = today;

       final repo = isarInstance.gamificationResponseRemotes
           .filter()
           .employeeMissionIdIsNotNull()
           .findAll();

       await AsyncValue.guard(() => repo).then((value) async {
         if(listResponse.isNotEmpty) {
           for (var element in listResponse) {
             if ((value.value ?? []).isNotEmpty) {
               bool exists = (value.value ?? []).any(
                       (item) =>
                   item.employeeMissionId == element.employeeMissionId);

               if (!exists) {
                 listResponseFinal.add(element);
               }
             } else {
               listResponseFinal.add(element);
             }
           }
         }
       });
       int index = 0;
       for (var element in listResponseFinal) {
         List<TaskDatum> listTask =
             element.chapterData?.single.missionData?.single.taskData ?? [];
         int indexTask = 0;
         for (var element in listTask) {
           File file = File('');
           if (element.attachmentPath == null) {
             if (element.attachmentUrl != null) {
               final response = ConnectBackgroundService().downloadImage(
                 url: element.attachmentUrl ?? '',
               );
               await AsyncValue.guard(() => response).then((value) async {
                 file = await asyncMethodSaveFile(value.value?.data);
                 listResponseFinal[index].chapterData?.single.missionData?.single
                     .taskData?[indexTask].attachmentPath = file.path;
                 indexTask++;
               });
             }
           }
         }

         index++;
       }
       listResponseFinal.clear();
       var indexInCompleted = 0;
       for (var element in listResponseFinal) {
         DateTime dueDate =
         DateTime.parse(element.dueDate ?? '2024-00-00T00:00:00');
         int different = calculateDifferenceDays(dueDate, DateTime.now());
         if (element.missionStatusCode != null) {
           if (different > 0 && element.missionStatusCode! < 2) {
             listResponseFinal[indexInCompleted].missionStatusCode = 4;
             listResponseFinal[indexInCompleted].missionStatus = 'InCompleted';
           }
         }
       }

       await isarInstance.writeTxn(() async {
         //await isarInstance.gamificationResponseRemotes.clear();
         await isarInstance.gamificationResponseRemotes
             .putAll(listResponseFinal);
       });

       // final data = await isarInstance.gamificationResponseRemotes
       //     .filter()
       //     .employeeMissionIdIsNotNull()
       //     .findAll();

       // if (isarInstance.isOpen) {
       //   await isarInstance.close();
       // }
       //await serviceInstance.stopSelf();
     }
    } catch (e) {
      log('background service error: $e');
      throw Exception(e);
    }
  });
}
