import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_response.remote.dart';
import 'package:module_etamkawa/src/features/mission/infrastructure/repositories/mission_local.repository.dart';
import 'package:module_etamkawa/src/shared_component/connection_listener_widget.dart';
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
    StateProvider.autoDispose<List<GamificationResponseRemote>>((ref) => []);
final gamificationAssignedState =
    StateProvider.autoDispose<List<GamificationResponseRemote>>((ref) => []);
final gamificationPastState =
    StateProvider.autoDispose<List<GamificationResponseRemote>>((ref) => []);
final fixedGamificationAssigned =
    StateProvider.autoDispose<List<GamificationResponseRemote>>((ref) => []);
var latestSyncDateState =
    StateProvider.autoDispose<String>((ref) => '2024-03-01T03:55:58.918Z');

@riverpod
class MissionController extends _$MissionController {
  List<GamificationResponseRemote> listGamification = [];

  @override
  FutureOr<void> build() async {
    await getMissionList();
  }

  Future<void> getMissionListLocal() async {
    var repo = ref.read(getMissionLocalProvider.future);

    state = await AsyncValue.guard(() => repo).then((value) async {
      List<MissionDatum> listMissionInProgress = [];
      List<MissionDatum> listMissionAssigned = [];
      List<MissionDatum> listMissionPast = [];
      List<GamificationResponseRemote> listGamificationInProgress = [];
      List<GamificationResponseRemote> listGamificationAssigned = [];
      List<GamificationResponseRemote> listGamificationPast = [];
      if (value.hasValue) {
        value.value?.forEach((element) async {
          if (element.missionStatusId! == 1) {
            listGamificationInProgress.add(element);
          } else if (element.missionStatusId! == 0) {
            listGamificationAssigned.add(element);
          } else if (element.missionStatusId! >= 2) {
            listGamificationPast.add(element);
          }
          // } else {
          //   listMissionInProgress = [];
          //   listMissionAssigned = [];
          //   listMissionPast = [];
          //   listGamificationInProgress = [];
          //   listGamificationAssigned = [];
          //   listGamificationPast = [];
          // }
        });
        ref.watch(listMissionInProgressState.notifier).state =
            listMissionInProgress;
        ref.watch(listMissionAssignedState.notifier).state =
            listMissionAssigned;
        ref.watch(listMissionPastState.notifier).state = listMissionPast;
        ref.watch(gamificationInProgressState.notifier).state =
            listGamificationInProgress;
        ref.watch(gamificationAssignedState.notifier).state =
            listGamificationAssigned;
        ref.watch(gamificationPastState.notifier).state = listGamificationPast;
        ref.watch(listGamificationState.notifier).state = value.value ?? [];
        ref.watch(fixedGamificationAssigned.notifier).state = value.value ?? [];
        listGamification = value.value ?? [];
      }
      return value;
    });
  }

