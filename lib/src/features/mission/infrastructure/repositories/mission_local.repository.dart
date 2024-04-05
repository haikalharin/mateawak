import 'dart:io';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_response.remote.dart';
import 'package:module_etamkawa/src/features/mission/presentation/controller/mission.controller.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../constants/constant.dart';
import '../../../../constants/function_utils.dart';
import '../../../../shared_component/connection_listener_widget.dart';
import '../../../offline_mode/infrastructure/repositories/isar.repository.dart';

part 'mission_local.repository.g.dart';

@riverpod
FutureOr<List<GamificationResponseRemote>> getMissionRemote(GetMissionLocalRef ref) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);
  final isConnectionAvailable = ref.read(isConnectionAvailableProvider);

  if(isConnectionAvailable) {
    final connect = ref.read(connectProvider.notifier);
    List<GamificationResponseRemote> listResponse = [];
    List<GamificationResponseRemote> listResponseFinal = [];
    List<GamificationResponseRemote> listAfterInputImage = [];
    // const rawMissionDummy = Constant.rawMissionDummy;
    final userModel = await ref.read(helperUserProvider).getUserProfile();
    final latestSyncDate = ref
        .read(latestSyncDateState.notifier)
        .state;
    final response = await connect.post(
        modul: ModuleType.etamkawaGamification,
        path: "api/mission/get_employee_mission?${Constant.apiVer}",
        body: {
          "employeeId": userModel?.employeeID,
          "requestDate": latestSyncDate
          //"requestDate": '2024-03-01T03:55:58.918Z'
        }
    );
    for (var element in response.result?.content) {
      // for (var element in rawMissionDummy) {
      final result = GamificationResponseRemote.fromJson(element);
      listResponse.add(result);
    }
    final today = CommonUtils.formatDateRequestParam(DateTime.now().toString());
    ref
        .watch(latestSyncDateState.notifier)
        .state = today;
    var repo = ref.watch(getMissionLocalProvider.future);

    for (var element in listResponse) {
      await AsyncValue.guard(() => repo).then((value) async {
        if ((value.value ?? []).isNotEmpty) {
          bool exists = (value.value ?? []).any((item) =>
          item.employeeMissionId == element.employeeMissionId);
          if (!exists) {
            listResponseFinal.add(element);
          }
        } else {
          listResponseFinal.add(element);
        }
      });
    }
    List<GamificationResponseRemote> listResponseFinalFix = listResponseFinal
        .toSet().toList();
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
            final response = await connect.downloadImage(
              url: element.attachmentUrl ?? '',
            );
            response.data;
            file = await asyncMethodSaveFile(response.data);
          }
          taskData.add(TaskDatum(taskId: element.taskId,
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
          taskData.add(TaskDatum(taskId: element.taskId,
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
          chapterData: [ChapterDatum(
            chapterId: element.chapterData?.single.chapterId,
            chapterCode: element.chapterData?.single.chapterCode,
            chapterName: element.chapterData?.single.chapterName,
            chapterGoal: element.chapterData?.single.chapterGoal,
            competencyCode: element.chapterData?.single.competencyCode,
            competencyName: element.chapterData?.single.competencyName,
            peopleCategoryCode: element.chapterData?.single.peopleCategoryCode,
            peopleCategoryName: element.chapterData?.single.peopleCategoryName,
            missionData: [
              MissionDatum(
                missionId: element.chapterData?.single.missionData?.single
                    .missionId,
                chapterId: element.chapterData?.single.missionData?.single
                    .chapterId,
                missionCode: element.chapterData?.single.missionData?.single
                    .missionCode,
                missionName: element.chapterData?.single.missionData?.single
                    .missionName,
                missionInstruction: element.chapterData?.single.missionData
                    ?.single.missionInstruction,
                missionDuration: element.chapterData?.single.missionData?.single
                    .missionDuration,
                missionActiveOnDay: element.chapterData?.single.missionData
                    ?.single.missionActiveOnDay,
                missionTypeCode: element.chapterData?.single.missionData?.single
                    .missionTypeCode,
                missionTypeName: element.chapterData?.single.missionData?.single
                    .missionTypeName,
                missionReward: element.chapterData?.single.missionData?.single
                    .missionReward,
                taskData: taskData,)
            ],
          )
          ]));
      index++;
    }
    await isarInstance.writeTxn(() async {
      //await isarInstance.gamificationResponseRemotes.clear();
      await isarInstance.gamificationResponseRemotes.putAll(
          listAfterInputImage);
    });


    ref.keepAlive();
  }

  final data = await isarInstance.gamificationResponseRemotes
      .filter()
      .employeeMissionIdIsNotNull()
      .findAll();

  return data;
}


@riverpod
FutureOr<List<GamificationResponseRemote>> getMissionLocal(GetMissionLocalRef ref) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);
  List<GamificationResponseRemote> listResponse = [];

  final data = await isarInstance.gamificationResponseRemotes
      .filter()
      .employeeMissionIdIsNotNull()
      .findAll();

  for (var element in data) {
    listResponse.add(element);
  }

  await isarInstance.writeTxn(() async {
    //await isarInstance.gamificationResponseRemotes.clear();
    await isarInstance.gamificationResponseRemotes.putAll(listResponse);
  });
  ref.keepAlive();
  return data;
}


