import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_response.remote.dart';
import 'package:module_etamkawa/src/features/mission/infrastructure/repositories/mission_local.repository.dart';
import 'package:module_etamkawa/src/features/mission/presentation/controller/mission.controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../module_etamkawa.dart';

part 'main_nav.controller.g.dart';

enum SubmitStatus { initial, inProgress, success, failure }

final isScrollProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});

final submitStatusState = StateProvider.autoDispose<SubmitStatus>((ref) {
  return SubmitStatus.initial;
});


final indexMtdYtdSliderProvider = StateProvider.autoDispose<int>((ref) => 0);



@riverpod
class MainNavController extends _$MainNavController {
  List<GamificationResponseRemote> listGamification = [];
  int indexNav = 0;

  @override
  FutureOr<void> build() async {
  }

  Future<void> fetchMissionList() async {

    ref
        .watch(submitStatusState.notifier)
        .state = SubmitStatus.inProgress;
    final repo = await ref.watch(getMissionRemoteProvider.future);

    if(repo.isNotEmpty == true) {
     await ref.watch(missionControllerProvider.notifier).getMissionList().whenComplete(() {
       Future.delayed(const Duration(seconds: 2), () {
         ref.watch(submitStatusState.notifier)
             .state = SubmitStatus.success;
         ref.read(etamkawaGoRouterProvider).goNamed(homeEtakawaInit);});
     });

  } else{
      ref.watch(submitStatusState.notifier)
          .state = SubmitStatus.failure;
    }
  }




  Future<void> fetchMissionListLocal() async {
    ref
        .watch(submitStatusState.notifier)
        .state = SubmitStatus.inProgress;
    final repo = await ref.watch(getMissionLocalProvider.future);

    if(repo.isNotEmpty == true) {
      await ref.watch(missionControllerProvider.notifier).getMissionListLocal();
      Future.delayed(const Duration(seconds: 2), () {
        ref.watch(submitStatusState.notifier)
            .state = SubmitStatus.success;
        ref.read(etamkawaGoRouterProvider).goNamed(homeEtakawaInit);});

    } else{
      ref.watch(submitStatusState.notifier)
          .state = SubmitStatus.failure;
    }
  }

  void onItemTapped(int value) {
    state = const AsyncLoading();
    indexNav = value;
    state = const AsyncValue.data(null);
  }
}
