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
  int? missionId;
  String? answer;
  String? attachment;
  String? attachmentName;
  int? attachmentId;
  String? taskGroup;

  TaskDatumAnswerRequestRemote({
    this.taskId,
    this.missionId,
    this.answer,
    this.attachment,
    this.attachmentName,
    this.attachmentId,
    this.taskGroup,
  });

  TaskDatumAnswerRequestRemote copyWith({
    Id? taskId,
    int? missionId,
    String? answer,
    String? attachment,
    String? attachmentName,
    int? attachmentId,
    String? taskGroup
  }) =>
      TaskDatumAnswerRequestRemote(
        taskId: taskId ?? this.taskId,
        missionId: missionId ?? this.missionId,
        answer: answer ?? this.answer,
        attachment: attachment ?? this.attachment,
        attachmentName: attachmentName ?? this.attachmentName,
        attachmentId: attachmentId ?? this.attachmentId,
        taskGroup: taskGroup ?? this.taskGroup,
      );

  factory TaskDatumAnswerRequestRemote.fromJson(Map<String, dynamic> json) =>
      TaskDatumAnswerRequestRemote(
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
