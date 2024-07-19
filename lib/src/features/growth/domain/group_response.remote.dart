// To parse this JSON data, do
//
//     final groupResponseRemote = groupResponseRemoteFromJson(jsonString);

import 'dart:convert';

import 'package:isar/isar.dart';

part 'group_response.remote.g.dart';

List<GroupResponseRemote> groupResponseRemoteFromJson(String str) => List<GroupResponseRemote>.from(json.decode(str).map((x) => GroupResponseRemote.fromJson(x)));

String groupResponseRemoteToJson(List<GroupResponseRemote> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@collection
class GroupResponseRemote {
    Id? groupId;
    String? groupName;
    List<MissionFilterDatum>? missionData;

    GroupResponseRemote({
        this.groupId,
        this.groupName,
        this.missionData,
    });

    GroupResponseRemote copyWith({
        Id? groupId,
        String? groupName,
        List<MissionFilterDatum>? missionData,
    }) => 
        GroupResponseRemote(
            groupId: groupId ?? this.groupId,
            groupName: groupName ?? this.groupName,
            missionData: missionData ?? this.missionData,
        );

    factory GroupResponseRemote.fromJson(Map<String, dynamic> json) => GroupResponseRemote(
        groupId: json["groupId"],
        groupName: json["groupName"],
        missionData: json["missionData"] == null ? [] : List<MissionFilterDatum>.from(json["missionData"]!.map((x) => MissionFilterDatum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "groupId": groupId,
        "groupName": groupName,
        "missionData": missionData == null ? [] : List<dynamic>.from(missionData!.map((x) => x.toJson())),
    };
}

@embedded
class MissionFilterDatum {
    int? missionId;
    String? missionName;
    String? profileName;

    MissionFilterDatum({
        this.missionId,
        this.missionName,
        this.profileName,
    });

    MissionFilterDatum copyWith({
        int? missionId,
        String? missionName,
        String? profileName,
    }) => 
        MissionFilterDatum(
            missionId: missionId ?? this.missionId,
            missionName: missionName ?? this.missionName,
            profileName: profileName ?? this.profileName,
        );

    factory MissionFilterDatum.fromJson(Map<String, dynamic> json) => MissionFilterDatum(
        missionId: json["missionId"],
        missionName: json["missionName"],
        profileName: json["profileName"],
    );

    Map<String, dynamic> toJson() => {
        "missionId": missionId,
        "missionName": missionName,
        "profileName": profileName,
    };
}
