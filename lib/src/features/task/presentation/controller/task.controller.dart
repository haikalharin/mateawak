import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_response.remote.dart';
import 'package:module_etamkawa/src/features/task/domain/answer_request.remote.dart';
import 'package:module_etamkawa/src/features/task/domain/task_datum_answer_request.remote.dart';
import 'package:module_etamkawa/src/features/task/infrastructure/task_local.repository.dart';
import 'package:module_shared/module_shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../utils/common_utils.dart';

part 'task.controller.g.dart';

enum TaskType { MCQ, SCQ, YNQ, STX, RAT, ASM, DEFAULT }

final isScrollProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});

final currentIndexState = StateProvider.autoDispose<int>((ref) => 0);
final currentProgressState = StateProvider.autoDispose<int>((ref) => 0);

final previousTypeTaskState = StateProvider.autoDispose<String>((ref) => '');
final currentTypeTaskState = StateProvider.autoDispose<String>((ref) => '');
final nextTypeTaskState = StateProvider.autoDispose<String>((ref) => '');

final selectOptionState = StateProvider.autoDispose<int>((ref) => 0);

final listSelectOptionState = StateProvider.autoDispose<List<int>>((ref) => []);

final listSelectOptionPrevState =
StateProvider.autoDispose<List<int>>((ref) => []);

final listSelectOptionPrevStringState =
StateProvider.autoDispose<List<String>>((ref) => []);

final listSelectOptionNextState =
StateProvider.autoDispose<List<int>>((ref) => []);

final listSelectOptionNextStringState =
StateProvider.autoDispose<List<String>>((ref) => []);

final listSelectOptionCurrentState =
StateProvider.autoDispose<List<int>>((ref) => []);

final listSelectOptionCurrentStringState =
StateProvider.autoDispose<List<String>>((ref) => []);

final listSelectOptionStringState =
StateProvider.autoDispose<List<String>>((ref) => []);

final selectOptionIndexState = StateProvider.autoDispose<int>((ref) => 0);

final answerState =
StateProvider.autoDispose<List<TaskDatumAnswer>>((ref) => []);
final answerCurrentState =
StateProvider.autoDispose<List<TaskDatumAnswer>>((ref) => []);

final answerFinalState = StateProvider.autoDispose<AnswerRequestRemote>(
        (ref) => AnswerRequestRemote());

final listTaskState = StateProvider.autoDispose<List<TaskDatum>>((ref) => []);

final listMissionState =
StateProvider.autoDispose<List<MissionDatum>>((ref) => []);

// final attachmentBase64State = StateProvider.autoDispose<String>((ref) => '');

final attachmentPathState = StateProvider.autoDispose<String>((ref) => '');

final attachmentNameState = StateProvider.autoDispose<String>((ref) => '');

final missionDataState =
StateProvider.autoDispose<MissionDatum>((ref) => MissionDatum());

final gamificationState = StateProvider.autoDispose<GamificationResponseRemote>(
        (ref) => GamificationResponseRemote());

