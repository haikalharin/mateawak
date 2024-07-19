// To parse this JSON data, do
//
//     final growthAdditionalDetailRemote = growthAdditionalDetailRemoteFromJson(jsonString);

import 'dart:convert';

import 'package:isar/isar.dart';

part 'growth_additional_detail.remote.g.dart';

GrowthAdditionalDetailRemote growthAdditionalDetailRemoteFromJson(
        String str) =>
    GrowthAdditionalDetailRemote.fromJson(json.decode(str));

String growthAdditionalDetailRemoteToJson(
        GrowthAdditionalDetailRemote data) =>
    json.encode(data.toJson());

@collection
class GrowthAdditionalDetailRemote {
  Id id;
  String? latestSyncDateTeam;
  String? latestSyncDateLeaderboard;

  GrowthAdditionalDetailRemote({
    required this.id,
    this.latestSyncDateTeam,
    this.latestSyncDateLeaderboard,
  });

  GrowthAdditionalDetailRemote copyWith({
    required int id,
    String? latestSyncDateTeam,
    String? latestSyncDateLeaderboard
  }) =>
      GrowthAdditionalDetailRemote(
        id: id,
        latestSyncDateTeam: latestSyncDateTeam ?? this.latestSyncDateTeam,
        latestSyncDateLeaderboard: latestSyncDateLeaderboard ?? this.latestSyncDateLeaderboard,
      );

  factory GrowthAdditionalDetailRemote.fromJson(
          Map<String, dynamic> json) =>
      GrowthAdditionalDetailRemote(
        id: json["id"],
        latestSyncDateTeam: json["latestSyncDateTeam"],
        latestSyncDateLeaderboard: json["latestSyncDateLeaderboard"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "latestSyncDateTeam": latestSyncDateTeam,
        "latestSyncDateLeaderboard": latestSyncDateLeaderboard,
      };
}
