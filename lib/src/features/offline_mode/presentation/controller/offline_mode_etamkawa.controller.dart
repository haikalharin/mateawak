import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_response.remote.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../infrastructure/repositories/isar.repository.dart';

part 'offline_mode_etamkawa.controller.g.dart';

@riverpod
class OfflineModeEtamkawaController extends _$OfflineModeEtamkawaController {
  @override
  FutureOr<void> build() {}

  Future<void> clearAllEtamKawaData() async {
    final isarInstance = await ref.watch(isarInstanceProvider.future);
    isarInstance.writeTxn(() async {
      await isarInstance.clear();
    });
  }

  Future<bool> checkAlldataEtamKawa() async {
    final isarInstance = await ref.watch(isarInstanceProvider.future);
    final data = await isarInstance.gamificationResponseRemotes
        .filter()
        .employeeMissionIdIsNotNull()
        .findAll();
    if (data.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }
}
