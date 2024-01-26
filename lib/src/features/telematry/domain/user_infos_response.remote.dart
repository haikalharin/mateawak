import 'package:isar/isar.dart';

part 'user_infos_response.remote.g.dart';

@collection
class UserInfosResponseRemote {
  Id id = Isar.autoIncrement;
  int? siteId;
  int? roleId;
  int? flagTelemetry;
  List<RoleAccess>? roleAccess;

  UserInfosResponseRemote(
      {this.siteId, this.roleId, this.flagTelemetry, this.roleAccess});

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
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['siteId'] = siteId;
    data['roleId'] = roleId;
    data['flagTelemetry'] = flagTelemetry;
    if (roleAccess != null) {
      data['roleAccess'] = roleAccess!.map((v) => v.toJson()).toList();
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
