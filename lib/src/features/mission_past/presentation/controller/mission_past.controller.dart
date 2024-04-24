import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_etamkawa/src/features/mission_past/domain/mission_past_response.remote.dart';
import 'package:module_etamkawa/src/features/mission_past/infrastructure/repositories/mission_past.repository.dart';
import 'package:module_etamkawa/src/features/validation/domain/validation_response.remote.dart';
import 'package:module_etamkawa/src/features/validation/infrastructure/repositories/validation_local.repository.dart';
import 'package:module_shared/module_shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../utils/common_utils.dart';
import '../../../main_nav/presentation/controller/main_nav.controller.dart';
import '../../../mission/domain/gamification_response.remote.dart';
import '../../../task/domain/answer_request.remote.dart';
import '../../../task/infrastructure/task_local.repository.dart';
import '../../../task/presentation/controller/task.controller.dart';

part 'mission_past.controller.g.dart';

final listMissionPastResponseRemoteState =
    StateProvider.autoDispose<List<MissionPastResponseRemote>>((ref) => []);

final submitStatusDetailState = StateProvider.autoDispose<SubmitStatus>((ref) {
  return SubmitStatus.initial;
});
final gamificationDetailState =
    StateProvider.autoDispose<GamificationResponseRemote>(
        (ref) => GamificationResponseRemote());

@riverpod
class MissionPastController extends _$MissionPastController {
  List<MissionPastResponseRemote> listMissionPast = [];

  @override
  FutureOr<void> build() async {
    await getMissionPastList();
  }

  Future<void> getMissionPastList() async {
    var repo = ref.read(getMissionPastListProvider.future);

    state = await AsyncValue.guard(() => repo).then((value) async {
      List<MissionPastResponseRemote> listMissionPast = [];

      debugPrint(value.toString());
      if (value.hasValue) {
        value.value?.forEach((element) async {
          listMissionPast.add(element);
        });
        ref.watch(listMissionPastResponseRemoteState.notifier).state =
            listMissionPast;
        listMissionPast = value.value ?? [];
      }
      return value;
    });
  }

  Future<void> getDetailMission({required int employeeMissionId}) async {
    ref.watch(submitStatusDetailState.notifier).state = SubmitStatus.inProgress;
    try {
      var repo = ref.watch(
          getMissionDetailProvider(employeeMissionId: employeeMissionId)
              .future);

      await AsyncValue.guard(() => repo).then((value) async {
        var repoPutAnswer = ref.watch(putAnswerDetailProvider(
                employeeMissionId: employeeMissionId,
                gamificationResponseRemote:
                    value.value ?? GamificationResponseRemote())
            .future);

        List<TaskDatumAnswer> listData = [];
        for (var element
        in  value.value?.chapterData?.single.missionData?.single.taskData ?? []) {
          TaskDatum data = element;
          listData.add(TaskDatumAnswer(
              taskId: data.taskId,
              answer: data.answer,
              attachmentName: data.answerAttachmentName,
              attachmentId: data.attachmentId));
        }
        // await AsyncValue.guard(() => repoPutAnswer)
        //     .then((valueRepoPutAnswer) async {
          ref.watch(gamificationDetailState.notifier).state =
              value.value ?? GamificationResponseRemote();
          ref.watch(missionDataState.notifier).state =
              value.value?.chapterData?.single.missionData?.single ??
                  MissionDatum();
          ref.watch(gamificationState.notifier).state =
              value.value ?? GamificationResponseRemote();
          List<TaskDatum> listTask =
              (value.value?.chapterData?.single.missionData?.single.taskData ??
                  []);
          ref.watch(listTaskState.notifier).state = listTask;

          final ctrl = ref.watch(taskControllerProvider.notifier);
          ctrl.currentQuestion(
              employeeMissionId: employeeMissionId,
              pagePosition: PagePosition.CURRENT,
          listData: listData).whenComplete(() {
            ref.watch(submitStatusDetailState.notifier).state =
                SubmitStatus.success;
          });
        // });
      });
    } catch (e) {
      ref.watch(submitStatusDetailState.notifier).state = SubmitStatus.failure;
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<void> putAnswerPastFromResponse(
      GamificationResponseRemote gamificationResponseRemote,
      {String? answer,
      String? attachmentName}) async {
    final userModel = await ref.read(helperUserProvider).getUserProfile();
    final today =
        CommonUtils.formatDateRequestParam(DateTime.now().toUtc().toString());
    List<TaskDatumAnswer> listData = [];
    for (var element in gamificationResponseRemote
            .chapterData?.single.missionData?.single.taskData ??
        []) {
      TaskDatum data = element;
      listData.add(TaskDatumAnswer(
          taskId: data.taskId,
          answer: data.answer,
          // attachmentName: data.attachmentName,
          attachmentId: data.attachmentId));
    }

    var taskAnswer = AnswerRequestRemote(
        employeeMissionId: gamificationResponseRemote.employeeMissionId,
        submittedDate: gamificationResponseRemote.submittedDate
            ?.substring(0, today.length - 6),
        status: gamificationResponseRemote.missionStatusCode,
        taskData: listData);
    ref.watch(gamificationDetailState.notifier).state =
        gamificationResponseRemote;
    await ref.watch(
        putAnswerFinalLocalProvider(answerRequestRemote: taskAnswer).future);
  }
}
