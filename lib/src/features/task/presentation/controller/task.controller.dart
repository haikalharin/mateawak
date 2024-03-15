import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_response.remote.dart';
import 'package:module_etamkawa/src/features/task/domain/answer_request.remote.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'task.controller.g.dart';

enum TaskType { MCQ, SCQ, YNQ, STX, RAT }

final isScrollProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});

final currentIndexState = StateProvider.autoDispose<int>((ref) => 0);
final currentProgressState = StateProvider.autoDispose<int>((ref) => 0);

final selectOptionState = StateProvider.autoDispose<int>((ref) => 0);
final listSelectOptionState = StateProvider.autoDispose<List<int>>((ref) => []);
final listSelectOptionStringState =
StateProvider.autoDispose<List<String>>((ref) => []);
final selectOptionIndexState = StateProvider.autoDispose<int>((ref) => 0);
final answerState =
StateProvider.autoDispose<List<TaskDatumAnswer>>((ref) => []);

final listTaskState = StateProvider.autoDispose<List<TaskDatum>>((ref) => []);

final listMissionState = StateProvider.autoDispose<List<MissionDatum>>((
    ref) => []);

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

  @override
  FutureOr<void> build() async {}

  Future<void> changeCurrentIndex() async {
    var index = ref.watch(currentIndexState);
    ref
        .watch(currentIndexState.notifier)
        .state = index++;
  }

  Future<void> putDetailMissionData({required MissionDatum missionDatum,
    required GamificationResponseRemote gamificationResponseRemote, required List<
        MissionDatum> listMission}) async {
    ref
        .watch(missionDataState.notifier)
        .state = missionDatum;
    ref
        .watch(gamificationState.notifier)
        .state = gamificationResponseRemote;
    ref
        .watch(listMissionState.notifier)
        .state = listMission;
    List<TaskDatum> listTask = (missionDatum.taskData ?? []);
    listTask
        .sort((a, b) => (a.attachmentId ?? 0).compareTo(b.attachmentId ?? 0));
    ref
        .watch(listTaskState.notifier)
        .state = listTask;
  }

  Future<void> selectOption(int value) async {
    if (value != 0) {
      ref
          .watch(selectOptionState.notifier)
          .state = value;
    }
  }

  Future<void> prevQuestion(TaskType taskType) async {
    List<String> listString = [];
    List<int> listInt = [];

    var index = ref.watch(currentIndexState);

    if (ref
        .watch(answerState.notifier)
        .state[index-1].answer != null) {
      if(taskType == TaskType.SCQ) {
        listString.add(ref
            .watch(answerState.notifier)
            .state[index-1].answer ?? '');
        ref
            .watch(listSelectOptionStringState.notifier)
            .state = listString;
      }else{
        listInt.add(int.parse(ref
            .watch(answerState.notifier)
            .state[index-1].answer ?? '0'));
        ref
            .watch(listSelectOptionState.notifier)
            .state = listInt;
      }
    }
  }

  Future<void> saveAnswer(int questionId,
      {required List<dynamic>? listSelectedOption,
        String? attachment,
        required bool isLast,
        required String type}) async {
    TaskDatumAnswer dataAnswer = TaskDatumAnswer();
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
        if (i == listSelectedOption.length - 1) {
          dataAnswer =
              TaskDatumAnswer(taskId: questionId,
                  answer: data,
                  attachment: attachment ?? '');
          ref
              .watch(answerState.notifier)
              .state
              .add(dataAnswer);
          if (isLast) {
            dataCek.clear();
          }
        }
        if (i != listSelectedOption.length) {
          data += ';';
        }
      }
    }
  }
}