  Future<void> getMissionList() async {
    final isConnectionAvailable = ref.read(isConnectionAvailableProvider);
    var repo = isConnectionAvailable
        ? ref.read(getMissionRemoteProvider.future)
        : ref.read(getMissionLocalProvider.future);

    state = await AsyncValue.guard(() => repo).then((value) async {
      List<MissionDatum> listMissionInProgress = [];
      List<MissionDatum> listMissionAssigned = [];
      List<MissionDatum> listMissionPast = [];
      List<GamificationResponseRemote> listGamificationInProgress = [];
      List<GamificationResponseRemote> listGamificationAssigned = [];
      List<GamificationResponseRemote> listGamificationPast = [];
      if (value.hasValue) {
        value.value?.forEach((element) async {
          if (element.missionStatusId! == 1) {
            if (ref
                .watch(gamificationInProgressState.notifier)
                .state
                .isNotEmpty) {
              ref
                  .watch(gamificationInProgressState.notifier)
                  .state
                  .forEach((currentElement) {
                if (element.employeeMissionId ==
                    currentElement.employeeMissionId) {
                  listGamificationInProgress.add(currentElement);
                } else {
                  listGamificationInProgress.add(element);
                }
              });
            } else {
              listGamificationInProgress.add(element);
            }
          } else if (element.missionStatusId! == 0) {
            if (ref
                .watch(gamificationAssignedState.notifier)
                .state
                .isNotEmpty) {
              ref
                  .watch(gamificationAssignedState.notifier)
                  .state
                  .forEach((currentElement) {
                if (element.employeeMissionId ==
                    currentElement.employeeMissionId) {
                  listGamificationAssigned.add(currentElement);
                } else {
                  listGamificationAssigned.add(element);
                }
              });
            } else {
              listGamificationAssigned.add(element);
            }
          } else if (element.missionStatusId! >= 2) {
            if (ref.watch(gamificationPastState.notifier).state.isNotEmpty) {
              ref
                  .watch(gamificationPastState.notifier)
                  .state
                  .forEach((currentElement) {
                if (element.employeeMissionId ==
                    currentElement.employeeMissionId) {
                  listGamificationPast.add(currentElement);
                } else {
                  listGamificationPast.add(element);
                }
              });
            } else {
              listGamificationPast.add(element);
            }
          }
          // } else {
          //   listMissionInProgress = [];
          //   listMissionAssigned = [];
          //   listMissionPast = [];
          //   listGamificationInProgress = [];
          //   listGamificationAssigned = [];
          //   listGamificationPast = [];
          // }
        });
        ref.watch(listMissionInProgressState.notifier).state =
            listMissionInProgress;
        ref.watch(listMissionAssignedState.notifier).state =
            listMissionAssigned;
        ref.watch(listMissionPastState.notifier).state = listMissionPast;
        ref.watch(gamificationInProgressState.notifier).state =
            listGamificationInProgress;
        ref.watch(gamificationAssignedState.notifier).state =
            listGamificationAssigned;
        ref.watch(gamificationPastState.notifier).state = listGamificationPast;
        ref.watch(listGamificationState.notifier).state = value.value ?? [];
        ref.watch(fixedGamificationAssigned.notifier).state = value.value ?? [];
        listGamification = value.value ?? [];
      }
      return value;
    });
  }

  Future<void> filterMissionList(String query) async {
    var repo = ref.read(getMissionLocalProvider.future);
    state = await AsyncValue.guard(() => repo).then((value) async {
      List<MissionDatum> listMissionInProgress = [];
      List<MissionDatum> listMissionAssigned = [];
      List<MissionDatum> listMissionPast = [];
      if (value.hasValue) {
        value.value?.forEach((element) async {
          if (element.missionStatusId! == 1) {
            ref.watch(gamificationInProgressState.notifier).state.add(element);
            element.chapterData?.forEach((chapter) {
              listMissionInProgress.addAll(chapter.missionData ?? []);
            });
          } else if (element.missionStatusId! == 0) {
            ref.watch(gamificationAssignedState.notifier).state.add(element);
            element.chapterData?.forEach((chapter) {
              listMissionAssigned.addAll(chapter.missionData ?? []);
            });
          } else if (element.missionStatusId! >= 2) {
            ref.watch(gamificationPastState.notifier).state.add(element);
            element.chapterData?.forEach((chapter) {
              listMissionPast.addAll(chapter.missionData ?? []);
            });
          }
          // } else {
          //   listMissionInProgress = [];
          //   listMissionAssigned = [];
          //   listMissionPast = [];
          //   listGamificationInProgress = [];
          //   listGamificationAssigned = [];
          //   listGamificationPast = [];
          // }
        });
        ref.watch(listMissionInProgressState.notifier).state =
            listMissionInProgress
                .where((o) =>
                    o.missionName!.toLowerCase().contains(query.toLowerCase()))
                .toList();
        ref.watch(listMissionAssignedState.notifier).state = listMissionAssigned
            .where((o) =>
                o.missionName!.toLowerCase().contains(query.toLowerCase()))
            .toList();
        ref.watch(listMissionPastState.notifier).state = listMissionPast
            .where((o) =>
                o.missionName!.toLowerCase().contains(query.toLowerCase()))
            .toList();
        ref.watch(listGamificationState.notifier).state = value.value ?? [];
        ref.watch(fixedGamificationAssigned.notifier).state = value.value ?? [];
        listGamification = value.value ?? [];
      }
      return value;
    });
  }
}
