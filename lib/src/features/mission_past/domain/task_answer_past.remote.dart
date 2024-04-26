// To parse this JSON data, do
//
//     final answerRequestRemote = answerRequestRemoteFromJson(jsonString);

import 'dart:convert';

import 'package:isar/isar.dart';

part 'task_answer_past.remote.g.dart';

TaskAnswerPastRemote taskAnswerPastRemoteFromJson(String str) =>
    TaskAnswerPastRemote.fromJson(json.decode(str));

String taskAnswerPastRemoteToJson(TaskAnswerPastRemote data) =>
    json.encode(data.toJson());

@collection
class TaskAnswerPastRemote {
  Id? taskId;
  String? answer;
  String? attachment;
  String? attachmentName;
  int? taskReward;
  int? answerReward;
  String? feedbackComment;
  int? qualitativeScoreId;
  String? qualitativeScoreName;
  String? taskCaption;
  String? taskTypeCode;
  String? taskTypeName;
  List<int>? listSelectedOption;
  List<String>? listSelectedOptionString;
  int? attachmentId;
  List<AnswerDatumPast>? answerData;

  TaskAnswerPastRemote({
    this.taskId,
    this.answer,
    this.attachment,
    this.attachmentName,
    this.taskReward,
    this.answerReward,
    this.feedbackComment,
    this.qualitativeScoreId,
    this.qualitativeScoreName,
    this.taskCaption,
    this. taskTypeCode,
    this. taskTypeName,
   this. listSelectedOption,
   this.listSelectedOptionString,
    this.attachmentId,
    this.answerData,
  });

  TaskAnswerPastRemote copyWith({
    int? taskId,
    String? answer,
    String? attachment,
    String? attachmentName,
    int? taskReward,
    int? answerReward,
    String? feedbackComment,
    int? qualitativeScoreId,
    String? qualitativeScoreName,
    String? taskCaption,
    String? taskTypeCode,
    String? taskTypeName,
    List<int>? listSelectedOption,
    List<String>? listSelectedOptionString,
    int? attachmentId,
    List<AnswerDatumPast>? answerData,
  }) =>
      TaskAnswerPastRemote(
        taskId: taskId ?? this.taskId,
        answer: answer ?? this.answer,
        attachmentName: attachmentName ?? this.attachmentName,
        attachment: attachment ?? this.attachment,
        taskReward: taskReward ?? this.taskReward,
        answerReward: answerReward ?? this.answerReward,
        feedbackComment: feedbackComment ?? this.feedbackComment,
        qualitativeScoreId: qualitativeScoreId ?? this.qualitativeScoreId,
        qualitativeScoreName: qualitativeScoreName ?? this.qualitativeScoreName,
        taskCaption: taskCaption ?? this.taskCaption,
        taskTypeCode: taskTypeCode ?? this.taskTypeCode,
        taskTypeName: taskTypeName ?? this.taskTypeName,
        listSelectedOption: listSelectedOption ?? this.listSelectedOption,
        listSelectedOptionString: listSelectedOptionString ?? this.listSelectedOptionString,
        attachmentId: attachmentId ?? this.attachmentId,
        answerData: answerData ?? this.answerData,
      );

  factory TaskAnswerPastRemote.fromJson(Map<String, dynamic> json) =>
      TaskAnswerPastRemote(
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


@embedded
class AnswerDatumPast {
  int? answerId;
  int? taskId;
  String? answerCode;
  String? answerField;
  String? answerCaption;
  bool? isCorrectAnswer;

  AnswerDatumPast({
    this.answerId,
    this.taskId,
    this.answerCode,
    this.answerField,
    this.answerCaption,
    this.isCorrectAnswer,
  });

  AnswerDatumPast copyWith({
    int? answerId,
    int? taskId,
    String? answerCode,
    String? answerField,
    String? answerCaption,
    bool? isCorrectAnswer,
  }) =>
      AnswerDatumPast(
        answerId: answerId ?? this.answerId,
        taskId: taskId ?? this.taskId,
        answerCode: answerCode ?? this.answerCode,
        answerField: answerField ?? this.answerField,
        answerCaption: answerCaption ?? this.answerCaption,
        isCorrectAnswer: isCorrectAnswer ?? this.isCorrectAnswer,
      );

  factory AnswerDatumPast.fromJson(Map<String, dynamic> json) => AnswerDatumPast(
    answerId: json["answerId"],
    taskId: json["taskId"],
    answerCode: json["answerCode"],
    answerField: json["answerField"],
    answerCaption: json["answerCaption"],
    isCorrectAnswer: json["isCorrectAnswer"],
  );

  Map<String, dynamic> toJson() => {
    "answerId": answerId,
    "taskId": taskId,
    "answerCode": answerCode,
    "answerField": answerField,
    "answerCaption": answerCaption,
    "isCorrectAnswer": isCorrectAnswer,
  };
}


