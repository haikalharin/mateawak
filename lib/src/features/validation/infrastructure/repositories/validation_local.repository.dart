import 'dart:io';

import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/constants/function_utils.dart';
import 'package:module_etamkawa/src/features/task/domain/result_submission_request.remote.dart';
import 'package:module_etamkawa/src/features/validation/domain/validate_request.remote.dart';
import 'package:module_etamkawa/src/features/validation/domain/validation_response.remote.dart';
import 'package:module_etamkawa/src/features/validation/presentation/controller/validation.controller.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../constants/constant.dart';
import '../../../../shared_component/connection_listener_widget.dart';
import '../../../offline_mode/infrastructure/repositories/isar.repository.dart';

part 'validation_local.repository.g.dart';

@riverpod
FutureOr<List<ValidationResponseRemote>> getValidationRemote(
    GetValidationLocalRef ref) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);
  final isConnectionAvailable = ref.read(isConnectionAvailableProvider);

  if (isConnectionAvailable) {
    final connect = ref.read(connectProvider.notifier);
    List<ValidationResponseRemote> listResponse = [];
    List<ValidationResponseRemote> listResponseFinal = [];
    List<ValidationResponseRemote> listAfterInputImage = [];
    final latestSyncDate =
        ref.read(latestSyncDateValidationState.notifier).state;
    final userModel = await ref.read(helperUserProvider).getUserProfile();
    final response = await connect.post(
        modul: ModuleType.etamkawaGamification,
        path: "api/mission/get_employee_mission_by_param?${Constant.apiVer}",
        body: {
          "validatorId": userModel?.employeeID,
          "missionStatusCode": 3,
          "lastSyncDate": latestSyncDate
        });
    for (var element in response.result?.content) {
      //for (var element in rawValidationDummy) {
      final result = ValidationResponseRemote.fromJson(element);
      listResponse.add(result);
    }

    final repo = isarInstance.validationResponseRemotes
        .filter()
        .employeeMissionIdIsNotNull()
        .findAll();

    for (var element in listResponse) {
      await AsyncValue.guard(() => repo).then((value) async {
        if ((value.value ?? []).isNotEmpty) {
          bool exists = (value.value ?? []).any(
              (item) => item.employeeMissionId == element.employeeMissionId);
          if (!exists) {
            listResponseFinal.add(element);
          }
        } else {
          listResponseFinal.add(element);
        }
      });
    }

    List<ValidationResponseRemote> listResponseFinalFix =
        listResponseFinal.toSet().toList();
    // int index = 0;
    for (var element in listResponseFinalFix) {
      List<TaskValidationDatum> listTask =
          element.chapterData?.single.missionData?.single.taskData ?? [];
      // int indexTask = 0;
      List<TaskValidationDatum> taskData = [];
      for (var element in listTask) {
        var taskDataUpdate = TaskValidationDatum(
            taskId: element.taskId,
            missionId: element.missionId,
            attachmentId: element.attachmentId,
            attachmentUrl: element.attachmentUrl,
            answer: element.answer,
            //attachmentPath: file.path,
            answerAttachmentId: element.answerAttachmentId,
            answerAttachmentUrl: element.answerAttachmentUrl,
            //answerAttachmentPath: file.path,
            taskCode: element.taskCode,
            taskGroup: element.taskGroup,
            taskCaption: element.taskCaption,
            taskTypeCode: element.taskTypeCode,
            taskTypeName: element.taskTypeName,
            taskReward: element.taskReward);
        File file = File('');
        if (element.attachmentPath == null) {
          if (element.attachmentUrl != null) {
            final response = await connect.downloadImage(
              url: element.attachmentUrl ?? '',
            );
            response.data;
            file = await asyncMethodSaveFile(response.data);
          }
          taskDataUpdate.attachmentPath = file.path;
          // indexTask++;
        } else {
          taskDataUpdate.attachmentPath = element.attachmentPath;
        }
        if (element.answerAttachmentPath == null) {
          if (element.answerAttachmentUrl != null) {
            final response = await connect.downloadImage(
              url: element.answerAttachmentUrl ?? '',
            );
            response.data;
            file = await asyncMethodSaveFile(response.data);
          }
          taskDataUpdate.answerAttachmentPath = file.path;
          // indexTask++;
        } else {
          taskDataUpdate.answerAttachmentPath = element.answerAttachmentPath;
        }
        taskData.add(taskDataUpdate);
      }
      listAfterInputImage.add(ValidationResponseRemote(
          employeeMissionId: element.employeeMissionId,
          employeeName: element.employeeName,
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
            ChapterValidationDatum(
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
                MissionValidationDatum(
                  missionId:
                      element.chapterData?.single.missionData?.single.missionId,
                  chapterId:
                      element.chapterData?.single.missionData?.single.chapterId,
                  missionCode: element
                      .chapterData?.single.missionData?.single.missionCode,
                  missionName: element
                      .chapterData?.single.missionData?.single.missionName,
                  missionInstruction: element.chapterData?.single.missionData
                      ?.single.missionInstruction,
                  missionDuration: element
                      .chapterData?.single.missionData?.single.missionDuration,
                  missionActiveOnDay: element.chapterData?.single.missionData
                      ?.single.missionActiveOnDay,
                  missionTypeCode: element
                      .chapterData?.single.missionData?.single.missionTypeCode,
                  missionTypeName: element
                      .chapterData?.single.missionData?.single.missionTypeName,
                  missionReward: element
                      .chapterData?.single.missionData?.single.missionReward,
                  taskData: taskData,
                  competencyCode: element
                      .chapterData?.single.missionData?.single.competencyCode,
                  competencyName: element
                      .chapterData?.single.missionData?.single.competencyName,
                  peopleCategoryCode:
                      element
                      .chapterData?.single.missionData?.single.peopleCategoryCode,
                  peopleCategoryName:
                      element
                      .chapterData?.single.missionData?.single.peopleCategoryName,
                )
              ],
            )
          ]));
      // index++;
    }

    await isarInstance.writeTxn(() async {
      await isarInstance.validationResponseRemotes.putAll(listAfterInputImage);
    });
    final today = CommonUtils.formatDateRequestParam(DateTime.now().toString());
    ref.read(latestSyncDateValidationState.notifier).state = today;
    ref.keepAlive();
  }
  final data = await isarInstance.validationResponseRemotes
      .filter()
      .employeeMissionIdIsNotNull()
      .findAll();
  return data;
}

