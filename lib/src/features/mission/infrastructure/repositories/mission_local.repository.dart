import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_response.remote.dart' ;
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
    List<GamificationResponseRemote> listResponse = [];
    List<GamificationResponseRemote> listResponseFinal = [];

    // const rawMissionDummy = Constant.rawMissionDummy;
    final userModel = await ref.read(helperUserProvider).getUserProfile();
    final latestSyncDate = ref.read(latestSyncDateState.notifier).state;
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
    final today = CommonUtils.formatDateRequestParam(DateTime.now().toString());
    ref.read(latestSyncDateState.notifier).state = today;
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
        if (element.attachmentPath == null) {
          if (element.attachmentUrl != null) {
            final response = connect.downloadImage(
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
          }
        } else {
          listResponseFinal[indexTask]
              .chapterData
              ?.single
              .missionData
              ?.single
              .taskData?[indexTask]
              .attachmentPath = element.attachmentPath;
        }
      }

      index++;
    }
    var indexIncompleted = 0;
    for (var element in listResponseFinal) {
      DateTime dueDate =
          DateTime.parse(element.dueDate ?? '2024-00-00T00:00:00');
      int different = calculateDifferenceDays(dueDate, DateTime.now());
      if (element.missionStatusCode != null) {
        if (different > 0 && element.missionStatusCode! < 2) {
          listResponseFinal[indexIncompleted].missionStatusCode = 4;
          listResponseFinal[indexIncompleted].missionStatus = 'Incomplete';
        }
      }
    }

    await isarInstance.writeTxn(() async {
      //await isarInstance.gamificationResponseRemotes.clear();

      await isarInstance.gamificationResponseRemotes.putAll(listResponseFinal);
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



