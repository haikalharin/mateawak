import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_bps/src/constants/constant.dart';
import 'package:module_bps/src/features/telematry/domain/user_infos_response.remote.dart';
import 'package:module_bps/src/features/telematry/infrastructure/repositories/telematry.repositories.dart';
import 'package:module_bps/src/features/telematry/infrastructure/repositories/telematry_local.repository.dart';
import 'package:module_bps/src/shared_component/connection_listener_widget.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'main_nav.controller.g.dart';

@riverpod
Future<UserInfosResponseRemote?> getUserInfos(GetUserInfosRef ref) async {
  final isConnectionAvailable = ref.watch(isConnectionAvailableProvider);
  if (isConnectionAvailable) {
    try {
      final getUserInfo = await ref.watch(getUserInfosRemoteProvider.future);

      return getUserInfo;
    } catch (e) {
      return await ref.watch(getUserInfosLocalProvider.future);
    }
  } else {
    return await ref.watch(getUserInfosLocalProvider.future);
  }
}

//modul
final isAbleAccessOverviewProvider = StateProvider.autoDispose<bool>((ref) {
  final overview = Constant.fullListFeature['overview'];

  final getUserInfos = ref.watch(getUserInfosProvider);

  final value = getUserInfos.value?.roleAccess
          ?.where((element) =>
              element.tabId == overview?.tabId &&
              element.moduleId == overview?.moduleId &&
              element.isAuthorized == 1)
          .isNotEmpty ??
      false;

  return value;
});

final isAbleAccessLineupOperatorProvider =
    StateProvider.autoDispose<bool>((ref) {
  final lineup = Constant.fullListFeature['lineup_operator'];

  final getUserInfos = ref.watch(getUserInfosProvider);

  final value = getUserInfos.value?.roleAccess
          ?.where((element) =>
              element.tabId == lineup?.tabId &&
              element.moduleId == lineup?.moduleId &&
              element.isAuthorized == 1)
          .isNotEmpty ??
      false;

  return value;
});

final isAbleAccessLineupSpvProvider = StateProvider.autoDispose<bool>((ref) {
  final listAvailableTabLineup = ref.watch(listAvailableTabLineupProvider);

  return listAvailableTabLineup.isNotEmpty;
});

final listAvailableTabLineupProvider =
    StateProvider.autoDispose<List<String>>((ref) => [
          if (ref.watch(isAbleAccessLineupTabDashboardProvider))
            Constant.lineUpDashboard,
          if (ref.watch(isAbleAccessLineupTabReportProvider))
            Constant.lineUpReport,
          if (ref.watch(isAbleAccessLineupTabReadinessViewProvider))
            Constant.lineUpReadiness,
          if (ref.watch(isAbleAccessLineupTabMasterIntegrasiProvider))
            Constant.lineUpMasterIntegrasi,
          if (ref.watch(isAbleAccessLineupTabMasterUploaderProvider))
            Constant.lineUpMasterUploader,
        ]);

final indexTabLineupProvider =
    StateProvider.autoDispose.family<int, String>((ref, moduleId) {
  return ref
      .watch(listAvailableTabLineupProvider)
      .indexWhere((element) => element == moduleId);
});

final isAbleAccessSitePerformProvider = StateProvider.autoDispose<bool>((ref) {
  final listAvailableTabSitePerform =
      ref.watch(listAvailableTabSitePerformProvider);
  return listAvailableTabSitePerform.isNotEmpty;
});

final isAbleAccessLiveProvider = StateProvider.autoDispose<bool>((ref) {
  final isAbleAccessTabReadiness = ref.watch(isAbleAccessTabReadinessProvider);

  final isAbleAccessTabProd = ref.watch(isAbleAccessTabProdProvider);

  final isAbleAccessTabRca = ref.watch(isAbleAccessTabRcaProvider);

  final isAbleAccessTabPerformance =
      ref.watch(isAbleAccessTabPerformanceProvider);

  return isAbleAccessTabReadiness ||
      isAbleAccessTabProd ||
      isAbleAccessTabRca ||
      isAbleAccessTabPerformance;
});

final listAvailableMenuProvider =
    StateProvider.autoDispose<List<String>>((ref) {
  return [
    if (ref.watch(isAbleAccessOverviewProvider)) Constant.menuOverview,
    if (ref.watch(isAbleAccessLiveProvider)) Constant.menuLive,
    if (ref.watch(isAbleAccessSitePerformProvider)) Constant.menuSitePerform,
    if (ref.watch(isAbleAccessLineupOperatorProvider))
      Constant.menuLineupOperator,
    if (ref.watch(isAbleAccessLineupSpvProvider)) Constant.menuLineupSpv,
  ];
});

