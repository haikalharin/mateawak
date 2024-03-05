import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_response.remote.dart';
import 'package:module_etamkawa/src/features/mission/infrastructure/repositories/mission_local.repository.dart';
import 'package:module_etamkawa/src/features/overview/domain/news_response.remote.dart';
import 'package:module_etamkawa/src/features/overview/infrastructure/repositories/overview.repository.dart';
import 'package:module_etamkawa/src/features/overview/infrastructure/repositories/overview_local.repository.dart';
import "package:module_etamkawa/src/utils/common_utils.dart" show CommonUtils;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../constants/constant.dart';
import '../../../../shared_component/connection_listener_widget.dart';

part 'task.controller.g.dart';

final isScrollProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});

final currentIndexState = StateProvider.autoDispose<int>((ref) => 0);
final currentProgressState = StateProvider.autoDispose<int>((ref) => 0);

final selectOptionState = StateProvider.autoDispose<String>((ref) => '');
final selectOptionIndexState = StateProvider.autoDispose<int>((ref) => 0);
final answerState = StateProvider.autoDispose<List<Map<String,dynamic>>>((ref) => []);


final listTaskState =
    StateProvider.autoDispose<List<TaskDatum>>((ref) => []);

@riverpod
class TaskController extends _$TaskController {
  List<GamificationResponseRemote> listGamification = [];

  @override
  FutureOr<void> build() async {
  }

  Future<void> changeCurrentIndex() async {
   var index = ref.watch(currentIndexState);
   ref.watch(currentIndexState.notifier).state = index++;
  }

  Future<void> putListTask(List<TaskDatum> list) async {
    ref.watch(listTaskState.notifier).state = list;
  }

  Future<void> selectOption(String value, String questionId) async {
   if(value.isNotEmpty){
     ref.watch(selectOptionState.notifier).state = value;
   }

  }

  Future<void> saveAnswer(String value, String questionId) async {
    Map<String,dynamic> dataAnswer ={};
    List<String> listData = [];
    if(value.isNotEmpty){
      listData.add(value??'');
      dataAnswer =
      {
        "taskId": questionId,
        "answer": listData
      };
      ref.watch(answerState.notifier).state.add(dataAnswer);
    }


  }
}
