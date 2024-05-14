// To parse this JSON data, do
//
//     final validateRequestRemote = validateRequestRemoteFromJson(jsonString);

import 'dart:convert';

import 'package:isar/isar.dart';

part 'validate_request.remote.g.dart';

ValidateRequestRemote validateRequestRemoteFromJson(String str) =>
    ValidateRequestRemote.fromJson(json.decode(str));

String validateRequestRemoteToJson(ValidateRequestRemote data) =>
    json.encode(data.toJson());

@collection
class ValidateRequestRemote {
  Id? employeeMissionId;
  String? validationDate;
  int? taskId;
  int? qualitativeScore;
  String? comment;

  ValidateRequestRemote({
    this.employeeMissionId,
    this.validationDate,
    this.taskId,
    this.qualitativeScore,
    this.comment,
  });

  ValidateRequestRemote copyWith({
    Id? employeeMissionId,
    String? validationDate,
    int? taskId,
    int? qualitativeScore,
    String? comment,
  }) =>
      ValidateRequestRemote(
        employeeMissionId: employeeMissionId ?? this.employeeMissionId,
        validationDate: validationDate ?? this.validationDate,
        taskId: taskId ?? this.taskId,
        qualitativeScore: qualitativeScore ?? this.qualitativeScore,
        comment: comment ?? this.comment,
      );

  factory ValidateRequestRemote.fromJson(Map<String, dynamic> json) =>
      ValidateRequestRemote(
          employeeMissionId: json["employeeMissionId"],
          validationDate: json["validationDate"],
          taskId: json["taskId"],
          qualitativeScore: json["qualitativeScore"],
          comment: json["comment"]);

  Map<String, dynamic> toJson() => {
        "employeeMissionId": employeeMissionId,
        "validationDate": validationDate,
        "taskId": taskId,
        "qualitativeScore": qualitativeScore,
        "comment": comment,
      };
}
