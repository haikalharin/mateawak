// To parse this JSON data, do
//
//     final answerRequestRemote = answerRequestRemoteFromJson(jsonString);

import 'dart:convert';

import 'package:isar/isar.dart';

part 'task_datum_answer_request.remote.g.dart';

TaskDatumAnswerRequestRemote taskDatumAnswerRequestRemoteFromJson(String str) =>
    TaskDatumAnswerRequestRemote.fromJson(json.decode(str));

String taskDatumAnswerRequestRemoteToJson(TaskDatumAnswerRequestRemote data) =>
    json.encode(data.toJson());

@collection
class TaskDatumAnswerRequestRemote {
  Id? taskId;
  String? answer;
  String? attachment;

  TaskDatumAnswerRequestRemote({
    this.taskId,
    this.answer,
    this.attachment,
  });

  TaskDatumAnswerRequestRemote copyWith({
    int? taskId,
    String? answer,
    String? attachment,
  }) =>
      TaskDatumAnswerRequestRemote(
        taskId: taskId ?? this.taskId,
        answer: answer ?? this.answer,
        attachment: attachment ?? this.attachment,
      );

  factory TaskDatumAnswerRequestRemote.fromJson(Map<String, dynamic> json) =>
      TaskDatumAnswerRequestRemote(
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
