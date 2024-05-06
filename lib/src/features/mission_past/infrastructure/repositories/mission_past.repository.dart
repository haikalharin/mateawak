
import 'package:module_etamkawa/src/features/mission_past/domain/mission_past_response.remote.dart';
import 'package:module_shared/module_shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../constants/constant.dart';
import '../../../mission/domain/gamification_response.remote.dart';
import '../../../task/domain/answer_request.remote.dart';

part 'mission_past.repository.g.dart';

@riverpod
FutureOr<List<MissionPastResponseRemote>> getMissionPastList(
    GetMissionPastListRef ref) async {
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
        "endDate": "2024-05-06T06:50:18.014Z",
        "pageNo": 1,
        "pageSize": 99,
      });
  var missionPast = response.result?.content.isNotEmpty
      ? response.result?.content
      : rawMissionPastDummy;
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

@riverpod
FutureOr<GamificationResponseRemote> getMissionDetail(GetMissionDetailRef ref,
    {required int employeeMissionId}) async {
  // final isarInstance = await ref.watch(isarInstanceProvider.future);
  final connect = ref.read(connectProvider.notifier);
  // final userModel = await ref.read(helperUserProvider).getUserProfile();
  // final latestSyncDate = ref
  //     .read(latestSyncDateState.notifier)
  //     .state;
  var result = GamificationResponseRemote();

  final response = connect.post(
      modul: ModuleType.etamkawaGamification,
      path: "api/mission/get_employee_mission_by_param?${Constant.apiVer}",
      body: {
        "employeeMissionId": employeeMissionId,
        "missionStatusCode": null,
        "validatorId": null,
        "missionTypeCode": null,
        "lastSyncDate": null
      });
  await AsyncValue.guard(() => response).then((value) async {
    if (value.value?.statusCode == 200) {
      for (var element in value.value?.result?.content) {
        // for (var element in rawMissionDummy) {
        result = GamificationResponseRemote.fromJson(element);
      }
      //
      // List<TaskDatum> listTask =
      //     result.chapterData?.single.missionData?.single.taskData ?? [];
      // int indexTask = 0;
      // List<TaskDatum> taskData = [];
      // for (var element in listTask) {
      //   File file = File('');
      //   if (element.attachmentPath == null) {
      //     if (element.attachmentUrl != null) {
      //       final response = connect.downloadImage(
      //         url: element.attachmentUrl ?? '',
      //       );
      //       await AsyncValue.guard(() => response).then((value) async {
      //         file = await asyncMethodSaveFile(value.value?.data);
      //         result.chapterData?.single.missionData?.single
      //             .taskData?[indexTask].attachmentPath = file.path;
      //         indexTask++;
      //       });
      //     }
      //   } else {
      //     result.chapterData?.single.missionData?.single
      //         .taskData?[indexTask].attachmentPath = file.path;
      //   }
      // }
    }
  });

  return result;
}

@riverpod
FutureOr<List<TaskDatumAnswer>> putAnswerDetail(PutAnswerDetailRef ref,
    {required int employeeMissionId, required GamificationResponseRemote gamificationResponseRemote}) async {
  // final isarInstance = await ref.watch(isarInstanceProvider.future);
  // final connect = ref.read(connectProvider.notifier);
  // final userModel = await ref.read(helperUserProvider).getUserProfile();
  // final latestSyncDate = ref
  //     .read(latestSyncDateState.notifier)
  //     .state;

  List<TaskDatumAnswer> listData = [];
  for (var element
  in gamificationResponseRemote.chapterData?.single.missionData?.single.taskData ?? []) {
    TaskDatum data = element;
    listData.add(TaskDatumAnswer(
        taskId: data.taskId,
        answer: data.answer,
        // attachmentName: data.attachmentName,
        attachmentId: data.attachmentId));
  }

  // var taskAnswer = AnswerRequestRemote(
  //     employeeMissionId: gamificationResponseRemote.employeeMissionId,
  //     submittedDate: gamificationResponseRemote.submittedDate
  //         ?.substring(0, (gamificationResponseRemote.submittedDate?.length ?? 0) - 6),
  //     status: gamificationResponseRemote.missionStatusCode,
  //     taskData: listData);

  // await isarInstance.writeTxn(() async {
  //   isarInstance.answerRequestRemotes.put(taskAnswer);
  // });
  //
  // ref.keepAlive();
  //
  // final data = await isarInstance.answerRequestRemotes
  //     .filter()
  //     .employeeMissionIdEqualTo(employeeMissionId)
  //     .findAll();
  // if (kDebugMode) {
  //   print('#######Haloo2 ${data}');
  // }

return listData;
}
