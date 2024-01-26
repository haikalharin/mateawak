import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_etamkawa/src/constants/constant.dart';
import 'package:module_etamkawa/src/features/main_nav/presentation/controller/main_nav.controller.dart';
import 'package:module_etamkawa/src/features/setting/domain/setting.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../offline_mode/infrastructure/repositories/isar.repository.dart';

part 'setting.controller.g.dart';

@riverpod
class SettingController extends _$SettingController {
  @override
  FutureOr<void> build() {}

  void setSettingNewValue(SettingMode settingMode, bool isActive) async {
    final isarInstance = await ref.watch(isarInstanceProvider.future);

    final existingSetting = await isarInstance.settingModels.get(1);

    await isarInstance.writeTxn(() async {
      SettingModel modifiedSetting = SettingModel();
      modifiedSetting.id = 1;

      if (existingSetting != null) {
        modifiedSetting = existingSetting;
      }

      switch (settingMode) {
        case SettingMode.materialOb:
          modifiedSetting.isMaterialObActive = isActive;
          ref.invalidate(indexSliderProvider);
          break;
        case SettingMode.materialCM:
          modifiedSetting.isMaterialCmActive = isActive;
          ref.invalidate(indexSliderProvider);
          break;
        case SettingMode.areaAll:
          if (isActive == true) {
            modifiedSetting.isAreaAllActive = isActive;
            modifiedSetting.isAreaTopActive = isActive;
            modifiedSetting.isAreaMidActive = isActive;
            modifiedSetting.isAreaBotActive = isActive;
          } else {
            modifiedSetting.isAreaAllActive = false;
            modifiedSetting.isAreaTopActive = true;
            modifiedSetting.isAreaMidActive = false;
            modifiedSetting.isAreaBotActive = false;
          }
          break;
        case SettingMode.areaTop:
          modifiedSetting.isAreaTopActive = isActive;
          if (isActive == false) {
            modifiedSetting.isAreaAllActive = false;
          } else {
            if (modifiedSetting.isAreaMidActive == true &&
                modifiedSetting.isAreaBotActive == true) {
              modifiedSetting.isAreaAllActive = true;
            }
          }
          break;
        case SettingMode.areaMid:
          modifiedSetting.isAreaMidActive = isActive;
          if (isActive == false) {
            modifiedSetting.isAreaAllActive = false;
          } else {
            if (modifiedSetting.isAreaTopActive == true &&
                modifiedSetting.isAreaBotActive == true) {
              modifiedSetting.isAreaAllActive = true;
            }
          }
          break;
        case SettingMode.areaBot:
          modifiedSetting.isAreaBotActive = isActive;
          if (isActive == false) {
            modifiedSetting.isAreaAllActive = false;
          } else {
            if (modifiedSetting.isAreaTopActive == true &&
                modifiedSetting.isAreaMidActive == true) {
              modifiedSetting.isAreaAllActive = true;
            }
          }
          break;
        case SettingMode.tabReadiness:
          modifiedSetting.isTabReadinessActive = isActive;
          if (isActive == true) {
            modifiedSetting.isTabProdActive = false;
            modifiedSetting.isTabRcaActive = false;
            modifiedSetting.isTabPerformanceActive = false;
          }
          break;
        case SettingMode.tabProd:
          modifiedSetting.isTabProdActive = isActive;
          if (isActive == true) {
            modifiedSetting.isTabReadinessActive = false;
            modifiedSetting.isTabRcaActive = false;
            modifiedSetting.isTabPerformanceActive = false;
          }
          break;
        case SettingMode.tabRca:
          modifiedSetting.isTabRcaActive = isActive;
          if (isActive == true) {
            modifiedSetting.isTabReadinessActive = false;
            modifiedSetting.isTabProdActive = false;
            modifiedSetting.isTabPerformanceActive = false;
          }
          break;
        default:
          modifiedSetting.isTabPerformanceActive = isActive;
          if (isActive == true) {
            modifiedSetting.isTabReadinessActive = false;
            modifiedSetting.isTabProdActive = false;
            modifiedSetting.isTabRcaActive = false;
          }
      }

      await isarInstance.settingModels.put(modifiedSetting);

      //Reset only necessary setting
      switch (settingMode) {
        case SettingMode.materialOb:
          ref.invalidate(getSettingLatestValueProvider(SettingMode.materialOb));
          ref.invalidate(getActiveSwitchersProvider(SwitcherMode.material));
          break;
        case SettingMode.materialCM:
          ref.invalidate(getSettingLatestValueProvider(SettingMode.materialCM));
          ref.invalidate(getActiveSwitchersProvider(SwitcherMode.material));
          break;
        case SettingMode.areaAll:
          ref.invalidate(getSettingLatestValueProvider(SettingMode.areaAll));
          ref.invalidate(getSettingLatestValueProvider(SettingMode.areaTop));
          ref.invalidate(getSettingLatestValueProvider(SettingMode.areaMid));
          ref.invalidate(getSettingLatestValueProvider(SettingMode.areaBot));
          ref.invalidate(getActiveSwitchersProvider(SwitcherMode.area));
          break;
        case SettingMode.areaTop:
          ref.invalidate(getSettingLatestValueProvider(SettingMode.areaAll));
          ref.invalidate(getSettingLatestValueProvider(SettingMode.areaTop));
          ref.invalidate(getActiveSwitchersProvider(SwitcherMode.area));
          break;
        case SettingMode.areaMid:
          ref.invalidate(getSettingLatestValueProvider(SettingMode.areaAll));
          ref.invalidate(getSettingLatestValueProvider(SettingMode.areaMid));
          ref.invalidate(getActiveSwitchersProvider(SwitcherMode.area));
          break;
        case SettingMode.areaBot:
          ref.invalidate(getSettingLatestValueProvider(SettingMode.areaAll));
          ref.invalidate(getSettingLatestValueProvider(SettingMode.areaBot));
          ref.invalidate(getActiveSwitchersProvider(SwitcherMode.area));
          break;
        case SettingMode.tabReadiness:
          ref.invalidate(
              getSettingLatestValueProvider(SettingMode.tabReadiness));
          ref.invalidate(getSettingLatestValueProvider(SettingMode.tabRca));
          ref.invalidate(getSettingLatestValueProvider(SettingMode.tabProd));
          ref.invalidate(
              getSettingLatestValueProvider(SettingMode.tabPerformance));
          ref.invalidate(getActiveSwitchersProvider(SwitcherMode.tab));
          break;
        case SettingMode.tabProd:
          ref.invalidate(
              getSettingLatestValueProvider(SettingMode.tabReadiness));
          ref.invalidate(getSettingLatestValueProvider(SettingMode.tabRca));
          ref.invalidate(getSettingLatestValueProvider(SettingMode.tabProd));
          ref.invalidate(
              getSettingLatestValueProvider(SettingMode.tabPerformance));
          ref.invalidate(getActiveSwitchersProvider(SwitcherMode.tab));
          break;
        case SettingMode.tabRca:
          ref.invalidate(
              getSettingLatestValueProvider(SettingMode.tabReadiness));
          ref.invalidate(getSettingLatestValueProvider(SettingMode.tabRca));
          ref.invalidate(getSettingLatestValueProvider(SettingMode.tabProd));
          ref.invalidate(
              getSettingLatestValueProvider(SettingMode.tabPerformance));
          ref.invalidate(getActiveSwitchersProvider(SwitcherMode.tab));
          break;
        default:
          ref.invalidate(
              getSettingLatestValueProvider(SettingMode.tabReadiness));
          ref.invalidate(getSettingLatestValueProvider(SettingMode.tabRca));
          ref.invalidate(getSettingLatestValueProvider(SettingMode.tabProd));
          ref.invalidate(
              getSettingLatestValueProvider(SettingMode.tabPerformance));
          ref.invalidate(getActiveSwitchersProvider(SwitcherMode.tab));
      }
    });
  }

