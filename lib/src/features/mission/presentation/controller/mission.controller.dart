import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_response.remote.dart';
import 'package:module_etamkawa/src/features/mission/infrastructure/repositories/mission_local.repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


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
        value.value?.forEach((element) async {
          if (element.missionStatus!.contains('InProgress')) {
            ref.watch(gamificationInProgressState.notifier).state = element;
            element.chapterData?.forEach((chapter) {
              listMissionInProgress.addAll(chapter.missionData ?? []);
            });
          } else if (element.missionStatus!.contains('Assigned')) {
            ref.watch(gamificationAssignedState.notifier).state = element;
            element.chapterData?.forEach((chapter) {
              listMissionAssigned.addAll(chapter.missionData ?? []);
            });
          } else if (element.missionStatus!.contains('Past')) {
            ref.watch(gamificationPastState.notifier).state = element;
            element.chapterData?.forEach((chapter) {
              listMissionPast.addAll(chapter.missionData ?? []);
            });
          } else {
            listMissionInProgress = [];
            listMissionAssigned = [];
            listMissionPast = [];
          }
        });
        ref.watch(listMissionInProgressState.notifier).state =
            listMissionInProgress;
        ref.watch(listMissionAssignedState.notifier).state =
            listMissionAssigned;
        ref.watch(listMissionPastState.notifier).state = listMissionPast;
        ref.watch(listGamificationState.notifier).state = value.value ?? [];
        listGamification = value.value ?? [];
      }
      return value;
    });
  }
}
