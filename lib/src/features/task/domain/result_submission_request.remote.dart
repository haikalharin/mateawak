// To parse this JSON data, do
//
//     final answerRequestRemote = answerRequestRemoteFromJson(jsonString);

import 'dart:convert';

import 'package:isar/isar.dart';

part 'result_submission_request.remote.g.dart';

ResultSubmissionRequestRemote resultSubmissionRequestRemoteFromJson(String str) => ResultSubmissionRequestRemote.fromJson(json.decode(str));

String resultSubmissionRequestRemoteToJson(ResultSubmissionRequestRemote data) => json.encode(data.toJson());

@collection
class ResultSubmissionRequestRemote {
  Id? employeeMissionId;
  String? competencyName;
  int? rewardGained;
  int? accuracy;

  ResultSubmissionRequestRemote({
    this.employeeMissionId,
    this.competencyName,
    this.rewardGained,
    this.accuracy,
  });

  ResultSubmissionRequestRemote copyWith({
    Id? employeeMissionId,
    String? competencyName,
    int? rewardGained,
    int? accuracy,
  }) =>
      ResultSubmissionRequestRemote(
        employeeMissionId: employeeMissionId ?? this.employeeMissionId,
        competencyName: competencyName ?? this.competencyName,
        rewardGained: rewardGained ?? this.rewardGained,
        accuracy: accuracy ?? this.accuracy,
      );

  factory ResultSubmissionRequestRemote.fromJson(Map<String, dynamic> json) => ResultSubmissionRequestRemote(
    employeeMissionId: json["employeeMissionId"],
    competencyName: json["competencyName"],
    rewardGained: json["rewardGained"],
    accuracy: json["accuracy"],
  );

  Map<String, dynamic> toJson() => {
    "employeeMissionId": employeeMissionId,
    "competencyName": competencyName,
    "rewardGained": rewardGained,
    "accuracy": accuracy,
  };
}
