import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_etamkawa/src/features/overview/infrastructure/repositories/overview.repository.dart';
import 'package:module_etamkawa/src/features/overview/infrastructure/repositories/overview_local.repository.dart';
import "package:module_bps/src/utils/common_utils.dart" show CommonUtils;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../constants/constant.dart';
import '../../../../shared_component/connection_listener_widget.dart';
import '../../domain/achievement_produksi_response.remote.dart';
import '../../domain/detail_hourly_grafik_response.remote.dart';
import '../../domain/unit_breakdown_response.remote.dart';
part 'overview.controller.g.dart';

final isScrollProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});

final indexMtdYtdSliderProvider = StateProvider.autoDispose<int>((ref) => 0);

@riverpod
Future<AchievementProduksiResponseRemote?> getAchievementProduksi(
    GetAchievementProduksiRef ref,
    {required String? material,
    required String? adAccount,
    required int? uid,
    required List<String>? areas}) async {
  final isConnectionAvailable = ref.watch(isConnectionAvailableProvider);

  return isConnectionAvailable
      ? await ref.watch(getAchievementProduksiRemoteProvider(
          areas: areas,
          material: material,
          adAccount: adAccount,
          uid: uid ?? 0,
        ).future)
      : await ref.watch(
          getAchievementProduksiLocalProvider(material == Constant.ob).future);
}

@riverpod
Future<List<DetailHourlyGrafikResponseRemote>> getDetailHourlyGrafik(
    GetDetailHourlyGrafikRef ref,
    {required String? material,
    required String? adAccount,
    required int? uid,
    required List<String>? areas}) async {
  final isConnectionAvailable = ref.watch(isConnectionAvailableProvider);

  return isConnectionAvailable
      ? await ref.watch(getDetailHourlyGrafikRemoteProvider(
          areas: areas,
          material: material,
          adAccount: adAccount,
          uid: uid ?? 0,
        ).future)
      : await ref.watch(
          getDetailHourlyGrafikLocalProvider(material == Constant.ob).future);
}

@riverpod
Future<List<UnitBreakdownResponseRemote>> getUnitBreakdown(
    GetUnitBreakdownRef ref,
    {required String? material,
    required String? adAccount,
    required int? uid,
    required List<String>? areas}) async {
  final isConnectionAvailable = ref.watch(isConnectionAvailableProvider);
  return isConnectionAvailable
      ? await ref.watch(getUnitBreakdownRemoteProvider(
          areas: areas,
          material: material,
          adAccount: adAccount,
          uid: uid ?? 0,
        ).future)
      : await ref
          .watch(getUnitBreakdownLocalProvider(material == Constant.ob).future);
}

@riverpod
Future<bool> isDayShift(IsDayShiftRef ref) async {
  final currentWitaTime = await CommonUtils.getCurrentNTP();
  return currentWitaTime.hour < 18 && currentWitaTime.hour > 6;
}
