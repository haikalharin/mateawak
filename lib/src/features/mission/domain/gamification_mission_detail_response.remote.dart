// To parse this JSON data, do
//
//     final gamificationMissionDetailRemote = gamificationMissionDetailRemoteFromJson(jsonString);

import 'dart:convert';

import 'package:isar/isar.dart';

part 'gamification_mission_detail_response.remote.g.dart';

GamificationMissionDetailRemote gamificationMissionDetailRemoteFromJson(
        String str) =>
    GamificationMissionDetailRemote.fromJson(json.decode(str));

String gamificationMissionDetailRemoteToJson(
        GamificationMissionDetailRemote data) =>
    json.encode(data.toJson());

@collection
class GamificationMissionDetailRemote {
  Id? employeeMissionId;
  int? employeeId;
  int? missionId;
  int? missionStatusCode;
  String? missionStatus;
  String? startedDate;
  String? dueDate;
  String? submittedBy;
  String? submittedDate;
  String? completedBy;
  String? completedDate;
  int? validatorId;
  List<ChapterDatum>? chapterData;

  GamificationMissionDetailRemote({
    this.employeeMissionId,
    this.employeeId,
    this.missionId,
    this.missionStatusCode,
    this.missionStatus,
    this.startedDate,
    this.dueDate,
    this.submittedBy,
    this.submittedDate,
    this.completedBy,
    this.completedDate,
    this.validatorId,
    this.chapterData,
  });

  GamificationMissionDetailRemote copyWith({
    int? employeeMissionId,
    int? employeeId,
    int? missionId,
    int? missionStatusCode,
    String? missionStatus,
    String? startedDate,
    String? dueDate,
    String? submittedBy,
    String? submittedDate,
    String? completedBy,
    String? completedDate,
    int? validatorId,
    List<ChapterDatum>? chapterData,
  }) =>
      GamificationMissionDetailRemote(
        employeeMissionId: employeeMissionId ?? this.employeeMissionId,
        employeeId: employeeId ?? this.employeeId,
        missionId: missionId ?? this.missionId,
        missionStatusCode: missionStatusCode ?? this.missionStatusCode,
        missionStatus: missionStatus ?? this.missionStatus,
        startedDate: startedDate ?? this.startedDate,
        dueDate: dueDate ?? this.dueDate,
        submittedBy: submittedBy ?? this.submittedBy,
        submittedDate: submittedDate ?? this.submittedDate,
        completedBy: completedBy ?? this.completedBy,
        completedDate: completedDate ?? this.completedDate,
        validatorId: validatorId ?? this.validatorId,
        chapterData: chapterData ?? this.chapterData,
      );

