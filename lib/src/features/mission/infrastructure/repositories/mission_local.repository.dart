import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/configs/services/connect_etamkawa.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_additional_detail.remote.dart';
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
FutureOr<List<GamificationResponseRemote>> getMissionRemote(
    GetMissionLocalRef ref) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);
  final isConnectionAvailable = ref.read(isConnectionAvailableProvider);

  if (isConnectionAvailable) {
    final connect = ref.read(connectProvider.notifier);
    final connectEtamkawa = ref.read(connectEtamkawaProvider.notifier);
    List<GamificationResponseRemote> listResponse = [];
    List<GamificationResponseRemote> listResponseFinal = [];
    List<GamificationResponseRemote> listResponseAfterMerge = [];
    List<GamificationResponseRemote> listAfterCheckIsIncomplete = [];

    // const rawMissionDummy = Constant.rawMissionDummy;
    final userModel = await ref.read(helperUserProvider).getUserProfile();
    var latestSyncDate = ref.read(latestSyncDateState.notifier).state;
    final latestSyncDateIsar = await isarInstance
        .gamificationAdditionalDetailRemotes
        .filter()
        .idEqualTo(0)
        .findFirst();
    if (latestSyncDateIsar != null) {
      latestSyncDate = latestSyncDateIsar.latestSyncDate!;
    }
    debugPrint('latestsyncdate : ${latestSyncDateIsar?.latestSyncDate}');
    final response = await connect.post(
        modul: ModuleType.etamkawaGamification,
        path: "api/mission/get_employee_mission?${Constant.apiVer}",
        body: {
          "employeeId": userModel?.employeeID,
          "requestDate": latestSyncDate
          //"requestDate": '2024-03-01T03:55:58.918Z'
        });
    for (var element in response.result?.content) {
      // for (var element in rawMissionDummy) {
      final result = GamificationResponseRemote.fromJson(element);
      listResponse.add(result);
    }
    final repo = isarInstance.gamificationResponseRemotes
        .filter()
        .employeeMissionIdIsNotNull()
        .findAll();

    await AsyncValue.guard(() => repo).then((value) async {
      for (var element in listResponse) {
        if ((value.value ?? []).isNotEmpty) {
          bool exists = (value.value ?? []).any(
              (item) => item.employeeMissionId == element.employeeMissionId);

          if (!exists) {
            listResponseFinal.add(element);
          }
        } else {
          listResponseFinal.add(element);
        }
      }
    });
    int index = 0;
    for (var element in listResponseFinal) {
      List<TaskDatum> listTask =
          element.chapterData?.single.missionData?.single.taskData ?? [];
      int indexTask = 0;
      //List<TaskDatum> taskData = [];
      for (var element in listTask) {
        File file = File('');
        if (element.attachmentUrl != null) {
          final response = connectEtamkawa.downloadImage(
            url: element.attachmentUrl ?? '',
          );
          await AsyncValue.guard(() => response).then((value) async {
            file = await asyncMethodSaveFile(value.value?.data);
            listResponseFinal[index]
                .chapterData
                ?.single
                .missionData
                ?.single
                .taskData?[indexTask]
                .attachmentPath = file.path;
            indexTask++;
          });
        } else {
          listResponseFinal[index]
              .chapterData
              ?.single
              .missionData
              ?.single
              .taskData?[indexTask]
              .attachmentPath = '';
          indexTask++;
        }
      }

      index++;
    }
    listResponseAfterMerge.addAll(listResponse);
    listResponseAfterMerge.addAll(listResponseFinal);
    for (var element in listResponseFinal) {
      DateTime dueDate = DateTime.parse(
          CommonUtils.formattedDateHoursUtcToLocalForCheck(
              element.dueDate ?? '2024-00-00T00:00:00'));
      int different = calculateDifferenceDate(dueDate, DateTime.now());
      if (element.missionStatusCode != null) {
        if (different > 0 && element.missionStatusCode! < 2) {
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
              chapterData: element.chapterData));
        } else {
          listAfterCheckIsIncomplete.add(element);
        }
      }
    }

    await isarInstance.writeTxn(() async {
      await isarInstance.gamificationResponseRemotes
          .putAll(listAfterCheckIsIncomplete);
    });

    final today = CommonUtils.formatDateRequestParam(DateTime.now().toString());
    ref.read(latestSyncDateState.notifier).state = today;
    await isarInstance.writeTxn(() async {
      await isarInstance.gamificationAdditionalDetailRemotes.put(
          GamificationAdditionalDetailRemote(
              id: 0,
              latestSyncDate: today,
              latestSyncDateValidation:
                  latestSyncDateIsar?.latestSyncDateValidation));
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
FutureOr<List<GamificationResponseRemote>> getMissionLocal(
    GetMissionLocalRef ref) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);
  List<GamificationResponseRemote> listResponse = [];

  final data = await isarInstance.gamificationResponseRemotes
      .filter()
      .employeeMissionIdIsNotNull()
      .findAll();

  for (var element in data) {
    listResponse.add(element);
  }

  return data;
}
