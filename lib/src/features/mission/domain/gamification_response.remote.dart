// To parse this JSON data, do
//
//     final gamificationResponseRemote = gamificationResponseRemoteFromJson(jsonString);

import 'dart:convert';

import 'package:isar/isar.dart';

part 'gamification_response.remote.g.dart';

GamificationResponseRemote gamificationResponseRemoteFromJson(String str) =>
    GamificationResponseRemote.fromJson(json.decode(str));

String gamificationResponseRemoteToJson(GamificationResponseRemote data) =>
    json.encode(data.toJson());

@collection
class GamificationResponseRemote {
  Id? employeeMissionId;
  int? missionId;
  int? missionStatusCode;
  String? missionStatus;
  String? startedDate;
  String? dueDate;
  String? submittedBy;
  String? submittedDate;
  String? completedBy;
  String? completedDate;
  List<ChapterDatum>? chapterData;

  GamificationResponseRemote({
    this.employeeMissionId,
    this.missionId,
    this.missionStatusCode,
    this.missionStatus,
    this.startedDate,
    this.dueDate,
    this.submittedBy,
    this.submittedDate,
    this.completedBy,
    this.completedDate,
    this.chapterData,
  });

  GamificationResponseRemote copyWith({
    int? employeeMissionId,
    String? employeeUpn,
    int? missionId,
    int? missionStatusCode,
    String? missionStatus,
    String? startedDate,
    String? dueDate,
    String? submittedBy,
    String? submittedDate,
    String? completedBy,
    String? completedDate,
    List<ChapterDatum>? chapterData,
  }) =>
      GamificationResponseRemote(
        employeeMissionId: employeeMissionId ?? this.employeeMissionId,
        missionId: missionId ?? this.missionId,
        missionStatusCode: missionStatusCode ?? this.missionStatusCode,
        missionStatus: missionStatus ?? this.missionStatus,
        startedDate: startedDate ?? this.startedDate,
        dueDate: dueDate ?? this.dueDate,
        submittedBy: submittedBy ?? this.submittedBy,
        submittedDate: submittedDate ?? this.submittedDate,
        completedBy: completedBy ?? this.completedBy,
        completedDate: completedDate ?? this.completedDate,
        chapterData: chapterData ?? this.chapterData,
      );

