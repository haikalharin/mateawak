// To parse this JSON data, do
//
//     final gamificationResponseRemote = gamificationResponseRemoteFromJson(jsonString);

import 'dart:convert';

import 'package:isar/isar.dart';
GamificationResponseRemote gamificationResponseRemoteFromJson(String str) => GamificationResponseRemote.fromJson(json.decode(str));

String gamificationResponseRemoteToJson(GamificationResponseRemote data) => json.encode(data.toJson());
@collection
class GamificationResponseRemote {
  String? groupId;
  String? missionId;
  String? teamId;
  String? teamName;
  String? teamBackgroundImageUrl;
  String? teamProfileImageUrl;
  String? area;
  String? subArea;
  String? section;
  int? rankId;
  String? rankName;
  int? classId;
  String? className;
  double? achievement;
  String? lastUpdatedDate;

  GamificationResponseRemote({
    this.groupId,
    this.missionId,
    this.teamId,
    this.teamName,
    this.teamBackgroundImageUrl,
    this.teamProfileImageUrl,
    this.area,
    this.subArea,
    this.section,
    this.rankId,
    this.rankName,
    this.classId,
    this.className,
    this.achievement,
    this.lastUpdatedDate,
  });

  GamificationResponseRemote copyWith({
    String? groupId,
    String? missionId,
    String? teamId,
    String? teamName,
    String? teamBackgroundImageUrl,
    String? teamProfileImageUrl,
    String? area,
    String? subArea,
    String? section,
    int? rankId,
    String? rankName,
    int? classId,
    String? className,
    double? achievement,
    String? lastUpdatedDate,
  }) =>
      GamificationResponseRemote(
        groupId: groupId ?? this.groupId,
        missionId: missionId ?? this.missionId,
        teamId: teamId ?? this.teamId,
        teamName: teamName ?? this.teamName,
        teamBackgroundImageUrl: teamBackgroundImageUrl ?? this.teamBackgroundImageUrl,
        teamProfileImageUrl: teamProfileImageUrl ?? this.teamProfileImageUrl,
        area: area ?? this.area,
        subArea: subArea ?? this.subArea,
        section: section ?? this.section,
        rankId: rankId ?? this.rankId,
        rankName: rankName ?? this.rankName,
        classId: classId ?? this.classId,
        className: className ?? this.className,
        achievement: achievement ?? this.achievement,
        lastUpdatedDate: lastUpdatedDate ?? this.lastUpdatedDate,
      );

  factory GamificationResponseRemote.fromJson(Map<String, dynamic> json) => GamificationResponseRemote(
    groupId: json["groupId"],
    missionId: json["missionId"],
    teamId: json["teamId"],
    teamName: json["teamName"],
    teamBackgroundImageUrl: json["teamBackgroundImageUrl"],
    teamProfileImageUrl: json["teamProfileImageUrl"],
    area: json["area"],
    subArea: json["subArea"],
    section: json["section"],
    rankId: json["rankId"],
    rankName: json["rankName"],
    classId: json["classId"],
    className: json["className"],
    achievement: json["achievement"]?.toDouble(),
    lastUpdatedDate: json["lastUpdatedDate"],
  );

  Map<String, dynamic> toJson() => {
    "groupId": groupId,
    "missionId": missionId,
    "teamId": teamId,
    "teamName": teamName,
    "teamBackgroundImageUrl": teamBackgroundImageUrl,
    "teamProfileImageUrl": teamProfileImageUrl,
    "area": area,
    "subArea": subArea,
    "section": section,
    "rankId": rankId,
    "rankName": rankName,
    "classId": classId,
    "className": className,
    "achievement": achievement,
    "lastUpdatedDate": lastUpdatedDate,
  };
}
