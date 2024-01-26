import 'package:isar/isar.dart';
part 'setting.model.g.dart';

enum SettingMode {
  materialOb,
  materialCM,
  areaAll,
  areaTop,
  areaMid,
  areaBot,
  tabReadiness,
  tabProd,
  tabRca,
  tabPerformance,
}

enum SwitcherMode { material, area, tab }

@collection
class SettingModel {
  Id id = Isar.autoIncrement;
  //tampilan material
  bool? isMaterialObActive;
  bool? isMaterialCmActive;

  //tampilan area
  bool? isAreaAllActive;
  bool? isAreaTopActive;
  bool? isAreaMidActive;
  bool? isAreaBotActive;

  //Pin tampilan tab
  bool? isTabReadinessActive;
  bool? isTabProdActive;
  bool? isTabRcaActive;
  bool? isTabPerformanceActive;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['isMaterialObActive'] = isMaterialObActive;
    data['isMaterialCmActive'] = isMaterialCmActive;
    data['isAreaAllActive'] = isAreaAllActive;
    data['isAreaTopActive'] = isAreaTopActive;
    data['isAreaMidActive'] = isAreaMidActive;
    data['isAreaBotActive'] = isAreaBotActive;
    data['isTabReadinessActive'] = isTabReadinessActive;
    data['isTabProdActive'] = isTabProdActive;
    data['isTabRcaActive'] = isTabRcaActive;
    data['isTabPerformanceActive'] = isTabPerformanceActive;
    return data;
  }
}
