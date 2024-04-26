// To parse this JSON data, do
//
//     final alidationResponseRemoteRemote = alidationResponseRemoteRemoteFromJson(jsonString);

import 'dart:convert';

import 'package:isar/isar.dart';

part 'validation_response.remote.g.dart';

ValidationResponseRemote validationResponseRemoteRemoteFromJson(String str) =>
    ValidationResponseRemote.fromJson(json.decode(str));

String validationResponseRemoteToJson(ValidationResponseRemote data) =>
    json.encode(data.toJson());

@collection
class ValidationResponseRemote {
    Id? employeeMissionId;
    int? employeeId;
    String? employeeName;
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
    List<ChapterValidationDatum>? chapterData;

    ValidationResponseRemote({
        this.employeeMissionId,
        this.employeeId,
        this.employeeName,
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

    ValidationResponseRemote copyWith({
        int? employeeMissionId,
        int? employeeId,
        String? employeeName,
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
        List<ChapterValidationDatum>? chapterData,
    }) => 
        ValidationResponseRemote(
            employeeMissionId: employeeMissionId ?? this.employeeMissionId,
            employeeId: employeeId ?? this.employeeId,
            employeeName: employeeName ?? this.employeeName,
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


  factory ValidationResponseRemote.fromJson(Map<String, dynamic> json) =>
      ValidationResponseRemote(
        employeeMissionId: json["employeeMissionId"],
        employeeId: json["employeeId"],
        employeeName: json["employeeName"],
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
            : List<ChapterValidationDatum>.from(
                json["chapterData"]!.map((x) => ChapterValidationDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "employeeMissionId": employeeMissionId,
        "employeeId": employeeId,
        "employeeName": employeeName,
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
class ChapterValidationDatum {
    int? chapterId;
    String? chapterCode;
    String? chapterName;
    String? chapterGoal;
    String? competencyCode;
    String? competencyName;
    String? peopleCategoryCode;
    String? peopleCategoryName;
    List<MissionValidationDatum>? missionData;

    ChapterValidationDatum({
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

    ChapterValidationDatum copyWith({
        int? chapterId,
        String? chapterCode,
        String? chapterName,
        String? chapterGoal,
        String? competencyCode,
        String? competencyName,
        String? peopleCategoryCode,
        String? peopleCategoryName,
        List<MissionValidationDatum>? missionData,
    }) => 
        ChapterValidationDatum(
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

        factory ChapterValidationDatum.fromJson(Map<String, dynamic> json) => ChapterValidationDatum(
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
            : List<MissionValidationDatum>.from(
                json["missionData"]!.map((x) => MissionValidationDatum.fromJson(x))),
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
class MissionValidationDatum {
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
    bool? isMandatoryAttachment;
    List<TaskValidationDatum>? taskData;

    MissionValidationDatum({
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
        this.taskData,
    });

    MissionValidationDatum copyWith({
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
        bool? isMandatoryAttachment,
        List<TaskValidationDatum>? taskData,
    }) => 
        MissionValidationDatum(
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
            isMandatoryAttachment: isMandatoryAttachment ?? this.isMandatoryAttachment,
            taskData: taskData ?? this.taskData,
        );


  factory MissionValidationDatum.fromJson(Map<String, dynamic> json) => MissionValidationDatum(
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
        taskData: json["taskData"] == null
            ? []
            : List<TaskValidationDatum>.from(
                json["taskData"]!.map((x) => TaskValidationDatum.fromJson(x))),
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
        "taskData": taskData == null
            ? []
            : List<dynamic>.from(taskData!.map((x) => x.toJson())),
      };
}

@embedded
class TaskValidationDatum {
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
    int? taskAnswerId;
    String? answer;
    int? answerAttachmentId;
    String? answerAttachmentUrl;
    String? answerAttachmentPath;
    int? answerReward;
    String? feedbackComment;
    int? qualitativeScoreId;

    TaskValidationDatum({
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
        this.taskAnswerId,
        this.answer,
        this.answerAttachmentId,
        this.answerAttachmentUrl,
        this.answerAttachmentPath,
        this.answerReward,
        this.feedbackComment,
        this.qualitativeScoreId,
    });

    TaskValidationDatum copyWith({
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
        int? taskAnswerId,
        String? answer,
        int? answerAttachmentId,
        String? answerAttachmentUrl,
        String? answerAttachmentPath,
        int? answerReward,
        String? feedbackComment,
        int? qualitativeScoreId,
    }) => 
        TaskValidationDatum(
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
            taskAnswerId: taskAnswerId ?? this.taskAnswerId,
            answer: answer ?? this.answer,
            answerAttachmentId: answerAttachmentId ?? this.answerAttachmentId,
            answerAttachmentUrl: answerAttachmentUrl ?? this.answerAttachmentUrl,
            answerAttachmentPath: answerAttachmentPath ?? this.answerAttachmentPath,
            answerReward: answerReward ?? this.answerReward,
            feedbackComment: feedbackComment ?? this.feedbackComment,
            qualitativeScoreId: qualitativeScoreId ?? this.qualitativeScoreId,
        );


  factory TaskValidationDatum.fromJson(Map<String, dynamic> json) => TaskValidationDatum(
        taskId: json["taskId"],
        missionId: json["missionId"],
        attachmentId: json["attachmentId"],
        attachmentUrl: json["attachmentUrl"],
        attachmentPath: json["attachmentPath"],
        taskCode: json["taskCode"],
        taskGroup: json["taskGroup"],
        taskCaption: json["taskCaption"],
        taskTypeCode: json["taskTypeCode"],
        taskTypeName: json["taskTypeName"],
        taskReward: json["taskReward"],
        answer: json["answer"],
        answerAttachmentId: json["answerAttachmentId"],
        answerAttachmentUrl: json["answerAttachmentUrl"],
        answerAttachmentPath: json["answerAttachmentPath"],
        answerReward: json["answerReward"],
        feedbackComment: json["feedbackComment"],
        qualitativeScoreId: json["qualitativeScoreId"]
      );

  Map<String, dynamic> toJson() => {
        "taskId": taskId,
        "missionId": missionId,
        "attachmentId": attachmentId,
        "attachmentUrl": attachmentUrl,
        "attachmentPath": attachmentPath,
        "taskCode": taskCode,
        "taskGroup": taskGroup,
        "taskCaption": taskCaption,
        "taskTypeCode": taskTypeCode,
        "taskTypeName": taskTypeName,
        "taskReward": taskReward,
        "answer": answer,
        "answerAttachmentId": answerAttachmentId,
        "answerAttachmentUrl": answerAttachmentUrl,
        "answerAttachmentPath": answerAttachmentPath,
        "answerReward": answerReward,
        "feedbackComment": feedbackComment,
        "qualitativeScoreId": qualitativeScoreId,
      };
}