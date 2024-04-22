

import 'package:module_etamkawa/src/features/mission_past/domain/mission_past_response.remote.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../constants/constant.dart';

part 'mission_past.repository.g.dart';

@riverpod
FutureOr<List<MissionPastResponseRemote>> getMissionPastList(GetMissionPastListRef ref) async {
    final connect = ref.read(connectProvider.notifier);
    List<MissionPastResponseRemote> listMissionPast = [];
    const rawMissionPastDummy = Constant.rawMissionPastDummy;
    final userModel = await ref.read(helperUserProvider).getUserProfile();
    // final today = CommonUtils.formattedDate(
    //                                 CommonUtils.getCurrentWITATime()
    //                                     .toIso8601String(),
    //                                 withDay: false);
    final response = await connect.post(
        modul: ModuleType.etamkawaGamification,
        path: "/api/mission/get_past_employee_mission?${Constant.apiVer}",
        body: {
          "employeeId": userModel?.employeeID,
          "startDate": "2024-01-23T06:50:18.014Z",
          "endDate": "2024-04-23T06:50:18.014Z",
          "pageNo": 1,
          "pageSize": 10,
        }
    );
    var missionPast = response.result?.content.isNotEmpty? response.result?.content : rawMissionPastDummy; 
    //for (var element in response.result?.content) {
    for (var element in missionPast) {
      final result = MissionPastResponseRemote.fromJson(element);
      listMissionPast.add(result);
    }
    
    //var repo = ref.watch(getMissionPastListProvider.future);
    
    // for (var element in listMissionPast) {
    //   await AsyncValue.guard(() => repo).then((value) async {
    //     if ((value.value ?? []).isNotEmpty) {
    //       bool exists = (value.value ?? []).any((item) =>
    //       item.employeeMissionId == element.employeeMissionId);
    //       if (!exists) {
    //         listResponseFinal.add(element);
    //       }
    //     } else {
    //       listResponseFinal.add(element);
    //     }
    //   });
    // }
    
  return listMissionPast;
}



