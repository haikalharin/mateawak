import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:ui';

import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:dio/dio.dart';
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
              [NewsResponseRemoteSchema, GamificationResponseRemoteSchema],
              directory: dir.path, name: Constant.etamkawaIsarInstance);

      List<GamificationResponseRemote> listResponse = [];
      List<GamificationResponseRemote> listResponseFinal = [];
      List<GamificationResponseRemote> listAfterInputImage = [];
      List<GamificationResponseRemote> listAfterCheckIsIncomplete = [];
      final employeeId = payload?['employeeId'] as int;
      final requestDate = payload?['requestDate'] as String;
      final repo = payload?['repo'] as List<dynamic>;
      List<GamificationResponseRemote> listRepo = [];
      if (repo.isNotEmpty) {
        for (var element in repo) {
          listRepo.add(gamificationResponseRemoteFromJson(element));
        }
      }
      ConnectBackgroundService().post(
        accessToken: payload?['accessToken'] as String,
        path: payload?['path'] as String,
        url: payload?['url'] as String,
        body: {
          "employeeId": employeeId,
          "requestDate": requestDate
          //"requestDate": '2024-03-01T03:55:58.918Z'
        },
      ).then((value) async {
        log('submit data result: $value');
        for (var element in value.result?.content) {
          // for (var element in rawMissionDummy) {
          final result = GamificationResponseRemote.fromJson(element);
          listResponse.add(result);
        }
        // final today = CommonUtils.formatDateRequestParam(DateTime.now().toString());
        // ref.watch(latestSyncDateState.notifier).state = today;
        for (var element in listResponse) {
          if (listRepo.isNotEmpty) {
            bool exists = (listRepo).any(
                (item) => item.employeeMissionId == element.employeeMissionId);
            if (!exists) {
              listResponseFinal.add(element);
            }
          } else {
            listResponseFinal.add(element);
          }
        }
        List<GamificationResponseRemote> listResponseFinalFix =
            listResponseFinal.toSet().toList();
        int index = 0;
        for (var element in listResponseFinalFix) {
          List<TaskDatum> listTask =
              element.chapterData?.single.missionData?.single.taskData ?? [];
          int indexTask = 0;
          List<TaskDatum> taskData = [];
          for (var element in listTask) {
            File file = File('');
            if (element.attachmentPath == null) {
              if (element.attachmentUrl != null) {
                final response = await ConnectBackgroundService().downloadImage(
                  url: element.attachmentUrl ?? '',
                );
                response.data;
                file = await asyncMethodSaveFile(response.data);
              }
              taskData.add(TaskDatum(
                  taskId: element.taskId,
                  missionId: element.missionId,
                  attachmentId: element.attachmentId,
                  attachmentUrl: element.attachmentUrl,
                  attachmentPath: file.path,
                  taskCode: element.taskCode,
                  taskGroup: element.taskGroup,
                  taskCaption: element.taskCaption,
                  taskTypeCode: element.taskTypeCode,
                  taskTypeName: element.taskTypeName,
                  taskReward: element.taskReward,
                  answerData: element.answerData));
              indexTask++;
            } else {
              taskData.add(TaskDatum(
                  taskId: element.taskId,
                  missionId: element.missionId,
                  attachmentId: element.attachmentId,
                  attachmentUrl: element.attachmentUrl,
                  attachmentPath: element.attachmentPath,
                  taskCode: element.taskCode,
                  taskGroup: element.taskGroup,
                  taskCaption: element.taskCaption,
                  taskTypeCode: element.taskTypeCode,
                  taskTypeName: element.taskTypeName,
                  taskReward: element.taskReward,
                  answerData: element.answerData));
            }
          }
          listAfterInputImage.add(GamificationResponseRemote(
              employeeMissionId: element.employeeMissionId,
              missionId: element.missionId,
              missionStatusCode: element.missionStatusCode,
              missionStatus: element.missionStatus,
              startedDate: element.startedDate,
              dueDate: element.dueDate,
              submittedBy: element.submittedBy,
              submittedDate: element.submittedDate,
              completedBy: element.completedBy,
              completedDate: element.completedDate,
              chapterData: [
                ChapterDatum(
                  chapterId: element.chapterData?.single.chapterId,
                  chapterCode: element.chapterData?.single.chapterCode,
                  chapterName: element.chapterData?.single.chapterName,
                  chapterGoal: element.chapterData?.single.chapterGoal,
                  competencyCode: element.chapterData?.single.competencyCode,
                  competencyName: element.chapterData?.single.competencyName,
                  peopleCategoryCode:
                      element.chapterData?.single.peopleCategoryCode,
                  peopleCategoryName:
                      element.chapterData?.single.peopleCategoryName,
                  missionData: [
                    MissionDatum(
                      missionId: element
                          .chapterData?.single.missionData?.single.missionId,
                      chapterId: element
                          .chapterData?.single.missionData?.single.chapterId,
                      missionCode: element
                          .chapterData?.single.missionData?.single.missionCode,
                      missionName: element
                          .chapterData?.single.missionData?.single.missionName,
                      missionInstruction: element.chapterData?.single
                          .missionData?.single.missionInstruction,
                      missionDuration: element.chapterData?.single.missionData
                          ?.single.missionDuration,
                      missionActiveOnDay: element.chapterData?.single
                          .missionData?.single.missionActiveOnDay,
                      missionTypeCode: element.chapterData?.single.missionData
                          ?.single.missionTypeCode,
                      missionTypeName: element.chapterData?.single.missionData
                          ?.single.missionTypeName,
                      missionReward: element.chapterData?.single.missionData
                          ?.single.missionReward,
                      taskData: taskData,
                    )
                  ],
                )
              ]));
          index++;
        }

        for (var element in listAfterInputImage) {
          DateTime dueDate =  DateTime.parse(element.dueDate??'2024-00-00T00:00:00');
          int different =calculateDifferenceDays(DateTime.now(),dueDate);
          if(different>=30){
            listAfterCheckIsIncomplete.add(GamificationResponseRemote(
                employeeMissionId: element.employeeMissionId,
                missionId: element.missionId,
                missionStatusCode: 4,
                missionStatus: 'Incomplete',
                startedDate: element.startedDate,
                dueDate: element.dueDate,
                submittedBy: element.submittedBy,
                submittedDate: element.submittedDate,
                completedBy: element.completedBy,
                completedDate: element.completedDate,
                chapterData: element.chapterData ));

          } else{
            listAfterCheckIsIncomplete.add(element);
          }
        }

        await isarInstance.writeTxn(() async {
          //await isarInstance.gamificationResponseRemotes.clear();
          await isarInstance.gamificationResponseRemotes
              .putAll(listAfterCheckIsIncomplete);
        });
        // final data = await isarInstance.gamificationResponseRemotes
        //     .filter()
        //     .employeeMissionIdIsNotNull()
        //     .findAll();

        // if (isarInstance.isOpen) {
        //   await isarInstance.close();
        // }
        //await serviceInstance.stopSelf();
      });
    } catch (e) {
      log('background service error: $e');
      throw Exception(e);
    }
  });
}
