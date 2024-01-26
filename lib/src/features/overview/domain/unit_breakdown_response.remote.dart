import 'package:isar/isar.dart';
part 'unit_breakdown_response.remote.g.dart';

@collection
class UnitBreakdownResponseRemote {
  Id id = Isar.autoIncrement;
  bool? _isOb;
  String? _groupUnit;
  String? _equipment;
  String? _operator;
  String? _operatorName;
  String? _bdReason;
  String? _breakdownLocation;
  double? _breakdownDuration;
  double? _durationRepairment;
  String? _loadDateTime;
  List<EventBreackDownTrackings>? _eventBreackDownTrackings;

  UnitBreakdownResponseRemote(
      {bool? isOb,
      String? groupUnit,
      String? equipment,
      String? operator,
      String? operatorName,
      String? bdReason,
      String? breakdownLocation,
      double? breakdownDuration,
      double? durationRepairment,
      String? loadDateTime,
      List<EventBreackDownTrackings>? eventBreackDownTrackings}) {
    if (isOb != null) {
      _isOb = isOb;
    }
    if (groupUnit != null) {
      _groupUnit = groupUnit;
    }
    if (equipment != null) {
      _equipment = equipment;
    }
    if (operator != null) {
      _operator = operator;
    }
    if (operatorName != null) {
      _operatorName = operatorName;
    }
    if (bdReason != null) {
      _bdReason = bdReason;
    }
    if (breakdownLocation != null) {
      _breakdownLocation = breakdownLocation;
    }
    if (breakdownDuration != null) {
      _breakdownDuration = breakdownDuration;
    }
    if (durationRepairment != null) {
      _durationRepairment = durationRepairment;
    }
    if (loadDateTime != null) {
      _loadDateTime = loadDateTime;
    }
    if (eventBreackDownTrackings != null) {
      _eventBreackDownTrackings = eventBreackDownTrackings;
    }
  }

  bool? get isOb => _isOb;
  set isOb(bool? isOb) => _isOb = isOb;
  String? get groupUnit => _groupUnit;
  set groupUnit(String? groupUnit) => _groupUnit = groupUnit;
  String? get equipment => _equipment;
  set equipment(String? equipment) => _equipment = equipment;
  String? get operator => _operator;
  set operator(String? operator) => _operator = operator;
  String? get operatorName => _operatorName;
  set operatorName(String? operatorName) => _operatorName = operatorName;
  String? get bdReason => _bdReason;
  set bdReason(String? bdReason) => _bdReason = bdReason;
  String? get breakdownLocation => _breakdownLocation;
  set breakdownLocation(String? breakdownLocation) =>
      _breakdownLocation = breakdownLocation;
  double? get breakdownDuration => _breakdownDuration;
  set breakdownDuration(double? breakdownDuration) =>
      _breakdownDuration = breakdownDuration;
  double? get durationRepairment => _durationRepairment;
  set durationRepairment(double? durationRepairment) =>
      _durationRepairment = durationRepairment;
  String? get loadDateTime => _loadDateTime;
  set loadDateTime(String? loadDateTime) => _loadDateTime = loadDateTime;
  List<EventBreackDownTrackings>? get eventBreackDownTrackings =>
      _eventBreackDownTrackings;
  set eventBreackDownTrackings(
          List<EventBreackDownTrackings>? eventBreackDownTrackings) =>
      _eventBreackDownTrackings = eventBreackDownTrackings;

  UnitBreakdownResponseRemote.fromJson(Map<String, dynamic> json) {
    _groupUnit = json['groupUnit'];
    _equipment = json['equipment'];
    _operator = json['operator'];
    _operatorName = json['operatorName'];
    _bdReason = json['bdReason'];
    _breakdownLocation = json['breakdownLocation'];
    _breakdownDuration = json['breakdownDuration'].toDouble();
    _durationRepairment = json['durationRepairment'].toDouble();
    _loadDateTime = json['loadDateTime'];
    if (json['eventBreackDownTrackings'] != null) {
      _eventBreackDownTrackings = <EventBreackDownTrackings>[];
      json['eventBreackDownTrackings'].forEach((v) {
        _eventBreackDownTrackings!.add(EventBreackDownTrackings.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['groupUnit'] = _groupUnit;
    data['equipment'] = _equipment;
    data['operator'] = _operator;
    data['operatorName'] = _operatorName;
    data['bdReason'] = _bdReason;
    data['breakdownLocation'] = _breakdownLocation;
    data['breakdownDuration'] = _breakdownDuration;
    data['durationRepairment'] = _durationRepairment;
    data['loadDateTime'] = _loadDateTime;
    if (_eventBreackDownTrackings != null) {
      data['eventBreackDownTrackings'] =
          _eventBreackDownTrackings!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

@embedded
class EventBreackDownTrackings {
  String? _rfuEstimation;
  String? _eventBreakdownTracking;
  String? _progressStart;

  EventBreackDownTrackings(
      {String? rfuEstimation,
      String? eventBreakdownTracking,
      String? progressStart}) {
    if (rfuEstimation != null) {
      _rfuEstimation = rfuEstimation;
    }
    if (eventBreakdownTracking != null) {
      _eventBreakdownTracking = eventBreakdownTracking;
    }
    if (progressStart != null) {
      _progressStart = progressStart;
    }
  }

  String? get rfuEstimation => _rfuEstimation;
  set rfuEstimation(String? rfuEstimation) => _rfuEstimation = rfuEstimation;
  String? get eventBreakdownTracking => _eventBreakdownTracking;
  set eventBreakdownTracking(String? eventBreakdownTracking) =>
      _eventBreakdownTracking = eventBreakdownTracking;
  String? get progressStart => _progressStart;
  set progressStart(String? progressStart) => _progressStart = progressStart;

  EventBreackDownTrackings.fromJson(Map<String, dynamic> json) {
    _rfuEstimation = json['rfuEstimation'];
    _eventBreakdownTracking = json['eventBreakdownTracking'];
    _progressStart = json['progressStart'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['rfuEstimation'] = _rfuEstimation;
    data['eventBreakdownTracking'] = _eventBreakdownTracking;
    data['progressStart'] = _progressStart;
    return data;
  }
}