  factory GamificationMissionDetailRemote.fromJson(Map<String, dynamic> json) =>
      GamificationMissionDetailRemote(
        employeeMissionId: json["employeeMissionId"],
        employeeId: json["employeeId"],
        missionId: json["missionId"],
        missionStatusCode: json["missionStatusCode"],
        missionStatus: json["missionStatus"],
        startedDate: json["startedDate"],
        dueDate: json["dueDate"],
        submittedBy: json["submittedBy"],
        submittedDate: json["submittedDate"],
        completedBy: json["completedBy"],
        completedDate: json["completedDate"],
        validatorId: json["validatorId"],
        chapterData: json["chapterData"] == null
            ? []
            : List<ChapterDatum>.from(
                json["chapterData"]!.map((x) => ChapterDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "employeeMissionId": employeeMissionId,
        "employeeId": employeeId,
        "missionId": missionId,
        "missionStatusCode": missionStatusCode,
        "missionStatus": missionStatus,
        "startedDate": startedDate,
        "dueDate": dueDate,
        "submittedBy": submittedBy,
        "submittedDate": submittedDate,
        "completedBy": completedBy,
        "completedDate": completedDate,
        "validatorId": validatorId,
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
  List<MissionDatum>? missionData;

  ChapterDatum({
    this.chapterId,
    this.chapterCode,
    this.chapterName,
    this.chapterGoal,
    this.missionData,
  });

  ChapterDatum copyWith({
    int? chapterId,
    String? chapterCode,
    String? chapterName,
    String? chapterGoal,
    List<MissionDatum>? missionData,
  }) =>
      ChapterDatum(
        chapterId: chapterId ?? this.chapterId,
        chapterCode: chapterCode ?? this.chapterCode,
        chapterName: chapterName ?? this.chapterName,
        chapterGoal: chapterGoal ?? this.chapterGoal,
        missionData: missionData ?? this.missionData,
      );

  factory ChapterDatum.fromJson(Map<String, dynamic> json) => ChapterDatum(
        chapterId: json["chapterId"],
        chapterCode: json["chapterCode"],
        chapterName: json["chapterName"],
        chapterGoal: json["chapterGoal"],
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
  int? isMandatoryAttachment;
  String? competencyCode;
  String? competencyName;
  String? peopleCategoryCode;
  String? peopleCategoryName;
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
    this.isMandatoryAttachment,
    this.competencyCode,
    this.competencyName,
    this.peopleCategoryCode,
    this.peopleCategoryName,
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
    dynamic isMandatoryAttachment,
    String? competencyCode,
    String? competencyName,
    String? peopleCategoryCode,
    String? peopleCategoryName,
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
        competencyCode: competencyCode ?? this.competencyCode,
        competencyName: competencyName ?? this.competencyName,
        peopleCategoryCode: peopleCategoryCode ?? this.peopleCategoryCode,
        peopleCategoryName: peopleCategoryName ?? this.peopleCategoryName,
        isMandatoryAttachment:
            isMandatoryAttachment ?? this.isMandatoryAttachment,
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
        isMandatoryAttachment: json["isMandatoryAttachment"],
        competencyCode: json["competencyCode"],
        competencyName: json["competencyName"],
        peopleCategoryCode: json["peopleCategoryCode"],
        peopleCategoryName: json["peopleCategoryName"],
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
        "isMandatoryAttachment": isMandatoryAttachment,
        "competencyCode": competencyCode,
        "competencyName": competencyName,
        "peopleCategoryCode": peopleCategoryCode,
        "peopleCategoryName": peopleCategoryName,
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
  String? taskCode;
  String? taskGroup;
  String? taskCaption;
  String? taskTypeCode;
  String? taskTypeName;
  int? taskReward;
  int? taskAnswerId;
  String? answer;
  int? answerAttachmentId;
  String? answerAttachmentUrl;
  int? answerReward;
  String? feedbackComment;
  int? qualitativeScoreId;
  List<AnswerDatum>? answerData;

  TaskDatum({
    this.taskId,
    this.missionId,
    this.attachmentId,
    this.attachmentUrl,
    this.taskCode,
    this.taskGroup,
    this.taskCaption,
    this.taskTypeCode,
    this.taskTypeName,
    this.taskReward,
    this.taskAnswerId,
    this.answer,
    this.answerAttachmentId,
    this.answerAttachmentUrl,
    this.answerReward,
    this.feedbackComment,
    this.qualitativeScoreId,
    this.answerData,
  });

  TaskDatum copyWith({
    int? taskId,
    int? missionId,
    int? attachmentId,
    String? attachmentUrl,
    String? taskCode,
    String? taskGroup,
    String? taskCaption,
    String? taskTypeCode,
    String? taskTypeName,
    int? taskReward,
    int? taskAnswerId,
    String? answer,
    int? answerAttachmentId,
    String? answerAttachmentUrl,
    int? answerReward,
    String? feedbackComment,
    int? qualitativeScoreId,
    List<AnswerDatum>? answerData,
  }) =>
      TaskDatum(
        taskId: taskId ?? this.taskId,
        missionId: missionId ?? this.missionId,
        attachmentId: attachmentId ?? this.attachmentId,
        attachmentUrl: attachmentUrl ?? this.attachmentUrl,
        taskCode: taskCode ?? this.taskCode,
        taskGroup: taskGroup ?? this.taskGroup,
        taskCaption: taskCaption ?? this.taskCaption,
        taskTypeCode: taskTypeCode ?? this.taskTypeCode,
        taskTypeName: taskTypeName ?? this.taskTypeName,
        taskReward: taskReward ?? this.taskReward,
        taskAnswerId: taskAnswerId ?? this.taskAnswerId,
        answer: answer ?? this.answer,
        answerAttachmentId: answerAttachmentId ?? this.answerAttachmentId,
        answerAttachmentUrl: answerAttachmentUrl ?? this.answerAttachmentUrl,
        answerReward: answerReward ?? this.answerReward,
        feedbackComment: feedbackComment ?? this.feedbackComment,
        qualitativeScoreId: qualitativeScoreId ?? this.qualitativeScoreId,
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
        taskAnswerId: json["taskAnswerId"],
        answer: json["answer"],
        answerAttachmentId: json["answerAttachmentId"],
        answerAttachmentUrl: json["answerAttachmentUrl"],
        answerReward: json["answerReward"],
        feedbackComment: json["feedbackComment"],
        qualitativeScoreId: json["qualitativeScoreId"],
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
        "taskAnswerId": taskAnswerId,
        "answer": answer,
        "answerAttachmentId": answerAttachmentId,
        "answerAttachmentUrl": answerAttachmentUrl,
        "answerReward": answerReward,
        "feedbackComment": feedbackComment,
        "qualitativeScoreId": qualitativeScoreId,
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
