import 'dart:math';

import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_response.remote.dart';
import 'package:module_etamkawa/src/features/mission/presentation/controller/mission.controller.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../constants/constant.dart';
import '../../../offline_mode/infrastructure/repositories/isar.repository.dart';

part 'mission_local.repository.g.dart';

@riverpod
FutureOr<List<GamificationResponseRemote>> getMissionRemote(GetMissionLocalRef ref) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);

  final connect = ref.read(connectProvider.notifier);
  List<GamificationResponseRemote> listResponse =[];
  const rawMissionDummy = Constant.rawMissionDummy;
  //final userModel = await ref.read(helperUserProvider).getUserProfile();
  final latestSyncDate = ref.read(latestSyncDateState.notifier).state;
  // final response = await connect.post(
  //   modul: ModuleType.etamkawaGamification,
  //   path: "api/mission/get_employee_mission?${Constant.apiVer}",
  //   body: {
  //     "employeeId": userModel?.employeeID,
  //     "requestDate": latestSyncDate
  //   }
  // );
  //for (var element in response.result?.content) {
    for (var element in rawMissionDummy){
    final result = GamificationResponseRemote.fromJson(element);
    listResponse.add(result);
  }
  final today = CommonUtils.formatDateRequestParam(DateTime.now().toString());
  ref.watch(latestSyncDateState.notifier).state = today;
  //await isarInstance.gamificationResponseRemotes.clear();

  await isarInstance.writeTxn(() async {
    await isarInstance.gamificationResponseRemotes.clear();
    await isarInstance.gamificationResponseRemotes.putAll(listResponse);
  });

  ref.keepAlive();

  final data = await isarInstance.gamificationResponseRemotes
      .filter()
      .employeeMissionIdIsNotNull()
      .findAll();

  return data;
}


@riverpod
FutureOr<List<GamificationResponseRemote>> getMissionLocal(GetMissionLocalRef ref) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);

  final data = await isarInstance.gamificationResponseRemotes
      .filter()
      .employeeMissionIdIsNotNull()
      .findAll();
  return data;
}


