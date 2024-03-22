import 'dart:math';

import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_additional_detail.remote.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_response.remote.dart';
import 'package:module_etamkawa/src/features/mission/presentation/controller/mission.controller.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../constants/constant.dart';
import '../../../offline_mode/infrastructure/repositories/isar.repository.dart';

part 'mission_local.repository.g.dart';

@riverpod
FutureOr<List<GamificationResponseRemote>> getMissionRemote(
    GetMissionLocalRef ref) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);

  final connect = ref.read(connectProvider.notifier);
  List<GamificationResponseRemote> listResponse =[];
  List<GamificationResponseRemote> listResponseFinal =[];
  // const rawMissionDummy = Constant.rawMissionDummy;
  final userModel = await ref.read(helperUserProvider).getUserProfile();
  final gamificationAdditionalDetailRemotes =
      (await isarInstance.gamificationAdditionalDetailRemotes.count() > 0)
          ? await isarInstance.gamificationAdditionalDetailRemotes.get(1)
          : GamificationAdditionalDetailRemote();
  final latestSyncDate = gamificationAdditionalDetailRemotes?.latestSyncDate;
  ref.read(latestSyncDateState.notifier).state;
  final response = await connect.post(
      modul: ModuleType.etamkawaGamification,
      path: "api/mission/get_employee_mission?${Constant.apiVer}",
      body: {
        "employeeId": userModel?.employeeID,
        "requestDate": latestSyncDate
        //"requestDate": '2024-03-01T03:55:58.918Z'
      });
  for (var element in response.result?.content) {
  //   for (var element in rawMissionDummy){
    final result = GamificationResponseRemote.fromJson(element);
    listResponse.add(result);
  }
  final today =
      CommonUtils.formatDateRequestParam(DateTime.now().toUtc().toString());
  ref.watch(latestSyncDateState.notifier).state = today;
  var repo = ref.read(getMissionLocalProvider.future);
  for (var element in listResponse) {

  await AsyncValue.guard(() => repo).then((value) async {
    if ((value.value??[]).isNotEmpty) {
      value.value?.forEach((localElement) async {
        if(localElement.employeeMissionId == element.missionStatusId){
          listResponseFinal.add(localElement);
        }
      });
    } else{
      listResponseFinal.addAll(listResponse);
    }
  });
  }
  await isarInstance.writeTxn(() async {
    //await isarInstance.gamificationResponseRemotes.clear();
    await isarInstance.gamificationResponseRemotes.putAll(listResponseFinal);
  });

  ref.keepAlive();

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

  final data = await isarInstance.gamificationResponseRemotes
      .filter()
      .employeeMissionIdIsNotNull()
      .findAll();
  return data;
}
