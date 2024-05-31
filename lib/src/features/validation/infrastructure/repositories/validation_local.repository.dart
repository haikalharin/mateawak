import 'dart:io';

import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/configs/services/connect_etamkawa.dart';
import 'package:module_etamkawa/src/constants/function_utils.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_additional_detail.remote.dart';
import 'package:module_etamkawa/src/features/task/domain/result_submission_request.remote.dart';
import 'package:module_etamkawa/src/features/validation/domain/validate_request.remote.dart';
import 'package:module_etamkawa/src/features/validation/domain/validation_response.remote.dart';
import 'package:module_etamkawa/src/features/validation/presentation/controller/validation.controller.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../module_etamkawa.dart';
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
    final connectEtamkawa = ref.read(connectEtamkawaProvider.notifier);
    List<ValidationResponseRemote> listResponse = [];
    List<ValidationResponseRemote> listResponseFinal = [];
    List<ValidationResponseRemote> listAfterInputImage = [];
    var latestSyncDate = ref.read(latestSyncDateValidationState.notifier).state;
    final latestSyncDateIsar = await isarInstance
        .gamificationAdditionalDetailRemotes
        .filter()
        .idEqualTo(0)
        .findFirst();
    if (latestSyncDateIsar?.latestSyncDateValidation != null) {
      latestSyncDate = latestSyncDateIsar!.latestSyncDateValidation!;
    }
    debugPrint(
        'latestsyncdate : ${latestSyncDateIsar?.latestSyncDateValidation}');
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
        File fileAnswer = File('');
        if (element.attachmentPath == null) {
          if (element.attachmentUrl != null) {
            final response = await connectEtamkawa.downloadImage(
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
            final response = await connectEtamkawa.downloadImage(
              url: element.answerAttachmentUrl ?? '',
            );
            response.data;
            fileAnswer = await asyncMethodSaveFile(response.data);
          }
          taskDataUpdate.answerAttachmentPath = fileAnswer.path;
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
                  peopleCategoryCode: element.chapterData?.single.missionData
                      ?.single.peopleCategoryCode,
                  peopleCategoryName: element.chapterData?.single.missionData
                      ?.single.peopleCategoryName,
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
    await isarInstance.writeTxn(() async {
      await isarInstance.gamificationAdditionalDetailRemotes.put(
          GamificationAdditionalDetailRemote(
              id: 0,
              latestSyncDateValidation: today,
              latestSyncDate: latestSyncDateIsar?.latestSyncDate));
    });
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
  final isarInstance = await ref.watch(isarInstanceProvider.future);
  final userModel = await ref.read(helperUserProvider).getUserProfile();
  final connect = ref.read(connectEtamkawaProvider.notifier);
  final response = await connect.post(
      modul: ModuleType.etamkawaGamification,
      path:
          "api/mission/validate_employee_mission?userAccount=${userModel?.email ?? ''}&${Constant.apiVer}",
      body: validationRequestRemote.toJson());

  if (response.statusCode == 200) {
    await isarInstance.writeTxn(() async {
      await isarInstance.validationResponseRemotes
          .filter()
          .employeeMissionIdEqualTo(validationRequestRemote.employeeMissionId)
          .deleteAll();
    });
  } else {
    Navigator.of(globalkey.currentContext!).pop();
    Navigator.of(globalkey.currentContext!).pop();
    if (response.result?.content?.toLowerCase() == 'already validated') {
      SharedComponent.dialogPopUp(
        type: 'info',
        context: globalkey.currentContext!,
        title: 'Oops!',
        subTitle: EtamKawaTranslate.alreadyValidated,
        btntitleright: 'Ok',
        onpressright: () async {
          await isarInstance.writeTxn(() async {
            showLoadingDialog(globalkey.currentContext!);
            await isarInstance.validationResponseRemotes
                .filter()
                .employeeMissionIdEqualTo(
                    validationRequestRemote.employeeMissionId)
                .deleteAll();
          }).whenComplete(() {
            hideLoadingDialog(globalkey.currentContext!);
            Navigator.of(globalkey.currentContext!).pop();
            Navigator.of(globalkey.currentContext!).pop();
            Navigator.of(globalkey.currentContext!).pop();
          });
        },
      );
    } else {
      SharedComponent.dialogPopUp(
        type: 'info',
        context: globalkey.currentContext!,
        title: 'Oops!',
        subTitle: 'validate Failed',
        btntitleright: 'Ok',
        onpressright: () {
          Navigator.of(globalkey.currentContext!).pop();
          Navigator.of(globalkey.currentContext!).pop();
          Navigator.of(globalkey.currentContext!).pop();
        },
      );
    }
  }
  ResultSubmissionRequestRemote result =
      ResultSubmissionRequestRemote.fromJson(response.result?.content);
  return result;
}

@riverpod
Future<bool> submitValidationBg(SubmitValidationBgRef ref) async {
  final isConnectionAvailable = ref.read(isConnectionAvailableProvider);
  if (isConnectionAvailable) {
    final isarInstance = await ref.watch(isarInstanceProvider.future);
    final userModel = await ref.read(helperUserProvider).getUserProfile();
    final connect = ref.read(connectProvider.notifier);
    debugPrint('fetch validation submit offline : ');
    final repoValidation = isarInstance.validationResponseRemotes
        .filter()
        .employeeMissionIdIsNotNull()
        .findAll();

    debugPrint('fetch validation submit offline : repoValidation');
    List<bool> listSucces = [];
    await AsyncValue.guard(() => repoValidation).then((value) async {
      for (var element in value.value ?? []) {
        //debugPrint('fetch validation submit offline : async guard');
        ValidationResponseRemote validationRequestRemote = element;
        debugPrint(
            'submit validation offline not 99: ${validationRequestRemote.missionStatusCode}: ${validationRequestRemote.missionId}: ${validationRequestRemote.missionStatus}');
        if (validationRequestRemote.missionStatusCode == 99) {
          debugPrint(
              'submit validation offline: 99 ${validationRequestRemote.employeeMissionId.toString()}');
          var validationRequest = ValidateRequestRemote(
              comment: validationRequestRemote.chapterData?.single.missionData
                  ?.single.taskData?.first.feedbackComment,
              employeeMissionId: validationRequestRemote.employeeMissionId,
              qualitativeScore: validationRequestRemote.chapterData?.single
                  .missionData?.single.taskData?.first.qualitativeScoreId,
              taskId: validationRequestRemote.chapterData?.single.missionData
                  ?.single.taskData?.single.taskId,
              validationDate: validationRequestRemote.completedDate!.substring(
                  0, validationRequestRemote.completedDate!.length - 6));
          final response = connect.post(
              modul: ModuleType.etamkawaGamification,
              path:
                  "api/mission/validate_employee_mission?userAccount=${userModel?.email ?? ''}&${Constant.apiVer}",
              body: validationRequest.toJson());

          await AsyncValue.guard(() => response).then((value) async {
            if (value.value?.statusCode == 200) {
              await isarInstance.writeTxn(() async {
                await isarInstance.validationResponseRemotes
                    .filter()
                    .employeeMissionIdEqualTo(
                        validationRequest.employeeMissionId)
                    .deleteAll();
              });
            } else if (value.value?.result?.content?.toLowerCase() ==
                'already validated') {
              await isarInstance.writeTxn(() async {
                await isarInstance.validationResponseRemotes
                    .filter()
                    .employeeMissionIdEqualTo(
                        validationRequestRemote.employeeMissionId)
                    .deleteAll();
              });
            }
            var statusSuccess = value.value?.statusCode == 200 ||
                (value.value?.result?.isError == false);
            listSucces.add(statusSuccess);
          });
        }
      }
    });
  }
  return true;
}
