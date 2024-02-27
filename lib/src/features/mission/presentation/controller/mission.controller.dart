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

part 'mission.controller.g.dart';

final isScrollProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});

final indexMtdYtdSliderProvider = StateProvider.autoDispose<int>((ref) => 0);

final listGamificationState =
    StateProvider.autoDispose<List<GamificationResponseRemote>>((ref) => []);
final listChapterState =
    StateProvider.autoDispose<List<ChapterDatum>>((ref) => []);
final listMissionInProgressState =
    StateProvider.autoDispose<List<MissionDatum>>((ref) => []);

final listMissionAssignedState =
    StateProvider.autoDispose<List<MissionDatum>>((ref) => []);

final listMissionPastState =
    StateProvider.autoDispose<List<MissionDatum>>((ref) => []);

@riverpod
class MissionController extends _$MissionController {
  List<GamificationResponseRemote> listGamification = [];

  @override
  FutureOr<void> build() async {
    // await getMissionList();
  }

  Future<void> getMissionList() async {
    final repo = ref.read(getMissionLocalProvider.future);
    state = await AsyncValue.guard(() => repo).then((value) async {
      List<MissionDatum>listMissionInProgress = [];
      List<MissionDatum>listMissionAssigned = [];
      List<MissionDatum>listMissionPast = [];
      if (value.hasValue) {
        value.value?.forEach((element) {
          element.data?.forEach((data) {

            if (data.chapterData != null &&
                data.chapterData!.isNotEmpty) {
              data.chapterData?.forEach((chapter) {
                if (chapter.missionData != null) {
                  chapter.missionData?.forEach((mission) {
                    if (mission.missionStatus!.contains('InProgress')) {

                      listMissionInProgress
                          .add(mission);
                    }
                    if (mission.missionStatus!.contains('Assigned')) {
                      listMissionAssigned
                          .add(mission);
                    }

                    if (mission.missionStatus!.contains('Past')) {
                      listMissionPast
                          .add(mission);
                    }

                  });
                }
              });
              ref
                  .watch(listMissionInProgressState.notifier)
                  .state = listMissionInProgress;
              ref
                  .watch(listMissionAssignedState.notifier)
                  .state = listMissionAssigned;
              ref
                  .watch(listMissionPastState.notifier)
                  .state = listMissionPast;


            } else {
              listGamification = [];
              listMissionInProgress = [];
              listMissionAssigned = [];
              listMissionPast = [];
            }

            ref.watch(listChapterState.notifier).state =
                data.chapterData ?? [];
          });
        });

        ref.watch(listGamificationState.notifier).state = value.value ?? [];
        listGamification = value.value ?? [];
      }
      return value;
    });
  }
}
