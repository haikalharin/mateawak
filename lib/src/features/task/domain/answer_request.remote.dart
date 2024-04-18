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
  String? submittedDate;
  int? status;
  List<TaskDatumAnswer>? taskData;

  AnswerRequestRemote({
    this.employeeMissionId,
    this.submittedDate,
    this.status,
    this.taskData,
  });

  AnswerRequestRemote copyWith({
    Id? employeeMissionId,
    String? submittedDate,
    int? status,
    List<TaskDatumAnswer>? taskData,
  }) =>
      AnswerRequestRemote(
        employeeMissionId: employeeMissionId ?? this.employeeMissionId,
        submittedDate: submittedDate ?? this.submittedDate,
        status: status ?? this.status,
        taskData: taskData ?? this.taskData,
      );

  factory AnswerRequestRemote.fromJson(Map<String, dynamic> json) => AnswerRequestRemote(
    employeeMissionId: json["employeeMissionId"],
    submittedDate: json["submittedDate"],
    status: json["status"],
    taskData: json["taskData"] == null ? [] : List<TaskDatumAnswer>.from(json["taskData"]!.map((x) => TaskDatumAnswer.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "employeeMissionId": employeeMissionId,
    "submittedDate": submittedDate,
    "status": status,
    "taskData": taskData == null ? [] : List<dynamic>.from(taskData!.map((x) => x.toJson())),
  };
}
@embedded
class TaskDatumAnswer {
  int? taskId;
  String? answer;
  String? attachment;
  String? attachmentName;
  int? attachmentId;

  TaskDatumAnswer({
    this.taskId,
    this.answer,
    this.attachment,
    this.attachmentName,
    this.attachmentId,
  });

  TaskDatumAnswer copyWith({
    int? taskId,
    String? answer,
    String? attachment,
    String? attachmentName,
    int? attachmentId,
  }) =>
      TaskDatumAnswer(
        taskId: taskId ?? this.taskId,
        answer: answer ?? this.answer,
        attachmentName: attachmentName ?? this.attachmentName,
        attachment: attachment ?? this.attachment,
        attachmentId: attachmentId ?? this.attachmentId,
      );

  factory TaskDatumAnswer.fromJson(Map<String, dynamic> json) => TaskDatumAnswer(
    taskId: json["taskId"],
    answer: json["answer"],
    attachmentId: json["attachmentId"],
  );

  Map<String, dynamic> toJson() => {
    "taskId": taskId,
    "answer": answer,
    "attachmentId": attachmentId,
  };
}
