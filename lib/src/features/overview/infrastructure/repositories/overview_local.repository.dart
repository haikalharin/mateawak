import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../offline_mode/infrastructure/repositories/isar.repository.dart';
import '../../domain/achievement_produksi_response.remote.dart';
import '../../domain/detail_hourly_grafik_response.remote.dart';
import '../../domain/unit_breakdown_response.remote.dart';
part 'overview_local.repository.g.dart';

@riverpod
Future<AchievementProduksiResponseRemote?> getAchievementProduksiLocal(
    GetAchievementProduksiLocalRef ref, bool isOb) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);

  final data = await isarInstance.achievementProduksiResponseRemotes
      .filter()
      .isObEqualTo(isOb)
      .findAll();

  return data.first;
}

@riverpod
Future<List<DetailHourlyGrafikResponseRemote>> getDetailHourlyGrafikLocal(
    GetDetailHourlyGrafikLocalRef ref, bool isOb) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);

  final data = await isarInstance.detailHourlyGrafikResponseRemotes
      .filter()
      .isObEqualTo(isOb)
      .findAll();

  return data;
}

@riverpod
Future<List<UnitBreakdownResponseRemote>> getUnitBreakdownLocal(
    GetUnitBreakdownLocalRef ref, bool isOb) async {
  final isarInstance = await ref.watch(isarInstanceProvider.future);

  final data = await isarInstance.unitBreakdownResponseRemotes
      .filter()
      .isObEqualTo(isOb)
      .findAll();

  return data;
}
