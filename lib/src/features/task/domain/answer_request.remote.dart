// To parse this JSON data, do
//
//     final answerRequestRemote = answerRequestRemoteFromJson(jsonString);

import 'dart:convert';

import 'package:isar/isar.dart';

part 'answer_request.remote.g.dart';

AnswerRequestRemote answerRequestRemoteFromJson(String str) => AnswerRequestRemote.fromJson(json.decode(str));

String answerRequestRemoteToJson(AnswerRequestRemote data) => json.encode(data.toJson());

@collection
class AnswerRequestRemote {
  Id? employeeMissionId;
  String? employeeName;
  String? submittedDate;
  int? status;
  List<TaskDatumAnswer>? taskData;

  AnswerRequestRemote({
    this.employeeMissionId,
    this.employeeName,
    this.submittedDate,
    this.status,
    this.taskData,
  });

  AnswerRequestRemote copyWith({
    Id? employeeMissionId,
    String? employeeName,
    String? submittedDate,
    int? status,
    List<TaskDatumAnswer>? taskData,
  }) =>
      AnswerRequestRemote(
        employeeMissionId: employeeMissionId ?? this.employeeMissionId,
        employeeName: employeeName ?? this.employeeName,
        submittedDate: submittedDate ?? this.submittedDate,
        status: status ?? this.status,
        taskData: taskData ?? this.taskData,
      );

  factory AnswerRequestRemote.fromJson(Map<String, dynamic> json) => AnswerRequestRemote(
    employeeMissionId: json["employeeMissionId"],
    employeeName: json["employeeName"],
    submittedDate: json["submittedDate"],
    status: json["status"],
    taskData: json["taskData"] == null ? [] : List<TaskDatumAnswer>.from(json["taskData"]!.map((x) => TaskDatumAnswer.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "employeeMissionId": employeeMissionId,
    "employeeName": employeeName,
    "submittedDate": submittedDate,
    "status": status,
    "taskData": taskData == null ? [] : List<dynamic>.from(taskData!.map((x) => x.toJson())),
  };
}
@embedded
class TaskDatumAnswer {
  int? taskId;
  int? missionId;
  String? answer;
  String? attachment;
  String? attachmentName;
  int? attachmentId;
  String? taskGroup;

  TaskDatumAnswer({
    this.taskId,
    this.missionId,
    this.answer,
    this.attachment,
    this.attachmentName,
    this.attachmentId,
    this.taskGroup,
  });

  TaskDatumAnswer copyWith({
    int? taskId,
    int?  missionId,
    String? answer,
    String? attachment,
    String? attachmentName,
    int? attachmentId,
    String? taskGroup
  }) =>
      TaskDatumAnswer(
        taskId: taskId ?? this.taskId,
        missionId: missionId ?? this.missionId,
        answer: answer ?? this.answer,
        attachmentName: attachmentName ?? this.attachmentName,
        attachment: attachment ?? this.attachment,
        attachmentId: attachmentId ?? this.attachmentId,
        taskGroup: taskGroup ?? this.taskGroup,
      );

  factory TaskDatumAnswer.fromJson(Map<String, dynamic> json) => TaskDatumAnswer(
    taskId: json["taskId"],
    missionId: json["missionId"],
    answer: json["answer"],
    attachmentId: json["attachmentId"],
    taskGroup: json["taskGroup"],
  );

  Map<String, dynamic> toJson() => {
    "taskId": taskId,
    "missionId": missionId,
    "answer": answer,
    "attachmentId": attachmentId,
    "taskGroup": taskGroup,
  };
}