  Future<bool> getSettingLatestValue(SettingMode settingMode) async {
    final isarInstance = await ref.watch(isarInstanceProvider.future);

    final existingSetting = await isarInstance.settingModels.get(1);

    bool isActive;
    switch (settingMode) {
      case SettingMode.materialOb:
        isActive = existingSetting?.isMaterialObActive ?? false;
        break;
      case SettingMode.materialCM:
        isActive = existingSetting?.isMaterialCmActive ?? false;
        break;
      case SettingMode.areaAll:
        isActive = existingSetting?.isAreaAllActive ?? false;
        break;
      case SettingMode.areaTop:
        isActive = existingSetting?.isAreaTopActive ?? false;
        break;
      case SettingMode.areaMid:
        isActive = existingSetting?.isAreaMidActive ?? false;
        break;
      case SettingMode.areaBot:
        isActive = existingSetting?.isAreaBotActive ?? false;
        break;
      case SettingMode.tabReadiness:
        isActive = existingSetting?.isTabReadinessActive ?? false;
        break;
      case SettingMode.tabProd:
        isActive = existingSetting?.isTabProdActive ?? false;
        break;
      case SettingMode.tabRca:
        isActive = existingSetting?.isTabRcaActive ?? false;
        break;
      case SettingMode.tabPerformance:
        isActive = existingSetting?.isTabPerformanceActive ?? false;
        break;
      default:
        isActive = existingSetting?.isTabPerformanceActive ?? false;
    }
    return isActive;
  }

