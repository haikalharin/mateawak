import 'package:flutter/foundation.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_response.remote.dart';
import 'package:module_etamkawa/src/features/mission/infrastructure/repositories/mission_local.repository.dart';
import 'package:module_etamkawa/src/shared_component/connection_listener_widget.dart';
import 'package:module_shared/module_shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../module_etamkawa.dart';
import '../../../../constants/constant.dart';
import '../../../main_nav/presentation/controller/main_nav.controller.dart';
import '../../../task/presentation/controller/task.controller.dart';

part 'mission.controller.g.dart';

final isScrollProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});
final submitStatusMissionState = StateProvider.autoDispose<SubmitStatus>((ref) {
  return SubmitStatus.initial;
});

final isInitMissionState = StateProvider.autoDispose<bool>((ref) {
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
    await getMissionListBackgroundServices();
  }

  Future<void> getMissionListLocal() async {
    var repo = ref.read(getMissionLocalProvider.future);
    ref.watch(submitStatusMissionState.notifier).state = SubmitStatus.inProgess;
    state = await AsyncValue.guard(() => repo).then((value) async {
      if (value.value != null) {
        List<GamificationResponseRemote> listGamificationInProgress = [];
        List<GamificationResponseRemote> listGamificationAssigned = [];
        List<GamificationResponseRemote> listGamificationPast = [];
        if (value.hasValue) {
          value.value?.forEach((element) async {
            if (element.missionStatusCode! == 1) {
              listGamificationInProgress.add(element);
            } else if (element.missionStatusCode! == 0) {
              listGamificationAssigned.add(element);
            } else if (element.missionStatusCode! >= 2) {
              listGamificationPast.add(element);
            }
          });
          ref.watch(gamificationInProgressState.notifier).state =
              listGamificationInProgress;
          ref.watch(gamificationAssignedState.notifier).state =
              listGamificationAssigned;
          ref.watch(gamificationPastState.notifier).state =
              listGamificationPast;
          ref.watch(listGamificationState.notifier).state = value.value ?? [];
          ref.watch(fixedGamificationAssigned.notifier).state =
              value.value ?? [];
          listGamification = value.value ?? [];
          ref.watch(submitStatusMissionState.notifier).state =
              SubmitStatus.success;
        }
        ref.watch(submitStatusMissionState.notifier).state =
            SubmitStatus.success;
      } else {
        ref.watch(submitStatusMissionState.notifier).state =
            SubmitStatus.failure;
      }
      return value;
    });
  }

  Future<void> fetchMissionListBackgroundService() async {
    final backgroundServices = FlutterBackgroundService();
    final isBgServiceRunning = await backgroundServices.isRunning();
    if (!isBgServiceRunning) {
      await backgroundServices.startService();
    }
    final userModel = await ref.read(helperUserProvider).getUserProfile();
    final latestSyncDate = ref.read(latestSyncDateState.notifier).state;
    var repo = ref.read(getMissionLocalProvider.future);
    List<dynamic> listRepo = [];
    await AsyncValue.guard(() => repo).then((value) async {
      if (value.value != null) {
        value.value?.forEach((element) {
          listRepo.add(gamificationResponseRemoteToJson(element));
        });
      }
    });

    backgroundServices.invoke(Constant.bgMissionInit, {
      'employeeId': userModel?.employeeID,
      'requestDate': latestSyncDate,
      'repo': listRepo,
      'url': dotenv.env[EnvConstant.rootUrl],
      'path':
          '/${BspaceModule.getRootUrl(moduleType: ModuleType.etamkawaGamification)}/api/mission/get_employee_mission?${Constant.apiVer}',
      'accessToken': await ref.read(storageProvider.notifier).read(
            storage: TableConstant.tbMProfile,
            key: ProfileKeyConstant.keyTokenGeneral,
          )
    });
    await ref
        .watch(missionControllerProvider.notifier)
        .getMissionListBackgroundServices()
        .whenComplete(() {});
  }

  Future<void> getMissionListBackgroundServices() async {
    final isConnectionAvailable = ref.read(isConnectionAvailableProvider);
    var repo = ref.read(getMissionRemoteProvider.future);
    try {
      state = await AsyncValue.guard(() => repo).then((value) async {
        if (value.value != null && value.value != []) {
          List<GamificationResponseRemote> listGamificationInProgress = [];
          List<GamificationResponseRemote> listGamificationAssigned = [];
          List<GamificationResponseRemote> listGamificationPast = [];

          if (value.hasValue) {
            value.value?.forEach((element) async {
              if (element.missionStatusCode != null) {
                if (element.missionStatusCode! == 1) {
                  listGamificationInProgress.add(element);
                } else if (element.missionStatusCode! == 0) {
                  listGamificationAssigned.add(element);
                } else if (element.missionStatusCode! >= 2) {
                  listGamificationPast.add(element);
                }
              }
            });
            ref.watch(gamificationInProgressState.notifier).state =
                listGamificationInProgress;
            ref.watch(gamificationAssignedState.notifier).state =
                listGamificationAssigned;
            ref.watch(gamificationPastState.notifier).state =
                listGamificationPast;
            ref.watch(listGamificationState.notifier).state = value.value ?? [];
            ref.watch(fixedGamificationAssigned.notifier).state =
                value.value ?? [];
            listGamification = value.value ?? [];
          }
        }
        return value;
      });
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<void> getMissionList({bool isInit = false}) async {
    final isConnectionAvailable = ref.read(isConnectionAvailableProvider);
    ref.read(submitStatusMissionState.notifier).state = SubmitStatus.inProgess;
    ref.read(isInitMissionState.notifier).state = isInit;

    try {
      var repo = ref.read(getMissionRemoteProvider.future);

      state = await AsyncValue.guard(() => repo).then((value) async {
        if (value.value != null && value.value != []) {
          List<GamificationResponseRemote> listGamificationInProgress = [];
          List<GamificationResponseRemote> listGamificationAssigned = [];
          List<GamificationResponseRemote> listGamificationPast = [];

          if (value.hasValue) {
            value.value?.forEach((element) async {
              if (element.missionStatusCode != null) {
                if (element.missionStatusCode! == 1) {
                  listGamificationInProgress.add(element);
                } else if (element.missionStatusCode! == 0) {
                  listGamificationAssigned.add(element);
                } else if (element.missionStatusCode! >= 2) {
                  listGamificationPast.add(element);
                }
              }
            });
            ref.watch(gamificationInProgressState.notifier).state =
                listGamificationInProgress;
            ref.watch(gamificationAssignedState.notifier).state =
                listGamificationAssigned;
            ref.watch(gamificationPastState.notifier).state =
                listGamificationPast;
            ref.watch(listGamificationState.notifier).state = value.value ?? [];
            ref.watch(fixedGamificationAssigned.notifier).state =
                value.value ?? [];
            listGamification = value.value ?? [];
          }
          ref.read(submitStatusMissionState.notifier).state =
              SubmitStatus.success;
        } else {
          ref.read(submitStatusMissionState.notifier).state =
              SubmitStatus.failure;
        }
        return value;
      });
    } catch (e) {
      ref.watch(submitStatusMissionState.notifier).state = SubmitStatus.failure;
    }
  }

  Future<void> filterMissionList(String query) async {
    ref.read(getMissionLocalProvider.future);
    var repo = ref.read(getMissionLocalProvider.future);
    state = await AsyncValue.guard(() => repo).then((value) async {
      List<GamificationResponseRemote> listGamificationInProgress = [];
      List<GamificationResponseRemote> listGamificationAssigned = [];
      List<GamificationResponseRemote> listGamificationPast = [];
      if (value.hasValue) {
        value.value?.forEach((element) async {
          if (element.missionStatusCode! == 1) {
            listGamificationInProgress.add(element);
          } else if (element.missionStatusCode! == 0) {
            listGamificationAssigned.add(element);
          } else if (element.missionStatusCode! >= 2) {
            listGamificationPast.add(element);
          }
        });

        ref.watch(gamificationInProgressState.notifier).state =
            listGamificationInProgress
                .where((element) => (element.chapterData?.single.missionData
                            ?.single.missionName ??
                        '')
                    .toLowerCase()
                    .contains(query.toLowerCase()))
                .toList();
        ref.watch(gamificationAssignedState.notifier).state =
            listGamificationAssigned
                .where((element) => (element.chapterData?.single.missionData
                            ?.single.missionName ??
                        '')
                    .toLowerCase()
                    .contains(query.toLowerCase()))
                .toList();
        ref.watch(gamificationPastState.notifier).state = listGamificationPast
            .where((element) =>
                (element.chapterData?.single.missionData?.single.missionName ??
                        '')
                    .toLowerCase()
                    .contains(query.toLowerCase()))
            .toList();
        ref.watch(listGamificationState.notifier).state = value.value ?? [];
        ref.watch(fixedGamificationAssigned.notifier).state = value.value ?? [];
        listGamification = value.value ?? [];
      }
      return value;
    });
  }

  Future<void> putDetailMissionData(
      {required MissionDatum missionDatum,
      required GamificationResponseRemote gamificationResponseRemote,
      List<GamificationResponseRemote>? listGamification}) async {
    List<MissionDatum> listMission = [];

    ref.watch(missionDataState.notifier).state = missionDatum;
    ref.watch(gamificationState.notifier).state = gamificationResponseRemote;
    for (var element in listGamification ?? []) {
      listMission.add(
          element.chapterData?.single.missionData?.single ?? MissionDatum());
    }
    ref.watch(listMissionState.notifier).state = listMission;
    List<TaskDatum> listTask = (missionDatum.taskData ?? []);
    ref.watch(listTaskState.notifier).state = listTask;

    state = const AsyncValue.data(null);
  }
}
