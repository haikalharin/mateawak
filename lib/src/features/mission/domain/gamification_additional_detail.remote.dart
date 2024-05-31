// To parse this JSON data, do
//
//     final gamificationAdditionalDetailRemote = gamificationAdditionalDetailRemoteFromJson(jsonString);

import 'dart:convert';

import 'package:isar/isar.dart';

part 'gamification_additional_detail.remote.g.dart';

GamificationAdditionalDetailRemote gamificationAdditionalDetailRemoteFromJson(
        String str) =>
    GamificationAdditionalDetailRemote.fromJson(json.decode(str));

String gamificationAdditionalDetailRemoteToJson(
        GamificationAdditionalDetailRemote data) =>
    json.encode(data.toJson());

@collection
class GamificationAdditionalDetailRemote {
  Id id;
  String? latestSyncDate;
  String? latestSyncDateValidation;

  GamificationAdditionalDetailRemote({
    required this.id,
    this.latestSyncDate,
    this.latestSyncDateValidation,
  });

  GamificationAdditionalDetailRemote copyWith({
    required int id,
    String? latestSyncDate,
    String? latestSyncDateValidation
  }) =>
      GamificationAdditionalDetailRemote(
        id: id,
        latestSyncDate: latestSyncDate ?? this.latestSyncDate,
        latestSyncDateValidation: latestSyncDateValidation ?? this.latestSyncDateValidation,
      );

  factory GamificationAdditionalDetailRemote.fromJson(
          Map<String, dynamic> json) =>
      GamificationAdditionalDetailRemote(
        id: json["id"],
        latestSyncDate: json["latestSyncDate"],
        latestSyncDateValidation: json["latestSyncDateValidation"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "latestSyncDate": latestSyncDate,
        "latestSyncDateValidation": latestSyncDateValidation,
      };
}