  Future<List<String>> getActiveMaterials() async {
    final isarInstance = await ref.watch(isarInstanceProvider.future);
    final existingSetting = await isarInstance.settingModels.get(1);

    final List<String> getActiveMaterials = [];
    if (existingSetting?.isMaterialObActive == true) {
      getActiveMaterials.add(Constant.ob);
    }
    if (existingSetting?.isMaterialCmActive == true) {
      getActiveMaterials.add(Constant.cm);
    }
    return getActiveMaterials;
  }

  Future<List<String>> getActiveAreas() async {
    final isarInstance = await ref.watch(isarInstanceProvider.future);
    final existingSetting = await isarInstance.settingModels.get(1);

    final List<String> getActiveAreas = [];
    if (existingSetting?.isAreaAllActive == true) {
      getActiveAreas.add(Constant.all);
    }
    if (existingSetting?.isAreaTopActive == true) {
      getActiveAreas.add(Constant.top);
    }
    if (existingSetting?.isAreaMidActive == true) {
      getActiveAreas.add(Constant.middle);
    }
    if (existingSetting?.isAreaBotActive == true) {
      getActiveAreas.add(Constant.bottom);
    }
    return getActiveAreas;
  }

  Future<List<String>> getActiveTabs() async {
    final isarInstance = await ref.watch(isarInstanceProvider.future);
    final existingSetting = await isarInstance.settingModels.get(1);

    final isAbleAccessReadiness = ref.watch(isAbleAccessTabReadinessProvider);
    final isAbleAccessProd = ref.watch(isAbleAccessTabProdProvider);
    final isAbleAccessRca = ref.watch(isAbleAccessTabRcaProvider);

    final List<String> getActiveTabs = [];
    if (existingSetting?.isTabReadinessActive == true ||
        isAbleAccessReadiness) {
      getActiveTabs.add(Constant.readiness);
    }
    if (existingSetting?.isTabProdActive == true || isAbleAccessProd) {
      getActiveTabs.add(Constant.production);
    }
    if (existingSetting?.isTabRcaActive == true || isAbleAccessRca) {
      getActiveTabs.add(Constant.rca);
    }
    if (existingSetting?.isTabPerformanceActive == true) {
      getActiveTabs.add(Constant.performance);
    }
    return getActiveTabs;
  }