final indexMenuLiveProvider = StateProvider.autoDispose<int>((ref) {
  return ref
      .watch(listAvailableMenuProvider)
      .indexWhere((element) => element == Constant.menuLive);
});

final indexMenuOverviewProvider = StateProvider.autoDispose<int>((ref) {
  return ref
      .watch(listAvailableMenuProvider)
      .indexWhere((element) => element == Constant.menuOverview);
});

final indexMenuSitePerformProvider = StateProvider.autoDispose<int>((ref) {
  return ref
      .watch(listAvailableMenuProvider)
      .indexWhere((element) => element == Constant.menuSitePerform);
});

final indexMenuLineupSpvProvider = StateProvider.autoDispose<int>((ref) {
  return ref
      .watch(listAvailableMenuProvider)
      .indexWhere((element) => element == Constant.menuLineupSpv);
});

final indexMenuLineupOperatorProvider = StateProvider.autoDispose<int>((ref) {
  return ref
      .watch(listAvailableMenuProvider)
      .indexWhere((element) => element == Constant.menuLineupOperator);
});

//tab
final isAbleAccessTabReadinessProvider = StateProvider.autoDispose<bool>((ref) {
  final readiness = Constant.fullListFeature['live_readiness'];

  final getUserInfos = ref.watch(getUserInfosProvider);

  final value = getUserInfos.value?.roleAccess
          ?.where((element) =>
              element.tabId == readiness?.tabId &&
              element.moduleId == readiness?.moduleId &&
              element.isAuthorized == 1)
          .isNotEmpty ??
      false;

  return value;
});

final isAbleAccessTabProdProvider = StateProvider.autoDispose<bool>((ref) {
  final prod = Constant.fullListFeature['live_prod'];

  final getUserInfos = ref.watch(getUserInfosProvider);

  final value = getUserInfos.value?.roleAccess
          ?.where((element) =>
              element.tabId == prod?.tabId &&
              element.moduleId == prod?.moduleId &&
              element.isAuthorized == 1)
          .isNotEmpty ??
      false;

  return value;
});

final isAbleAccessTabRcaProvider = StateProvider.autoDispose<bool>((ref) {
  final rca = Constant.fullListFeature['live_rca'];

  final getUserInfos = ref.watch(getUserInfosProvider);

  final value = getUserInfos.value?.roleAccess
          ?.where((element) =>
              element.tabId == rca?.tabId &&
              element.moduleId == rca?.moduleId &&
              element.isAuthorized == 1)
          .isNotEmpty ??
      false;

  return value;
});

final isAbleAccessTabPerformanceProvider =
    StateProvider.autoDispose<bool>((ref) {
  final performance = Constant.fullListFeature['live_performance'];

  final getUserInfos = ref.watch(getUserInfosProvider);

  final value = getUserInfos.value?.roleAccess
          ?.where((element) =>
              element.tabId == performance?.tabId &&
              element.tabName == performance?.tabName &&
              element.isAuthorized == 1)
          .isNotEmpty ??
      false;

  return value;
});

final isAbleAccessSitePerformSiteLevelProvider =
    StateProvider.autoDispose.family<bool, String>((ref, period) {
  final sitePerformSiteLevel = switch (period) {
    Constant.day => Constant.fullListFeature['siteperform_day'],
    Constant.week => Constant.fullListFeature['siteperform_week'],
    Constant.month => Constant.fullListFeature['siteperform_month'],
    _ => Constant.fullListFeature['siteperform_year']
  };

  final getUserInfos = ref.watch(getUserInfosProvider);

  final value = getUserInfos.value?.roleAccess
          ?.where((element) =>
              element.tabId == sitePerformSiteLevel?.tabId &&
              element.moduleId == sitePerformSiteLevel?.moduleId &&
              element.isAuthorized == 1)
          .isNotEmpty ??
      false;

  return value;
});

final listAvailableSitePerformSiteLevelProvider =
    StateProvider.autoDispose<List<String>>((ref) => [
          if (ref.watch(isAbleAccessSitePerformSiteLevelProvider(Constant.day)))
            Constant.day,
          /* if (ref
              .watch(isAbleAccessSitePerformSiteLevelProvider(Constant.week)))
            Constant.week, */ //temporary hide week
          if (ref
              .watch(isAbleAccessSitePerformSiteLevelProvider(Constant.month)))
            Constant.month,
          if (ref
              .watch(isAbleAccessSitePerformSiteLevelProvider(Constant.year)))
            Constant.year,
        ]);

