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
  List<TaskDatumAnswer>? taskData;

  AnswerRequestRemote({
    this.employeeMissionId,
    this.submittedDate,
    this.taskData,
  });

  AnswerRequestRemote copyWith({
    int? employeeMissionId,
    String? submittedDate,
    List<TaskDatumAnswer>? taskData,
  }) =>
      AnswerRequestRemote(
        employeeMissionId: employeeMissionId ?? this.employeeMissionId,
        submittedDate: submittedDate ?? this.submittedDate,
        taskData: taskData ?? this.taskData,
      );

  factory AnswerRequestRemote.fromJson(Map<String, dynamic> json) => AnswerRequestRemote(
    employeeMissionId: json["employeeMissionId"],
    submittedDate: json["submittedDate"],
    taskData: json["taskData"] == null ? [] : List<TaskDatumAnswer>.from(json["taskData"]!.map((x) => TaskDatumAnswer.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "employeeMissionId": employeeMissionId,
    "submittedDate": submittedDate,
    "taskData": taskData == null ? [] : List<dynamic>.from(taskData!.map((x) => x.toJson())),
  };
}
@embedded
class TaskDatumAnswer {
  int? taskId;
  String? answer;
  String? attachment;

  TaskDatumAnswer({
    this.taskId,
    this.answer,
    this.attachment,
  });

  TaskDatumAnswer copyWith({
    int? taskId,
    String? answer,
    String? attachment,
  }) =>
      TaskDatumAnswer(
        taskId: taskId ?? this.taskId,
        answer: answer ?? this.answer,
        attachment: attachment ?? this.attachment,
      );

  factory TaskDatumAnswer.fromJson(Map<String, dynamic> json) => TaskDatumAnswer(
    taskId: json["taskId"],
    answer: json["answer"],
    attachment: json["Attachment"],
  );

  Map<String, dynamic> toJson() => {
    "taskId": taskId,
    "answer": answer,
    "Attachment": attachment,
  };
}
