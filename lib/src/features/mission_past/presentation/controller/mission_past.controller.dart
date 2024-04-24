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
import '../../../task/domain/task_datum_answer_request.remote.dart';
import '../../../task/infrastructure/task_local.repository.dart';
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
        var repoPutAnswer = ref.watch(putAnswerDetailProvider(
                employeeMissionId: employeeMissionId,
                gamificationResponseRemote:
                    value.value ?? GamificationResponseRemote())
            .future);

        List<TaskAnswerPastRemote> listData = [];
        List<AnswerDatumPast> listAnswer = [];
        List<int> listSelectedOption = [];
        List<String> listSelectedOptionString = [];
        for (var element
            in value.value?.chapterData?.single.missionData?.single.taskData ??
                []) {
          TaskDatum data = element;
          if (data.taskTypeCode == TaskType.STX.name ||
              data.taskTypeCode == TaskType.ASM.name) {
            listSelectedOptionString.add(data.answer ?? '');
          } else {
            if (currentTypeTask == TaskType.MCQ.name) {
              var numbersList = data.answer?.split(';').map(int.parse).toList();
              listSelectedOption.addAll(numbersList ?? []);
            } else {
              listSelectedOption
                  .add(int.parse(answer != '' ? data.answer ?? '0' : '0'));
            }
          }
          data.answerData?.forEach((element) {
            listAnswer.add(AnswerDatumPast(
              answerId:element.answerId,
              taskId:element.taskId,
              answerCode:element.answerCode,
              answerField:element.answerField,
              answerCaption:element.answerCaption,
              isCorrectAnswer:element.isCorrectAnswer,
            ));
          });
          listData.add(TaskAnswerPastRemote(
              taskId: data.taskId,
              answer: data.answer,
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
        print(e);
      }
    }
  }

  Future<void> currentQuestion(
      {required int employeeMissionId,
      required PagePosition pagePosition,
      List<TaskDatumAnswer>? listData,
      bool isLast = false}) async {
    List<String> listString = [];
    List<int> listInt = [];
    List<int> numbersList = [];
    List<TaskDatumAnswer> listTaskAnswer = [];
    int page = 0;
    if (pagePosition == PagePosition.NEXT) {
      page = 1;
    } else if (pagePosition == PagePosition.PREV) {
      page = -1;
    }
    var currentAnswer = ref.read(
        getAnswerFinalLocalProvider(employeeMissionId: employeeMissionId)
            .future);
    List<TaskDatumAnswerRequestRemote> dataCek = [];
    if (kDebugMode) {
      print('#######Haloo');
    }
    if (listData != null) {
      listTaskAnswer = listData;
    } else {
      state = await AsyncValue.guard(() => currentAnswer).then((value) async {
        if (value.value != null && value.value != []) {
          listTaskAnswer = value.value ?? [];
        }
        return value;
      });
    }

    if (listTaskAnswer.isNotEmpty) {
      for (var element in listTaskAnswer) {
        dataCek.add(TaskDatumAnswerRequestRemote(
            taskId: element.taskId,
            answer: element.answer,
            attachmentName: element.attachmentName,
            attachment: element.attachment));
      }
    }
    index = await ref.watch(currentIndexState);
    currentTypeTask = !isLast
        ? ref.watch(listTaskState)[index + page].taskTypeCode ?? ''
        : '';
    currentTaskId =
        !isLast ? ref.watch(listTaskState)[index + page].taskId ?? 0 : 0;
    for (var element in dataCek) {
      if (element.taskId == currentTaskId) {
        // await deleteAnswer(dataCek);
        answer = element.answer ?? '';
        attachment = element.attachment ?? '';
        attachmentName = element.attachmentName ?? '';
      }
    }

    if (answer != '') {
      if (currentTypeTask == TaskType.STX.name ||
          currentTypeTask == TaskType.ASM.name) {
        listString.add(answer);
        listSelectOptionCurrentString = listString;
        ref.watch(currentTypeTaskState.notifier).state = currentTypeTask;
        ref.watch(listSelectOptionCurrentStringState.notifier).state =
            listString;

        ref.watch(attachmentPathCurrentState.notifier).state = attachment;
        ref.watch(attachmentNameCurrentState.notifier).state = attachmentName;
      } else {
        if (currentTypeTask == TaskType.MCQ.name) {
          numbersList = answer.split(';').map(int.parse).toList();
          listInt.addAll(numbersList);
        } else {
          listInt.add(int.parse(answer != '' ? answer : '0'));
        }

        listSelectOptionCurrent = listInt;
        ref.watch(currentTypeTaskState.notifier).state = currentTypeTask;
        ref.watch(listSelectOptionCurrentState.notifier).state =
            listSelectOptionCurrent;
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