final isAbleAccessSitePerformEquipProvider =
    StateProvider.autoDispose.family<bool, String>((ref, period) {
  final sitePerformEquip = switch (period) {
    Constant.day => Constant.fullListFeature['siteperform_equip_day'],
    Constant.week => Constant.fullListFeature['siteperform_equip_week'],
    Constant.month => Constant.fullListFeature['siteperform_equip_month'],
    _ => Constant.fullListFeature['siteperform_equip_year']
  };

  final getUserInfos = ref.watch(getUserInfosProvider);

  final value = getUserInfos.value?.roleAccess
          ?.where((element) =>
              element.tabId == sitePerformEquip?.tabId &&
              element.moduleId == sitePerformEquip?.moduleId &&
              element.isAuthorized == 1)
          .isNotEmpty ??
      false;

  return value;
});

final listAvailableSitePerformEquipProvider =
    StateProvider.autoDispose<List<String>>((ref) => [
          if (ref.watch(isAbleAccessSitePerformEquipProvider(Constant.day)))
            Constant.day,
          if (ref.watch(isAbleAccessSitePerformEquipProvider(Constant.week)))
            Constant.week,
          if (ref.watch(isAbleAccessSitePerformEquipProvider(Constant.month)))
            Constant.month,
          if (ref.watch(isAbleAccessSitePerformEquipProvider(Constant.year)))
            Constant.year,
        ]);

final listAvailableTabSitePerformProvider =
    StateProvider.autoDispose<List<String>>((ref) {
  final listAvailableSitePerformSiteLevel =
      ref.watch(listAvailableSitePerformSiteLevelProvider);
  final listAvailableSitePerformEquip =
      ref.watch(listAvailableSitePerformEquipProvider);

  return [
    if (listAvailableSitePerformSiteLevel.isNotEmpty) Constant.siteLevel,
    if (listAvailableSitePerformEquip.isNotEmpty) Constant.equipment
  ];
});

//Lineup Tab
final isAbleAccessLineupTabDashboardProvider =
    StateProvider.autoDispose<bool>((ref) {
  final dashboard = Constant.fullListFeature['view_dashboard'];

  final getUserInfos = ref.watch(getUserInfosProvider);

  final value = getUserInfos.value?.roleAccess
          ?.where((element) =>
              element.tabId == dashboard?.tabId &&
              element.moduleId == dashboard?.moduleId &&
              element.isAuthorized == 1)
          .isNotEmpty ??
      false;

  return value;
});

final isAbleAccessLineupTabReportProvider =
    StateProvider.autoDispose<bool>((ref) {
  final report = Constant.fullListFeature['view_reporting'];

  final getUserInfos = ref.watch(getUserInfosProvider);

  final value = getUserInfos.value?.roleAccess
          ?.where((element) =>
              element.tabId == report?.tabId &&
              element.moduleId == report?.moduleId &&
              element.isAuthorized == 1)
          .isNotEmpty ??
      false;

  return value;
});

final isAbleAccessLineupTabReadinessViewProvider =
    StateProvider.autoDispose<bool>((ref) {
  final readinessView = Constant.fullListFeature['view_readiness'];

  final getUserInfos = ref.watch(getUserInfosProvider);

  final value = getUserInfos.value?.roleAccess
          ?.where((element) =>
              element.tabId == readinessView?.tabId &&
              element.moduleId == readinessView?.moduleId &&
              element.isAuthorized == 1)
          .isNotEmpty ??
      false;

  return value;
});

final isAbleAccessLineupTabReadinessChangeProvider =
    StateProvider.autoDispose<bool>((ref) {
  final readinessChange = Constant.fullListFeature['maintain_readiness'];

  final getUserInfos = ref.watch(getUserInfosProvider);

  final value = getUserInfos.value?.roleAccess
          ?.where((element) =>
              element.tabId == readinessChange?.tabId &&
              element.moduleId == readinessChange?.moduleId &&
              element.isAuthorized == 1)
          .isNotEmpty ??
      false;

  return value;
});

final isAbleAccessLineupTabMasterIntegrasiProvider =
    StateProvider.autoDispose<bool>((ref) {
  final masterUploader = Constant.fullListFeature['view_master'];

  final getUserInfos = ref.watch(getUserInfosProvider);

  final value = getUserInfos.value?.roleAccess
          ?.where((element) =>
              element.tabId == masterUploader?.tabId &&
              element.moduleId == masterUploader?.moduleId &&
              element.isAuthorized == 1)
          .isNotEmpty ??
      false;

  return value;
});

final isAbleAccessLineupTabMasterUploaderProvider =
    StateProvider.autoDispose<bool>((ref) {
  final masterIntegrasi = Constant.fullListFeature['upload_master'];

  final getUserInfos = ref.watch(getUserInfosProvider);

  final value = getUserInfos.value?.roleAccess
          ?.where((element) =>
              element.tabId == masterIntegrasi?.tabId &&
              element.moduleId == masterIntegrasi?.moduleId &&
              element.isAuthorized == 1)
          .isNotEmpty ??
      false;

  return value;
});
