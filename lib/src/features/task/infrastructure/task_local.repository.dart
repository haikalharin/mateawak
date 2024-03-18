import 'dart:math';

import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../offline_mode/infrastructure/repositories/isar.repository.dart';
import '../domain/task_datum_answer_request.remote.dart';

part 'task_local.repository.g.dart';

@riverpod
FutureOr<bool> putTaskAnswerLocal(PutTaskAnswerLocalRef ref, {required TaskDatumAnswerRequestRemote taskAnswer}) async {
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
FutureOr<List<TaskDatumAnswerRequestRemote>> getAnswerLocal(GetAnswerLocalRef ref) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);

  final data = await isarInstance.taskDatumAnswerRequestRemotes
      .filter()
      .taskIdIsNotNull()
      .findAll();
  return data;
}

@riverpod
FutureOr<void> deleteAnswerLocal(DeleteAnswerLocalRef ref,{required List<TaskDatumAnswerRequestRemote> listTaskAnswer}) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);
  List<int> listId = [];
  for (var element in listTaskAnswer) {
    listId.add(element.taskId??0);
  }
  await isarInstance.writeTxn(() async {
    await isarInstance.taskDatumAnswerRequestRemotes.deleteAll(listId);
  });

}


