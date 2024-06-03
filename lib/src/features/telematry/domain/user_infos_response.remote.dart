import 'package:isar/isar.dart';

part 'user_infos_response.remote.g.dart';

@collection
class UserInfosResponseRemote {
  Id id = Isar.autoIncrement;
  int? siteId;
  int? roleId;
  int? flagTelemetry;
  List<RoleAccess>? roleAccess;
  List<SiteAccess>? siteAccess;

  UserInfosResponseRemote(
      {this.siteId,
      this.roleId,
      this.flagTelemetry,
      this.roleAccess,
      this.siteAccess});

  UserInfosResponseRemote.fromJson(Map<String, dynamic> json) {
    siteId = json['siteId'];
    roleId = json['roleId'];
    flagTelemetry = json['flagTelemetry'];

    if (json['roleAccess'] != null) {
      roleAccess = <RoleAccess>[];
      json['roleAccess'].forEach((v) {
        roleAccess!.add(RoleAccess.fromJson(v));
      });
    }
    if (json['siteAccess'] != null) {
      siteAccess = <SiteAccess>[];
      json['siteAccess'].forEach((v) {
        siteAccess!.add(SiteAccess.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['siteId'] = siteId;
    data['roleId'] = roleId;
    data['flagTelemetry'] = flagTelemetry;
    if (roleAccess != null) {
      data['roleAccess'] = roleAccess!.map((v) => v.toJson()).toList();
    }
    if (siteAccess != null) {
      data['siteAccess'] = siteAccess!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

@embedded
class RoleAccess {
  int? moduleId;
  String? moduleName;
  int? tabId;
  String? tabName;
  int? actionId;
  String? actionName;
  int? isAuthorized;

  RoleAccess(
      {this.moduleId,
      this.moduleName,
      this.tabId,
      this.tabName,
      this.actionId,
      this.actionName,
      this.isAuthorized});

  RoleAccess.fromJson(Map<String, dynamic> json) {
    moduleId = json['moduleId'];
    moduleName = json['moduleName'];
    tabId = json['tabId'];
    tabName = json['tabName'];
    actionId = json['actionId'];
    actionName = json['actionName'];
    isAuthorized = json['isAuthorized'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['moduleId'] = moduleId;
    data['moduleName'] = moduleName;
    data['tabId'] = tabId;
    data['tabName'] = tabName;
    data['actionId'] = actionId;
    data['actionName'] = actionName;
    data['isAuthorized'] = isAuthorized;
    return data;
  }
}

@embedded
class SiteAccess {
  int? siteId;
  String? siteCode;
  String? xAxis;
  String? urlLogo;
  List<AreaAccess>? areaAccess;
  bool? isSelected;

  SiteAccess(
      {this.siteId,
      this.siteCode,
      this.xAxis,
      this.urlLogo,
      this.areaAccess,
      this.isSelected});

  SiteAccess.fromJson(Map<String, dynamic> json) {
    siteId = json['siteId'];
    siteCode = json['siteCode'];
    xAxis = json['xAxis'];
    urlLogo = json['urlLogo'];

    if (json['areaAccess'] != null) {
      areaAccess = <AreaAccess>[];
      json['areaAccess'].forEach((v) {
        areaAccess!.add(AreaAccess.fromJson(v));
      });
    }

    isSelected = json['isSelected'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['siteId'] = siteId;
    data['siteCode'] = siteCode;
    data['xAxis'] = xAxis;
    data['urlLogo'] = urlLogo;

    if (areaAccess != null) {
      data['areaAccess'] = areaAccess!.map((v) => v.toJson()).toList();
    }

    data['isSelected'] = isSelected;
    return data;
  }
}

@embedded
class AreaAccess {
  String? code;
  String? name;
  bool? value;

  AreaAccess({this.code, this.name, this.value});

  AreaAccess.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
    value = true;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['name'] = name;
    data['value'] = value;
    return data;
  }
}
