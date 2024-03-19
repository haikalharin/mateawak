import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_response.remote.dart';
import 'package:module_etamkawa/src/features/task/domain/answer_request.remote.dart';
import 'package:module_etamkawa/src/features/task/domain/task_datum_answer_request.remote.dart';
import 'package:module_etamkawa/src/features/task/infrastructure/task_local.repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'task.controller.g.dart';

enum TaskType { MCQ, SCQ, YNQ, STX, RAT, DEFAULT }

final isScrollProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});

final currentIndexState = StateProvider.autoDispose<int>((ref) => 0);
final currentProgressState = StateProvider.autoDispose<int>((ref) => 0);

final previousTypeTaskState = StateProvider.autoDispose<String>((ref) => '');
final nextTypeTaskState = StateProvider.autoDispose<String>((ref) => '');

final selectOptionState = StateProvider.autoDispose<int>((ref) => 0);

final listSelectOptionState = StateProvider.autoDispose<List<int>>((ref) => []);

final listSelectOptionPrevState =
    StateProvider.autoDispose<List<int>>((ref) => []);

final listSelectOptionPrevStringState =
    StateProvider.autoDispose<List<String>>((ref) => []);

final listSelectOptionNextState =
    StateProvider.autoDispose<List<int>>((ref) => []);

final listSelectOptionStringState =
    StateProvider.autoDispose<List<String>>((ref) => []);

final listSelectOptionNextStringState =
    StateProvider.autoDispose<List<String>>((ref) => []);

final selectOptionIndexState = StateProvider.autoDispose<int>((ref) => 0);

final answerState =
    StateProvider.autoDispose<List<TaskDatumAnswer>>((ref) => []);

final listTaskState = StateProvider.autoDispose<List<TaskDatum>>((ref) => []);

final listMissionState =
    StateProvider.autoDispose<List<MissionDatum>>((ref) => []);

final attachmentBase64State = StateProvider.autoDispose<String>((ref) => '');

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

  @override
  FutureOr<void> build() async {}

  Future<void> changeCurrentIndex() async {
    var index = ref.watch(currentIndexState);
    ref.watch(currentIndexState.notifier).state = index++;
  }

  Future<void> putDetailMissionData(
      {required MissionDatum missionDatum,
      required GamificationResponseRemote gamificationResponseRemote,
      required List<MissionDatum> listMission}) async {
    ref.watch(missionDataState.notifier).state = missionDatum;
    ref.watch(gamificationState.notifier).state = gamificationResponseRemote;
    ref.watch(listMissionState.notifier).state = listMission;
    List<TaskDatum> listTask = (missionDatum.taskData ?? []);
    listTask
        .sort((a, b) => (a.attachmentId ?? 0).compareTo(b.attachmentId ?? 0));
    ref.watch(listTaskState.notifier).state = listTask;
  }

  Future<void> selectOption(int value) async {
    if (value != 0) {
      ref.watch(selectOptionState.notifier).state = value;
    }
  }

  Future<List<TaskDatumAnswerRequestRemote>> getTaskAnswer() async {
    return await ref.watch(getAnswerLocalProvider.future);
  }

  Future<void> putTaskAnswer(TaskDatumAnswerRequestRemote value) async {
    await ref.watch(putTaskAnswerLocalProvider(taskAnswer: value).future);
  }

  Future<void> deleteAnswer(
      List<TaskDatumAnswerRequestRemote> listTaskAnswer) async {
    await ref
        .watch(deleteAnswerLocalProvider(listTaskAnswer: listTaskAnswer).future)
        .whenComplete(() {
      listTaskAnswer.clear();
    });
  }

  Future<void> prevQuestion() async {
    List<String> listString = [];
    List<int> listInt = [];
    List<int> numbersList = [];
    List<TaskDatumAnswerRequestRemote> dataCek = await getTaskAnswer();
    var index = ref.watch(currentIndexState);
    var answer = '';
    var previousTypeTask =
        ref.watch(listTaskState)[index - 1].taskTypeCode ?? '';
    var previousTaskId = ref.watch(listTaskState)[index - 1].taskId;
    TaskDatumAnswerRequestRemote taskDatumAnswer =
        TaskDatumAnswerRequestRemote();
    for (var element in dataCek) {
      if (element.taskId == previousTaskId) {
        answer = element.answer ?? '';
      }
    }

    if (answer != '') {
      if (previousTypeTask == TaskType.STX.name) {
        listString.add(answer);
        ref.watch(previousTypeTaskState.notifier).state = previousTypeTask;
        ref.watch(listSelectOptionPrevStringState.notifier).state = listString;
      } else {
        if (previousTypeTask == TaskType.MCQ.name) {
          numbersList = answer.split(';').map(int.parse).toList();
          listInt.addAll(numbersList);
        } else {
          listInt.add(int.parse(answer != '' ? answer : '0'));
        }

        ref.watch(previousTypeTaskState.notifier).state = previousTypeTask;
        ref.watch(listSelectOptionPrevState.notifier).state = listInt;
      }
    }
  }

  Future<void> nextQuestion({required bool isLast}) async {
    List<String> listString = [];
    List<int> listInt = [];
    List<int> numbersList = [];
    List<TaskDatumAnswerRequestRemote> dataCek = await getTaskAnswer();
    var index = ref.watch(currentIndexState);
    var answer = '';
    var nextTypeTask =
        !isLast ? ref.watch(listTaskState)[index + 1].taskTypeCode ?? '' : '';
    var nextTaskId = !isLast ? ref.watch(listTaskState)[index + 1].taskId : 0;
    TaskDatumAnswerRequestRemote taskDatumAnswer =
        TaskDatumAnswerRequestRemote();
    for (var element in dataCek) {
      if (element.taskId == nextTaskId) {
        answer = element.answer ?? '';
      }
    }

    if (answer != '') {
      if (nextTypeTask == TaskType.STX.name) {
        listString.add(answer);
        ref.watch(nextTypeTaskState.notifier).state = nextTypeTask;
        ref.watch(listSelectOptionNextStringState.notifier).state = listString;
      } else {
        if (nextTypeTask == TaskType.MCQ.name) {
          numbersList = answer.split(';').map(int.parse).toList();
          listInt.addAll(numbersList);
        } else {
          listInt.add(int.parse(answer != '' ? answer : '0'));
        }
        ref.watch(nextTypeTaskState.notifier).state = nextTypeTask;
        ref.watch(listSelectOptionNextState.notifier).state = listInt;
      }
    }
  }

  Future<void> saveAnswer(int questionId,
      {required List<dynamic>? listSelectedOption,
      String? attachment,
      required bool isLast,
      required String type}) async {
    TaskDatumAnswerRequestRemote dataAnswer = TaskDatumAnswerRequestRemote();
    String data = '';
    var dataCek = ref.watch(answerState.notifier).state;

    if (listSelectedOption != null) {
      for (int i = 0; i < listSelectedOption.length; i++) {
        String code = listSelectedOption[i] is String
            ? listSelectedOption[i]
            : listSelectedOption[i].toString();
        data += code;
        if (i == listSelectedOption.length - 1) {
          dataAnswer = TaskDatumAnswerRequestRemote(
              taskId: questionId, answer: data, attachment: attachment ?? '');

          await putTaskAnswer(dataAnswer);
          listTaskAnswer.add(dataAnswer);
          if (isLast) {
            await deleteAnswer(listTaskAnswer);
          }
        }
        if (i != listSelectedOption.length) {
          data += ';';
        }
      }
    }
  }

  Future<void> upsertItem(TaskDatumAnswer newItem) async {
    var dataCek = ref.watch(answerState.notifier).state;
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
