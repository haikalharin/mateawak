import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/features/mission/presentation/controller/mission.controller.dart';
import 'package:module_shared/module_shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../constants/constant.dart';
import '../../../mission/domain/gamification_response.remote.dart';
import '../../../offline_mode/infrastructure/repositories/isar.repository.dart';

part 'main_nav.repository.g.dart';

@riverpod
FutureOr<bool> fetchMission(FetchMissionRef ref) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);

  final connect = ref.read(connectProvider.notifier);
  List<GamificationResponseRemote> listResponse = [];
  //const rawMissionDummy = Constant.rawMissionDummy;
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
    //for (var element in rawMissionDummy){
    final result = GamificationResponseRemote.fromJson(element);
    listResponse.add(result);
  }

  await isarInstance.writeTxn(() async {
    //await isarInstance.gamificationResponseRemotes.clear();
    await isarInstance.gamificationResponseRemotes.putAll(listResponse);
  });

  ref.keepAlive();
  return true;
}

@riverpod
FutureOr<bool> fetchMissionLocal(FetchMissionRef ref) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);

  final connect = ref.read(connectProvider.notifier);
  List<GamificationResponseRemote> listResponse = [];
  final userModel = await ref.read(helperUserProvider).getUserProfile();
  final latestSyncDate = ref.read(latestSyncDateState.notifier).state;

  final data = await isarInstance.gamificationResponseRemotes
      .filter()
      .employeeMissionIdIsNotNull()
      .findAll();

  // for (var element in response.result?.content) {
  for (var element in data) {
    listResponse.add(element);
  }

  await isarInstance.writeTxn(() async {
    //await isarInstance.gamificationResponseRemotes.clear();
    await isarInstance.gamificationResponseRemotes.putAll(listResponse);
  });

  ref.keepAlive();
  return true;
}