  factory GamificationResponseRemote.fromJson(Map<String, dynamic> json) =>
      GamificationResponseRemote(
        employeeMissionId: json["employeeMissionId"],
        missionId: json["missionId"],
        missionStatusCode: json["missionStatusCode"],
        missionStatus: json["missionStatus"],
        startedDate: json["startedDate"],
        dueDate: json["dueDate"],
        submittedBy: json["submittedBy"],
        submittedDate: json["submittedDate"],
        completedBy: json["completedBy"],
        completedDate: json["completedDate"],
        chapterData: json["chapterData"] == null
            ? []
            : List<ChapterDatum>.from(
                json["chapterData"]!.map((x) => ChapterDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "employeeMissionId": employeeMissionId,
        "missionId": missionId,
        "missionStatusCode": missionStatusCode,
        "missionStatus": missionStatus,
        "startedDate": startedDate,
        "dueDate": dueDate,
        "submittedBy": submittedBy,
        "submittedDate": submittedDate,
        "completedBy": completedBy,
        "completedDate": completedDate,
        "chapterData": chapterData == null
            ? []
            : List<dynamic>.from(chapterData!.map((x) => x.toJson())),
      };
}

@embedded
class ChapterDatum {
  int? chapterId;
  String? chapterCode;
  String? chapterName;
  String? chapterGoal;
  String? competencyCode;
  String? competencyName;
  String? peopleCategoryCode;
  String? peopleCategoryName;
  List<MissionDatum>? missionData;

  ChapterDatum({
    this.chapterId,
    this.chapterCode,
    this.chapterName,
    this.chapterGoal,
    this.competencyCode,
    this.competencyName,
    this.peopleCategoryCode,
    this.peopleCategoryName,
    this.missionData,
  });

  ChapterDatum copyWith({
    int? chapterId,
    String? chapterCode,
    String? chapterName,
    String? chapterGoal,
    String? competencyCode,
    String? competencyName,
    String? peopleCategoryCode,
    String? peopleCategoryName,
    List<MissionDatum>? missionData,
  }) =>
      ChapterDatum(
        chapterId: chapterId ?? this.chapterId,
        chapterCode: chapterCode ?? this.chapterCode,
        chapterName: chapterName ?? this.chapterName,
        chapterGoal: chapterGoal ?? this.chapterGoal,
        competencyCode: competencyCode ?? this.competencyCode,
        competencyName: competencyName ?? this.competencyName,
        peopleCategoryCode: peopleCategoryCode ?? this.peopleCategoryCode,
        peopleCategoryName: peopleCategoryName ?? this.peopleCategoryName,
        missionData: missionData ?? this.missionData,
      );

  factory ChapterDatum.fromJson(Map<String, dynamic> json) => ChapterDatum(
        chapterId: json["chapterId"],
        chapterCode: json["chapterCode"],
        chapterName: json["chapterName"],
        chapterGoal: json["chapterGoal"],
        competencyCode: json["competencyCode"],
        competencyName: json["competencyName"],
        peopleCategoryCode: json["peopleCategoryCode"],
        peopleCategoryName: json["peopleCategoryName"],
        missionData: json["missionData"] == null
            ? []
            : List<MissionDatum>.from(
                json["missionData"]!.map((x) => MissionDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "chapterId": chapterId,
        "chapterCode": chapterCode,
        "chapterName": chapterName,
        "chapterGoal": chapterGoal,
        "competencyCode": competencyCode,
        "competencyName": competencyName,
        "peopleCategoryCode": peopleCategoryCode,
        "peopleCategoryName": peopleCategoryName,
        "missionData": missionData == null
            ? []
            : List<dynamic>.from(missionData!.map((x) => x.toJson())),
      };
}

@embedded
class MissionDatum {
  int? missionId;
  int? chapterId;
  String? missionCode;
  String? missionName;
  String? missionInstruction;
  int? missionDuration;
  int? missionActiveOnDay;
  String? missionTypeCode;
  String? missionTypeName;
  int? missionReward;
  List<TaskDatum>? taskData;

  MissionDatum({
    this.missionId,
    this.chapterId,
    this.missionCode,
    this.missionName,
    this.missionInstruction,
    this.missionDuration,
    this.missionActiveOnDay,
    this.missionTypeCode,
    this.missionTypeName,
    this.missionReward,
    this.taskData,
  });

  MissionDatum copyWith({
    int? missionId,
    int? chapterId,
    String? missionCode,
    String? missionName,
    String? missionInstruction,
    int? missionDuration,
    int? missionActiveOnDay,
    String? missionTypeCode,
    String? missionTypeName,
    int? missionReward,
    List<TaskDatum>? taskData,
  }) =>
      MissionDatum(
        missionId: missionId ?? this.missionId,
        chapterId: chapterId ?? this.chapterId,
        missionCode: missionCode ?? this.missionCode,
        missionName: missionName ?? this.missionName,
        missionInstruction: missionInstruction ?? this.missionInstruction,
        missionDuration: missionDuration ?? this.missionDuration,
        missionActiveOnDay: missionActiveOnDay ?? this.missionActiveOnDay,
        missionTypeCode: missionTypeCode ?? this.missionTypeCode,
        missionTypeName: missionTypeName ?? this.missionTypeName,
        missionReward: missionReward ?? this.missionReward,
        taskData: taskData ?? this.taskData,
      );

  factory MissionDatum.fromJson(Map<String, dynamic> json) => MissionDatum(
        missionId: json["missionId"],
        chapterId: json["chapterId"],
        missionCode: json["missionCode"],
        missionName: json["missionName"],
        missionInstruction: json["missionInstruction"],
        missionDuration: json["missionDuration"],
        missionActiveOnDay: json["missionActiveOnDay"],
        missionTypeCode: json["missionTypeCode"],
        missionTypeName: json["missionTypeName"],
        missionReward: json["missionReward"],
        taskData: json["taskData"] == null
            ? []
            : List<TaskDatum>.from(
                json["taskData"]!.map((x) => TaskDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "missionId": missionId,
        "chapterId": chapterId,
        "missionCode": missionCode,
        "missionName": missionName,
        "missionInstruction": missionInstruction,
        "missionDuration": missionDuration,
        "missionActiveOnDay": missionActiveOnDay,
        "missionTypeCode": missionTypeCode,
        "missionTypeName": missionTypeName,
        "missionReward": missionReward,
        "taskData": taskData == null
            ? []
            : List<dynamic>.from(taskData!.map((x) => x.toJson())),
      };
}

@embedded
class TaskDatum {
  int? taskId;
  int? missionId;
  int? attachmentId;
  String? attachmentUrl;
  String? attachmentPath;
  String? taskCode;
  String? taskGroup;
  String? taskCaption;
  String? taskTypeCode;
  String? taskTypeName;
  int? taskReward;
  List<AnswerDatum>? answerData;

  TaskDatum({
    this.taskId,
    this.missionId,
    this.attachmentId,
    this.attachmentUrl,
    this.attachmentPath,
    this.taskCode,
    this.taskGroup,
    this.taskCaption,
    this.taskTypeCode,
    this.taskTypeName,
    this.taskReward,
    this.answerData,
  });

  TaskDatum copyWith({
    int? taskId,
    int? missionId,
    int? attachmentId,
    String? attachmentUrl,
    String? attachmentPath,
    String? taskCode,
    String? taskGroup,
    String? taskCaption,
    String? taskTypeCode,
    String? taskTypeName,
    int? taskReward,
    List<AnswerDatum>? answerData,
  }) =>
      TaskDatum(
        taskId: taskId ?? this.taskId,
        missionId: missionId ?? this.missionId,
        attachmentId: attachmentId ?? this.attachmentId,
        attachmentUrl: attachmentUrl ?? this.attachmentUrl,
        attachmentPath: attachmentPath ?? this.attachmentPath,
        taskCode: taskCode ?? this.taskCode,
        taskGroup: taskGroup ?? this.taskGroup,
        taskCaption: taskCaption ?? this.taskCaption,
        taskTypeCode: taskTypeCode ?? this.taskTypeCode,
        taskTypeName: taskTypeName ?? this.taskTypeName,
        taskReward: taskReward ?? this.taskReward,
        answerData: answerData ?? this.answerData,
      );

  factory TaskDatum.fromJson(Map<String, dynamic> json) => TaskDatum(
        taskId: json["taskId"],
        missionId: json["missionId"],
        attachmentId: json["attachmentId"],
        attachmentUrl: json["attachmentUrl"],
        taskCode: json["taskCode"],
        taskGroup: json["taskGroup"],
        taskCaption: json["taskCaption"],
        taskTypeCode: json["taskTypeCode"],
        taskTypeName: json["taskTypeName"],
        taskReward: json["taskReward"],
        answerData: json["answerData"] == null
            ? []
            : List<AnswerDatum>.from(
                json["answerData"]!.map((x) => AnswerDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "taskId": taskId,
        "missionId": missionId,
        "attachmentId": attachmentId,
        "attachmentUrl": attachmentUrl,
        "taskCode": taskCode,
        "taskGroup": taskGroup,
        "taskCaption": taskCaption,
        "taskTypeCode": taskTypeCode,
        "taskTypeName": taskTypeName,
        "taskReward": taskReward,
        "answerData": answerData == null
            ? []
            : List<dynamic>.from(answerData!.map((x) => x.toJson())),
      };
}

@embedded
class AnswerDatum {
  int? answerId;
  int? taskId;
  String? answerCode;
  String? answerField;
  String? answerCaption;

  AnswerDatum({
    this.answerId,
    this.taskId,
    this.answerCode,
    this.answerField,
    this.answerCaption,
  });

  AnswerDatum copyWith({
    int? answerId,
    int? taskId,
    String? answerCode,
    String? answerField,
    String? answerCaption,
  }) =>
      AnswerDatum(
        answerId: answerId ?? this.answerId,
        taskId: taskId ?? this.taskId,
        answerCode: answerCode ?? this.answerCode,
        answerField: answerField ?? this.answerField,
        answerCaption: answerCaption ?? this.answerCaption,
      );

  factory AnswerDatum.fromJson(Map<String, dynamic> json) => AnswerDatum(
        answerId: json["answerId"],
        taskId: json["taskId"],
        answerCode: json["answerCode"],
        answerField: json["answerField"],
        answerCaption: json["answerCaption"],
      );

  Map<String, dynamic> toJson() => {
        "answerId": answerId,
        "taskId": taskId,
        "answerCode": answerCode,
        "answerField": answerField,
        "answerCaption": answerCaption,
      };
}
