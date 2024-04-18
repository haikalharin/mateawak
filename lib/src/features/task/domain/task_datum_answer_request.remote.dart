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
  String? attachmentName;
  int? attachmentId;

  TaskDatumAnswerRequestRemote({
    this.taskId,
    this.answer,
    this.attachment,
    this.attachmentName,
    this.attachmentId,
  });

  TaskDatumAnswerRequestRemote copyWith({
    Id? taskId,
    String? answer,
    String? attachment,
    String? attachmentName,
    int? attachmentId,
  }) =>
      TaskDatumAnswerRequestRemote(
        taskId: taskId ?? this.taskId,
        answer: answer ?? this.answer,
        attachment: attachment ?? this.attachment,
        attachmentName: attachmentName ?? this.attachmentName,
        attachmentId: attachmentId ?? this.attachmentId,
      );

  factory TaskDatumAnswerRequestRemote.fromJson(Map<String, dynamic> json) =>
      TaskDatumAnswerRequestRemote(
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
