// To parse this JSON data, do
//
//     final gamificationAdditionalDetailRemote = gamificationAdditionalDetailRemoteFromJson(jsonString);

import 'dart:convert';

import 'package:isar/isar.dart';

part 'gamification_additional_detail.remote.g.dart';

GamificationAdditionalDetailRemote gamificationAdditionalDetailRemoteFromJson(String str) => GamificationAdditionalDetailRemote.fromJson(json.decode(str));

String gamificationAdditionalDetailRemoteToJson(GamificationAdditionalDetailRemote data) => json.encode(data.toJson());

@collection
class GamificationAdditionalDetailRemote {
    Id id = Isar.autoIncrement;
    String? latestSyncDate;

    GamificationAdditionalDetailRemote({
        this.latestSyncDate,
    });

    GamificationAdditionalDetailRemote copyWith({
        String? latestSyncDate,
    }) => 
        GamificationAdditionalDetailRemote(
            latestSyncDate: latestSyncDate ?? this.latestSyncDate,
        );

    factory GamificationAdditionalDetailRemote.fromJson(Map<String, dynamic> json) => GamificationAdditionalDetailRemote(
        latestSyncDate: json["latestSyncDate"],
    );

    Map<String, dynamic> toJson() => {
        "latestSyncDate": latestSyncDate,
    };
}
