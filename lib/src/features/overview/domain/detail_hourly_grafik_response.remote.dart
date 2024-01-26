import 'package:isar/isar.dart';
part 'detail_hourly_grafik_response.remote.g.dart';

@collection
class DetailHourlyGrafikResponseRemote {
  Id id = Isar.autoIncrement;
  bool? _isOb;
  String? _hourFrom;
  String? _hourTo;
  double? _hourlyAchievementActual;
  double? _hourlyAchievementPlan;
  String? _subLocation;

  DetailHourlyGrafikResponseRemote(
      {bool? isOb,
      String? hourFrom,
      String? hourTo,
      double? hourlyAchievementActual,
      double? hourlyAchievementPlan,
      String? subLocation}) {
    if (isOb != null) {
      _isOb = isOb;
    }
    if (hourFrom != null) {
      _hourFrom = hourFrom;
    }
    if (hourTo != null) {
      _hourTo = hourTo;
    }
    if (hourlyAchievementActual != null) {
      _hourlyAchievementActual = hourlyAchievementActual;
    }
    if (hourlyAchievementPlan != null) {
      _hourlyAchievementPlan = hourlyAchievementPlan;
    }
    if (subLocation != null) {
      _subLocation = subLocation;
    }
  }

  bool? get isOb => _isOb;
  set isOb(bool? isOb) => _isOb = isOb;
  String? get hourFrom => _hourFrom;
  set hourFrom(String? hourFrom) => _hourFrom = hourFrom;
  String? get hourTo => _hourTo;
  set hourTo(String? hourTo) => _hourTo = hourTo;
  double? get hourlyAchievementActual => _hourlyAchievementActual;
  set hourlyAchievementActual(double? hourlyAchievementActual) =>
      _hourlyAchievementActual = hourlyAchievementActual;
  double? get hourlyAchievementPlan => _hourlyAchievementPlan;
  set hourlyAchievementPlan(double? hourlyAchievementPlan) =>
      _hourlyAchievementPlan = hourlyAchievementPlan;
  String? get subLocation => _subLocation;
  set subLocation(String? subLocation) => _subLocation = subLocation;

  DetailHourlyGrafikResponseRemote.fromJson(Map<String, dynamic> json) {
    _hourFrom = json['hourFrom'];
    _hourTo = json['hourTo'];
    _hourlyAchievementActual = json['hourlyAchievementActual'].toDouble();
    _hourlyAchievementPlan = json['hourlyAchievementPlan'].toDouble();
    _subLocation = json['subLocation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['hourFrom'] = _hourFrom;
    data['hourTo'] = _hourTo;
    data['hourlyAchievementActual'] = _hourlyAchievementActual;
    data['hourlyAchievementPlan'] = _hourlyAchievementPlan;
    data['subLocation'] = _subLocation;
    return data;
  }
}