@riverpod
FutureOr<List<ValidationResponseRemote>> getValidationLocal(
    GetValidationLocalRef ref) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);
  List<ValidationResponseRemote> listResponse = [];

  final data = await isarInstance.validationResponseRemotes
      .filter()
      .employeeMissionIdIsNotNull()
      .findAll();

  for (var element in data) {
    listResponse.add(element);
  }
  debugPrint('isarprinted');
  await isarInstance.writeTxn(() async {
    await isarInstance.validationResponseRemotes.putAll(listResponse);
  });
  ref.keepAlive();
  return data;
}

@riverpod
Future<ResultSubmissionRequestRemote> submitValidation(SubmitValidationRef ref,
    {required ValidateRequestRemote validationRequestRemote}) async {
  final userModel = await ref.read(helperUserProvider).getUserProfile();
  final connect = ref.read(connectProvider.notifier);
  final isarInstance = await ref.watch(isarInstanceProvider.future);
  final response = await connect.post(
      modul: ModuleType.etamkawaGamification,
      path:
          "api/mission/validate_employee_mission?userAccount=${userModel?.email ?? ''}&${Constant.apiVer}",
      body: validationRequestRemote.toJson());

  if (response.statusCode == 200) {
    await isarInstance.writeTxn(() async {
      await isarInstance.validateRequestRemotes
          .filter()
          .employeeMissionIdEqualTo(validationRequestRemote.employeeMissionId)
          .deleteAll();
    });
  }
  ResultSubmissionRequestRemote result =
      ResultSubmissionRequestRemote.fromJson(response.result?.content);
  return result;
}