  Future<bool> setDefaultInitValue() async {
    final isarInstance = await ref.watch(isarInstanceProvider.future);
    isarInstance.writeTxn(() async {
      final firstRow = await isarInstance.settingModels.get(1);

      final isAbleAccessReadiness = ref.watch(isAbleAccessTabReadinessProvider);
      final isAbleAccessProd = ref.watch(isAbleAccessTabProdProvider);
      final isAbleAccessRca = ref.watch(isAbleAccessTabRcaProvider);
      final isAbleAccessPerformance =
          ref.watch(isAbleAccessTabPerformanceProvider);

      if (firstRow == null) {
        log('=== FIRST INIT DEFAULT DB ===');
        SettingModel modifiedSetting = SettingModel();
        modifiedSetting.id = 1;
        modifiedSetting.isAreaAllActive = true;
        modifiedSetting.isAreaTopActive = true;
        modifiedSetting.isAreaMidActive = true;
        modifiedSetting.isAreaBotActive = true;

        if (isAbleAccessReadiness) {
          modifiedSetting.isTabReadinessActive = true;
        }
        if (!isAbleAccessReadiness && isAbleAccessProd) {
          modifiedSetting.isTabProdActive = true;
        }
        if (!isAbleAccessReadiness && !isAbleAccessProd && isAbleAccessRca) {
          modifiedSetting.isTabRcaActive = true;
        }
        if (!isAbleAccessReadiness &&
            !isAbleAccessProd &&
            !isAbleAccessRca &&
            isAbleAccessPerformance) {
          modifiedSetting.isTabPerformanceActive = true;
        }

        modifiedSetting.isMaterialObActive = true;
        modifiedSetting.isMaterialCmActive = true;
        await isarInstance.settingModels.put(modifiedSetting);

        ref.invalidate(getSettingLatestValueProvider);
        ref.invalidate(getActiveSwitchersProvider);
      } else {
        final isPinnedTabConflict =
            await ref.watch(isPinnedTabConflictProvider.future);

        // if (isPinnedTabConflict) {
        //   final listAvailableTabs = ref.watch(listAvailableTabsProvider);
        //   try {
        //     final firstTab = listAvailableTabs.first;
        //
        //     switch (firstTab) {
        //       case Constant.readiness:
        //         firstRow.isTabReadinessActive = true;
        //         firstRow.isTabProdActive = false;
        //         firstRow.isTabRcaActive = false;
        //         firstRow.isTabPerformanceActive = false;
        //         break;
        //       case Constant.production:
        //         firstRow.isTabReadinessActive = false;
        //         firstRow.isTabProdActive = true;
        //         firstRow.isTabRcaActive = false;
        //         firstRow.isTabPerformanceActive = false;
        //         break;
        //       case Constant.rca:
        //         firstRow.isTabReadinessActive = false;
        //         firstRow.isTabProdActive = false;
        //         firstRow.isTabRcaActive = true;
        //         firstRow.isTabPerformanceActive = false;
        //         break;
        //       default:
        //         firstRow.isTabReadinessActive = false;
        //         firstRow.isTabProdActive = false;
        //         firstRow.isTabRcaActive = false;
        //         firstRow.isTabPerformanceActive = true;
        //         break;
        //     }
        //
        //     await isarInstance.settingModels.put(firstRow);
        //
        //     ref.invalidate(
        //         getSettingLatestValueProvider(SettingMode.tabReadiness));
        //     ref.invalidate(getSettingLatestValueProvider(SettingMode.tabRca));
        //     ref.invalidate(getSettingLatestValueProvider(SettingMode.tabProd));
        //     ref.invalidate(
        //         getSettingLatestValueProvider(SettingMode.tabPerformance));
        //     ref.invalidate(getActiveSwitchersProvider(SwitcherModeEtamkawa.tab));
        //   } catch (e) {
        //     log('no live tabs available : $e');
        //   }
        // }
      }
    });

    return false;
  }
}

@riverpod
Future<bool> isPinnedTabConflict(IsPinnedTabConflictRef ref) async {
  final isAbleAccessReadiness = ref.watch(isAbleAccessTabReadinessProvider);
  final isAbleAccessProd = ref.watch(isAbleAccessTabProdProvider);
  final isAbleAccessRca = ref.watch(isAbleAccessTabRcaProvider);
  final isAbleAccessPerformance = ref.watch(isAbleAccessTabPerformanceProvider);

  final pinnedTabs =
      await ref.watch(getActiveSwitchersProvider(SwitcherMode.tab).future);

  final pinnedTab = pinnedTabs.first;

  return (pinnedTab == Constant.readiness && !isAbleAccessReadiness) ||
      (pinnedTab == Constant.production && !isAbleAccessProd) ||
      (pinnedTab == Constant.rca && !isAbleAccessRca) ||
      (pinnedTab == Constant.performance && !isAbleAccessPerformance);
}

@riverpod
Future<bool> getSettingLatestValue(
    GetSettingLatestValueRef ref, SettingMode settingMode) async {
  final settingController = ref.watch(settingControllerProvider.notifier);
  return settingController.getSettingLatestValue(settingMode);
}

@riverpod
Future<List<String>> getActiveSwitchers(
    GetActiveSwitchersRef ref, SwitcherMode switcherMode) async {
  final settingController = ref.watch(settingControllerProvider.notifier);
  List<String> val = [];

  switch (switcherMode) {
    case SwitcherMode.material:
      val = await settingController.getActiveMaterials();
      break;
    case SwitcherMode.area:
      val = await settingController.getActiveAreas();
      break;
    default:
      val = await settingController.getActiveTabs();
  }
  return val;
}

final indexSliderProvider = StateProvider.autoDispose<int>((ref) => 0);
