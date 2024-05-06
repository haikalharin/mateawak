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
}