@riverpod
class TaskController extends _$TaskController {
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
  }

  Future<List<TaskDatumAnswerRequestRemote>> fetchAnswerData() async {
    return await ref.watch(getAnswerLocalProvider.future);
  }

  Future<void> changeCurrentIndex() async {
    var index = ref.watch(currentIndexState);
    ref
        .watch(currentIndexState.notifier)
        .state = index++;
  }

  Future<void> putDetailMissionData({required MissionDatum missionDatum,
    required GamificationResponseRemote gamificationResponseRemote,
    required List<GamificationResponseRemote> listGamification}) async {
    List<MissionDatum>listMission = [];

    ref
        .watch(missionDataState.notifier)
        .state = missionDatum;
    ref
        .watch(gamificationState.notifier)
        .state = gamificationResponseRemote;
    for (var element in listGamification) {
      listMission.add(
          element.chapterData?.single.missionData?.single ?? MissionDatum());
    }
    ref
        .watch(listMissionState.notifier)
        .state = listMission;
    List<TaskDatum> listTask = (missionDatum.taskData ?? []);
    ref
        .watch(listTaskState.notifier)
        .state = listTask;

    state = const AsyncValue.data(null);
  }

  Future<void> selectOption(int value) async {
    if (value != 0) {
      ref
          .watch(selectOptionState.notifier)
          .state = value;
    }
  }

  Future<List<TaskDatumAnswerRequestRemote>> getTaskAnswer() async {
    return await ref.watch(getAnswerLocalProvider.future);
  }

  Future<List<TaskDatumAnswer>> getAnswerFinal({required int employeeMissionId}) async {
    return await ref.watch(getAnswerFinalLocalProvider(employeeMissionId:employeeMissionId ).future);
  }

  Future<void> putCurrentAnswerFinal() async {
    if (ref
        .read(currentTypeTaskState.notifier)
        .state == TaskType.STX.name) {
      ref
          .watch(listSelectOptionStringState.notifier)
          .state =
          ref
              .read(listSelectOptionCurrentStringState.notifier)
              .state;
      state = const AsyncValue.data(null);
    } else {
      ref
          .watch(listSelectOptionState.notifier)
          .state =
          ref
              .read(listSelectOptionCurrentState.notifier)
              .state;
      state = const AsyncValue.data(null);

    }
  }

  Future<void> putAnswerFinal() async {
    final userModel = await ref.read(helperUserProvider).getUserProfile();
    final today = CommonUtils.formatDateRequestParam(DateTime.now().toUtc().toString());
    List<TaskDatumAnswer> listData = [];
    List<TaskDatumAnswerRequestRemote> dataAnswer =
    await ref.watch(getAnswerLocalProvider.future);
    final gamification = ref
        .watch(gamificationState.notifier)
        .state;
    for (var element in dataAnswer) {
      listData.add(TaskDatumAnswer(
          taskId: element.taskId,
          answer: element.answer,
          attachmentName: element.attachmentName,
          attachment: element.attachment));
    }

    var taskAnswer = AnswerRequestRemote(
        employeeMissionId: gamification.employeeMissionId,
        submittedDate: today,
        status: gamification.missionStatusCode,
        taskData: listData);
    await ref.watch(
        putAnswerFinalLocalProvider(answerRequestRemote: taskAnswer).future);
  }

  Future<void> changeStatusTask({isDone = true}) async {
    final gamification = ref
        .read(gamificationState.notifier)
        .state;

    GamificationResponseRemote data = GamificationResponseRemote();

    if (isDone) {
      data =
          gamification.copyWith(missionStatusCode: 2, missionStatus: 'Submitted');
    } else {
      // if ((gamification.missionStatusCode??0) < 1) {
        data = gamification.copyWith(
            missionStatusCode: 1, missionStatus: 'In Progress');
      // }
    }
    await ref
        .watch(changeStatusTaskLocalProvider(task: data).future)
        .whenComplete(() async {
      await deleteAnswer(listTaskAnswer);
    });
  }

  Future<void> putTaskAnswer(TaskDatumAnswerRequestRemote value) async {
    await ref
        .watch(putTaskAnswerLocalProvider(taskAnswer: value).future)
        .whenComplete(() {
      ref
          .watch(answerState.notifier)
          .state
          .add(TaskDatumAnswer(
          taskId: value.taskId,
          answer: value.answer,
          attachmentName: value.attachmentName,
          attachment: value.attachment));
    });
  }

  Future<void> deleteAnswer(
      List<TaskDatumAnswerRequestRemote> listTaskAnswer) async {
    await ref
        .watch(deleteAnswerLocalProvider(listTaskAnswer: listTaskAnswer).future)
        .whenComplete(() {
      listTaskAnswer.clear();
      ref
          .watch(answerState.notifier)
          .state
          .clear();
    });
  }

  Future<void> currentQuestion({required int employeeMissionId}) async {
    List<String> listString = [];
    List<int> listInt = [];
    List<int> numbersList = [];
  var currentAnswer =  ref
        .read(getAnswerFinalLocalProvider(employeeMissionId:employeeMissionId ).future);
        List<TaskDatumAnswerRequestRemote> dataCek = [];

    state = await AsyncValue.guard(() => currentAnswer).then((value) async {
      List<TaskDatumAnswer> listTaskAnswer = value.value ?? [];



      if (listTaskAnswer.isNotEmpty) {
        for (var element in listTaskAnswer) {
          dataCek.add(TaskDatumAnswerRequestRemote(
              taskId: element.taskId,
              answer: element.answer,
              attachmentName: element.attachmentName,
              attachment: element.attachment));
        }
      }
      index = ref.watch(currentIndexState);
      currentTypeTask = ref.watch(listTaskState)[index].taskTypeCode ?? '';
      currentTaskId = ref.watch(listTaskState)[index].taskId ?? 0;
      for (var element in dataCek) {
        if (element.taskId == currentTaskId) {
          // await deleteAnswer(dataCek);
          await putTaskAnswer(element);
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
        } else {
          if (currentTypeTask == TaskType.MCQ.name) {
            numbersList = answer.split(';').map(int.parse).toList();
            listInt.addAll(numbersList);
          } else {
            listInt.add(int.parse(answer != '' ? answer : '0'));
          }

          listSelectOptionCurrent = listInt;
        }
      }
      return value;
    });
  }

  Future<void> prevQuestion() async {
    List<String> listString = [];
    List<int> listInt = [];
    List<int> numbersList = [];
    List<TaskDatumAnswerRequestRemote> dataCek = await getTaskAnswer();
    var index = ref.watch(currentIndexState);
    var answer = '';
    var attachment = '';
    var attachmentName = '';
    var previousTypeTask =
        ref.watch(listTaskState)[index - 1].taskTypeCode ?? '';
    var previousTaskId = ref.watch(listTaskState)[index - 1].taskId;
    TaskDatumAnswerRequestRemote taskDatumAnswer =
    TaskDatumAnswerRequestRemote();
    for (var element in dataCek) {
      if (element.taskId == previousTaskId) {
        answer = element.answer ?? '';
        attachment = element.attachment??'';
        attachmentName = element.attachmentName??'';
      }
    }

    if (answer != '') {
      if (previousTypeTask == TaskType.STX.name || currentTypeTask == TaskType.ASM.name) {
        listString.add(answer);
        ref
            .watch(previousTypeTaskState.notifier)
            .state = previousTypeTask;
        ref
            .watch(listSelectOptionPrevStringState.notifier)
            .state = listString;

        ref.watch(attachmentPathState.notifier).state = attachment;
        ref.watch(attachmentNameState.notifier).state = attachmentName;

      } else {
        if (previousTypeTask == TaskType.MCQ.name) {
          numbersList = answer.split(';').map(int.parse).toList();
          listInt.addAll(numbersList);
        } else {
          listInt.add(int.parse(answer != '' ? answer : '0'));
        }

        ref
            .watch(previousTypeTaskState.notifier)
            .state = previousTypeTask;
        ref
            .watch(listSelectOptionPrevState.notifier)
            .state = listInt;
      }
    }
  }

  Future<void> nextQuestion({required bool isLast}) async {
    List<String> listString = [];
    List<int> listInt = [];
    List<int> numbersList = [];
    List<TaskDatumAnswer> currentAnswer =  await ref
        .watch(getAnswerFinalLocalProvider(employeeMissionId:ref
        .watch(gamificationState.notifier)
        .state.employeeMissionId??0 ).future);
    List<TaskDatumAnswer> listTaskAnswer = currentAnswer.isNotEmpty?currentAnswer:[];
    List<TaskDatumAnswerRequestRemote> dataCek = [];
    if(listTaskAnswer.isNotEmpty) {
      for (var element in listTaskAnswer) {
        dataCek.add(TaskDatumAnswerRequestRemote(
            taskId: element.taskId,
            answer: element.answer,
            attachment: element.attachment));
      }
    }
    var index = ref.watch(currentIndexState);
    var answer = '';
    var attachment = '';
    var attachmentName = '';
    var nextTypeTask =
    !isLast ? ref.watch(listTaskState)[index + 1].taskTypeCode ?? '' : '';

    var nextTaskId = !isLast ? ref.watch(listTaskState)[index + 1].taskId : 0;
    TaskDatumAnswerRequestRemote taskDatumAnswer =
    TaskDatumAnswerRequestRemote();
    for (var element in dataCek) {
      if (element.taskId == nextTaskId) {
        answer = element.answer ?? '';
        attachment = element.attachment??'';
        attachmentName = element.attachmentName??'';
      }
    }

    if (answer != '') {
      if (nextTypeTask == TaskType.STX.name || currentTypeTask == TaskType.ASM.name) {
        listString.add(answer);
        ref
            .watch(nextTypeTaskState.notifier)
            .state = nextTypeTask;
        ref
            .watch(listSelectOptionNextStringState.notifier)
            .state = listString;
        ref.watch(attachmentPathState.notifier).state = attachment;
        ref.watch(attachmentNameState.notifier).state = attachmentName;

      } else {
        if (nextTypeTask == TaskType.MCQ.name) {
          numbersList = answer.split(';').map(int.parse).toList();
          listInt.addAll(numbersList);
        } else {
          listInt.add(int.parse(answer != '' ? answer : '0'));
        }
        ref
            .watch(nextTypeTaskState.notifier)
            .state = nextTypeTask;
        ref
            .watch(listSelectOptionNextState.notifier)
            .state = listInt;
      }
    }
  }

  Future<void> saveAnswer(int questionId,
      {required List<dynamic>? listSelectedOption,
        String? attachment,
        String? attachmentName,
        required bool isLast,
        required String type}) async {
    TaskDatumAnswerRequestRemote dataAnswer = TaskDatumAnswerRequestRemote();
    String data = '';
    var dataCek = ref
        .watch(answerState.notifier)
        .state;

    if (listSelectedOption != null) {
      for (int i = 0; i < listSelectedOption.length; i++) {
        String code = listSelectedOption[i] is String
            ? listSelectedOption[i]
            : listSelectedOption[i].toString();
        data += code;
        if(listSelectedOption.length > 1){
          if (i < listSelectedOption.length-1) {
            data += ';';
          }

        }
      }
        dataAnswer = TaskDatumAnswerRequestRemote(
            taskId: questionId, answer: data, attachment: attachment ?? '',attachmentName: attachmentName??'');

        await putTaskAnswer(dataAnswer);
        listTaskAnswer.add(dataAnswer);
        if (isLast) {}

    }
  }

  Future<void> upsertItem(TaskDatumAnswer newItem) async {
    var dataCek = ref
        .watch(answerState.notifier)
        .state;
    int existingIndex =
    dataCek.indexWhere((item) => item.taskId == newItem.taskId);

    if (existingIndex != -1) {
      // If the item exists, update its properties
      dataCek[existingIndex] = newItem;
    } else {
      // If the item does not exist, add it to the list
      dataCek.add(newItem);
    }
  }
}
