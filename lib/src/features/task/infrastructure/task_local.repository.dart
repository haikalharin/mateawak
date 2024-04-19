import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/constants/constant.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_response.remote.dart';
import 'package:module_etamkawa/src/features/overview/presentation/controller/overview.controller.dart';
import 'package:module_etamkawa/src/features/task/domain/answer_request.remote.dart';
import 'package:module_etamkawa/src/features/task/presentation/controller/task.controller.dart';
import 'package:module_etamkawa/src/shared_component/connection_listener_widget.dart';
import 'package:module_shared/module_shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../utils/common_utils.dart';
import '../../mission/presentation/controller/mission.controller.dart';
import '../../offline_mode/infrastructure/repositories/isar.repository.dart';
import '../domain/task_datum_answer_request.remote.dart';

part 'task_local.repository.g.dart';

@riverpod
FutureOr<bool> putTaskAnswerLocal(PutTaskAnswerLocalRef ref,
    {required TaskDatumAnswerRequestRemote taskAnswer}) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);

  // final today = CommonUtils.formatDateRequestParam(DateTime.now().toString());
  // ref.watch(latestSyncDateState.notifier).state = today;
  //await isarInstance.gamificationResponseRemotes.clear();

  await isarInstance.writeTxn(() async {
    await isarInstance.taskDatumAnswerRequestRemotes.put(taskAnswer);
  });

  ref.keepAlive();

  return true;
}

@riverpod
FutureOr<List<TaskDatumAnswerRequestRemote>> getAnswerLocal(
    GetAnswerLocalRef ref) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);

  final data = await isarInstance.taskDatumAnswerRequestRemotes
      .filter()
      .taskIdIsNotNull()
      .findAll();
  return data;
}

@riverpod
FutureOr<void> deleteAnswerLocal(DeleteAnswerLocalRef ref,
    {required List<TaskDatumAnswerRequestRemote> listTaskAnswer}) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);
  List<int> listId = [];
  for (var element in listTaskAnswer) {
    listId.add(element.taskId ?? 0);
  }
  await isarInstance.writeTxn(() async {
    await isarInstance.taskDatumAnswerRequestRemotes.clear();
  });
}

@riverpod
FutureOr<List<TaskDatumAnswerRequestRemote>> getTaskAnswerFinalLocal(
    GetTaskAnswerFinalLocalRef ref,
    {required int employeeMissionId}) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);
  List<TaskDatumAnswerRequestRemote> listDataConvert = [];
  final data = await isarInstance.answerRequestRemotes
      .filter()
      .employeeMissionIdEqualTo(employeeMissionId)
      .findAll();
  var listData = data.single.taskData;
  listData?.forEach((element) {
    listDataConvert.add(TaskDatumAnswerRequestRemote(
        taskId: element.taskId,
        answer: element.answer,
        attachment: element.attachment));
  });
  return listDataConvert;
}

@riverpod
FutureOr<bool> putAnswerFinalLocal(PutAnswerFinalLocalRef ref,
    {required AnswerRequestRemote answerRequestRemote}) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);
  List<TaskDatumAnswer> listData = [];
  await isarInstance.writeTxn(() async {
    await isarInstance.answerRequestRemotes.put(answerRequestRemote);
  });
  ref.keepAlive();

  return true;
}

@riverpod
FutureOr<List<TaskDatumAnswer>> getAnswerFinalLocal(GetAnswerFinalLocalRef ref,
    {required int employeeMissionId}) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);

  final data = await isarInstance.answerRequestRemotes
      .filter()
      .employeeMissionIdEqualTo(employeeMissionId)
      .findAll();

  return data.single.taskData ?? [];
}

@riverpod
FutureOr<bool> changeStatusTaskLocal(ChangeStatusTaskLocalRef ref,
    {required GamificationResponseRemote task}) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);

  // final today = CommonUtils.formatDateRequestParam(DateTime.now().toString());
  // ref.watch(latestSyncDateState.notifier).state = today;
  //await isarInstance.gamificationResponseRemotes.clear();

  await isarInstance.writeTxn(() async {
    await isarInstance.gamificationResponseRemotes.put(task);
  });

  ref.keepAlive();

  return true;
}

@riverpod
Future<void> submitMission(SubmitMissionRef ref,
    {required AnswerRequestRemote answerRequestRemote}) async {
  final userModel = await ref.read(helperUserProvider).getUserProfile();
  final isConnectionAvailable = ref.read(isConnectionAvailableProvider);
  final isarInstance = await ref.watch(isarInstanceProvider.future);
  if (isConnectionAvailable) {
    answerRequestRemote.taskData?.single.attachmentId = 64;
    answerRequestRemote.status = 2;
    final connect = ref.read(connectProvider.notifier);
    final response = await connect.post(
        modul: ModuleType.etamkawaGamification,
        path:
            "api/mission/submit_employee_mission?userAccount=${userModel?.email ?? ''}&${Constant.apiVer}",
        body: answerRequestRemote.toJson());

    if (response.statusCode == 200) {
      await isarInstance.writeTxn(() async {
        await isarInstance.answerRequestRemotes
            .delete(answerRequestRemote.employeeMissionId ?? 0)
            .whenComplete(() async {
          await isarInstance.gamificationResponseRemotes
              .delete(answerRequestRemote.employeeMissionId ?? 0);
        });
      });
    }
  }
}
