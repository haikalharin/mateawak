import 'package:module_bps/src/features/offline_mode/infrastructure/repositories/isar.repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'offline_mode.controller.g.dart';

@riverpod
class OfflineModeController extends _$OfflineModeController {
  @override
  FutureOr<void> build() {}

  Future<void> clearAllBPSData() async {
    final isarInstance = await ref.watch(isarInstanceProvider.future);
    isarInstance.writeTxn(() async {
      await isarInstance.clear();
    });
  }
}
