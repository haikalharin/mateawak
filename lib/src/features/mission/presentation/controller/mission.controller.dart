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

final gamificationInProgressState =
    StateProvider.autoDispose<GamificationResponseRemote>(
        (ref) => GamificationResponseRemote());
final gamificationAssignedState =
    StateProvider.autoDispose<GamificationResponseRemote>(
        (ref) => GamificationResponseRemote());
final gamificationPastState =
    StateProvider.autoDispose<GamificationResponseRemote>(
        (ref) => GamificationResponseRemote());

@riverpod
class MissionController extends _$MissionController {
  List<GamificationResponseRemote> listGamification = [];

  @override
  FutureOr<void> build() async {
    await getMissionList();
  }

  Future<void> getMissionList() async {
    final repo = ref.read(getMissionLocalProvider.future);
    state = await AsyncValue.guard(() => repo).then((value) async {
      List<MissionDatum> listMissionInProgress = [];
      List<MissionDatum> listMissionAssigned = [];
      List<MissionDatum> listMissionPast = [];
      if (value.hasValue) {
        value.value?.forEach((element) {
          element.chapterData?.forEach((data) {
            if (data.missionData != null && data.missionData!.isNotEmpty) {
              data.missionData?.forEach((mission) {
                if (element.missionStatus!.contains('InProgress')) {
                  listMissionInProgress.add(mission);
                }
                if (element.missionStatus!.contains('Assigned')) {
                  listMissionAssigned.add(mission);
                }

                if (element.missionStatus!.contains('Past')) {
                  listMissionPast.add(mission);
                }
              });

              ref.watch(listMissionInProgressState.notifier).state =
                  listMissionInProgress;
              ref.watch(listMissionAssignedState.notifier).state =
                  listMissionAssigned;
              ref.watch(listMissionPastState.notifier).state = listMissionPast;
            } else {
              listGamification = [];
              listMissionInProgress = [];
              listMissionAssigned = [];
              listMissionPast = [];
            }
          });
          ref.watch(listChapterState.notifier).state =
              element.chapterData ?? [];
        });
        value.value?.forEach((element) {
          if (element.missionStatus!.contains('InProgress')) {
            ref.watch(gamificationInProgressState.notifier).state = element;
          }
          if (element.missionStatus!.contains('Assigned')) {
            ref.watch(gamificationAssignedState.notifier).state = element;
          }

          if (element.missionStatus!.contains('Past')) {
            ref.watch(gamificationPastState.notifier).state = element;
          }
        });

        ref.watch(listGamificationState.notifier).state = value.value ?? [];
        listGamification = value.value ?? [];
      }
      return value;
    });
  }
}
