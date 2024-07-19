import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/features/growth/domain/growth_additional_detail.remote.dart';
import 'package:module_etamkawa/src/features/offline_mode/infrastructure/repositories/isar.repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'growth.controller.g.dart';

var latestSyncDateTeamState = StateProvider.autoDispose<String>((ref) => '-');

var latestSyncDateLeaderboardState =
    StateProvider.autoDispose<String>((ref) => '-');

@riverpod
class GrowthController extends _$GrowthController {
  @override
  FutureOr<void> build() async {}
  Future<void> updateLatestSyncDateTeam() async {
    final isarInstance = await ref.watch(isarInstanceProvider.future);
    final latestSyncDateIsar = await isarInstance.growthAdditionalDetailRemotes
        .filter()
        .idEqualTo(0)
        .findFirst();
    if (latestSyncDateIsar != null) {
      if (latestSyncDateIsar.latestSyncDateTeam != null) {
        ref.read(latestSyncDateTeamState.notifier).state =
            latestSyncDateIsar.latestSyncDateTeam!;
      }
    }
  }
}
