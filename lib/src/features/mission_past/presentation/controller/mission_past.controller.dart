import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_etamkawa/src/features/mission_past/domain/mission_past_response.remote.dart';
import 'package:module_etamkawa/src/features/mission_past/infrastructure/repositories/mission_past.repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../main_nav/presentation/controller/main_nav.controller.dart';
import '../../../mission/domain/gamification_response.remote.dart';
import '../../../task/domain/task_datum_answer_request.remote.dart';
import '../../../task/presentation/controller/task.controller.dart';
import '../../domain/task_answer_past.remote.dart';

part 'mission_past.controller.g.dart';

final listMissionPastResponseRemoteState =
    StateProvider.autoDispose<List<MissionPastResponseRemote>>((ref) => []);

final submitStatusDetailState = StateProvider.autoDispose<SubmitStatus>((ref) {
  return SubmitStatus.initial;
});
final gamificationDetailState =
    StateProvider.autoDispose<GamificationResponseRemote>(
        (ref) => GamificationResponseRemote());

final listTaskPastState =
    StateProvider.autoDispose<List<TaskAnswerPastRemote>>((ref) => []);

@riverpod
class MissionPastController extends _$MissionPastController {
  List<MissionPastResponseRemote> listMissionPast = [];
  List<GamificationResponseRemote> listGamification = [];
  List<int> listSelectOptionPrev = [];
  List<TaskDatumAnswerRequestRemote> listTaskAnswer = [];
  var index = 0;
  var answer = '';
  var currentTypeTask = '';
  var currentTaskId = 0;
  var attachment = '';
  var attachmentName = '';
  List<int> listSelectOptionCurrent = [];
  List<String> listSelectOptionCurrentString = [];

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
        List<TaskAnswerPastRemote> listData = [];

        for (var element
            in value.value?.chapterData?.single.missionData?.single.taskData ??
                []) {
          TaskDatum data = element;
          List<AnswerDatumPast> listAnswer = [];
          List<int> listSelectedOption = [];
          List<String> listSelectedOptionString = [];
          if (data.taskTypeCode == TaskType.STX.name ||
              data.taskTypeCode == TaskType.ASM.name) {
            listSelectedOptionString.add(data.answer ?? '');
          } else {
            if (data.taskTypeCode == TaskType.MCQ.name) {
              List<int>? numbersList;
              if(data.answer != null && data.answer != ''){
                numbersList  = data.answer
                    ?.split(';')
                    .map((numString) => int.parse(numString))
                    .toList();
              }

              listSelectedOption.addAll(numbersList ?? []);
            } else {
              listSelectedOption
                  .add(int.parse(data.answer != '' ? data.answer ?? '0' : '0'));
            }
          }

          data.answerData?.forEach((element) {
            listAnswer.add(AnswerDatumPast(
              answerId: element.answerId,
              taskId: element.taskId,
              answerCode: element.answerCode,
              answerField: element.answerField,
              answerCaption: element.answerCaption,
              isCorrectAnswer: element.isCorrectAnswer,
            ));
          });
          listData.add(TaskAnswerPastRemote(
              taskId: data.taskId,
              answer: data.answer,
              attachment: attachment,
              answerAttachmentId: data.answerAttachmentId,
              answerAttachmentName: data.answerAttachmentName,
              answerAttachmentUrl: data.answerAttachmentUrl,
              answerReward: data.answerReward,
              attachmentName: data.answerAttachmentName,
              taskReward: data.taskReward,
              feedbackComment: data.feedbackComment,
              qualitativeScoreId: data.qualitativeScoreId,
              qualitativeScoreName: data.qualitativeScoreName,
              taskCaption: data.taskCaption,
              taskTypeCode: data.taskTypeCode,
              taskTypeName: data.taskTypeName,
              listSelectedOption: listSelectedOption,
              listSelectedOptionString: listSelectedOptionString,
              attachmentId: data.attachmentId,
              answerData: listAnswer));
        }
        // await AsyncValue.guard(() => repoPutAnswer)
        //     .then((valueRepoPutAnswer) async {
        ref.watch(gamificationDetailState.notifier).state =
            value.value ?? GamificationResponseRemote();
        ref.watch(listTaskPastState.notifier).state = listData;
        ref.watch(missionDataState.notifier).state =
            value.value?.chapterData?.single.missionData?.single ??
                MissionDatum();
        ref.watch(gamificationState.notifier).state =
            value.value ?? GamificationResponseRemote();
        List<TaskDatum> listTask =
            (value.value?.chapterData?.single.missionData?.single.taskData ??
                []);
        ref.watch(listTaskState.notifier).state = listTask;

        ref.watch(submitStatusDetailState.notifier).state =
            SubmitStatus.success;

        // await currentQuestion(
        //      employeeMissionId: employeeMissionId,
        //      pagePosition: PagePosition.CURRENT,
        //  listData: listData).whenComplete(() {
        //
        //  });
        // });
      });
    } catch (e) {
      ref.watch(submitStatusDetailState.notifier).state = SubmitStatus.failure;
      if (kDebugMode) {
      }
    }
  }


}
