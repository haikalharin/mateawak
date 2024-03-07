import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_response.remote.dart';
import 'package:module_etamkawa/src/features/task/domain/answer_request.remote.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'task.controller.g.dart';

final isScrollProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});

final currentIndexState = StateProvider.autoDispose<int>((ref) => 0);
final currentProgressState = StateProvider.autoDispose<int>((ref) => 0);

final selectOptionState = StateProvider.autoDispose<int>((ref) => 0);
final listSelectOptionState = StateProvider.autoDispose<List<int>>((ref) => []);
final selectOptionIndexState = StateProvider.autoDispose<int>((ref) => 0);
final answerState =
    StateProvider.autoDispose<List<TaskDatumAnswer>>((ref) => []);

final listTaskState = StateProvider.autoDispose<List<TaskDatum>>((ref) => []);

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
    ref.watch(currentIndexState.notifier).state = index++;
  }

  Future<void> putDetailMissionData(
      {required MissionDatum missionDatum,
      required GamificationResponseRemote gamificationResponseRemote}) async {
    ref.watch(missionDataState.notifier).state = missionDatum;
    ref.watch(gamificationState.notifier).state = gamificationResponseRemote;
    ref.watch(listTaskState.notifier).state = missionDatum.taskData ?? [];
  }

  Future<void> selectOption(int value) async {
    if (value != 0) {
      ref.watch(selectOptionState.notifier).state = value;
    }
  }

  Future<void> saveAnswer(int questionId,
      {int? selectedOption,
      List<int>? listSelectedOption, required bool isLast,
      required String type}) async {
    TaskDatumAnswer dataAnswer = TaskDatumAnswer();
    List<String> listData = [];
    String data = '';
    if (type == 'TT0001') {
      if (selectedOption != 0) {
        data = selectedOption.toString();
        dataAnswer =
            TaskDatumAnswer(taskId: questionId, answer: data, attachment: '');

        ref.watch(answerState.notifier).state.add(dataAnswer);
        if(isLast){
          listData.clear();
        }
      }
    } else if (type == 'TT0002') {
      var dataCek = ref.watch(answerState.notifier).state;
      if (listSelectedOption != null) {
        for (int i = 0; i <=  listSelectedOption.length; i++) {
          String code = listSelectedOption[i].toString();
          data += code;
          if(i == listSelectedOption.length -1 ){
            dataAnswer =
                TaskDatumAnswer(taskId: questionId, answer: data, attachment: '');

            ref.watch(answerState.notifier).state.add(dataAnswer);
            if(isLast){
              dataCek.clear();
            }
          }
          if (i !=  listSelectedOption.length) {
            data += ';';
          }
        }


      }
    }

  }
}
