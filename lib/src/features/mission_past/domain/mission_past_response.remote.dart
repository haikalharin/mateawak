// To parse this JSON data, do
//
//     final missionPastResponseRemoteRemote = missionPastResponseRemoteRemoteFromJson(jsonString);

import 'dart:convert';

import 'package:isar/isar.dart';

part 'mission_past_response.remote.g.dart';

MissionPastResponseRemote missionPastResponseRemoteFromJson(String str) =>
    MissionPastResponseRemote.fromJson(json.decode(str));

String missionPastResponseRemoteToJson(MissionPastResponseRemote data) =>
    json.encode(data.toJson());

@collection
class MissionPastResponseRemote {
    Id? employeeMissionId;
    int? employeeId;
    int? validatorId;
    int? chapterId;
    String? chapterName;
    int? missionId;
    String? missionName;
    String? missionStatusCode;
    String? missionStatus;
    String? startedDate;
    String? dueDate;
    String? submittedBy;
    String? submittedDate;
    String? completedBy;
    String? completedDate;
    int? missionReward;
    int? totalReward;

    MissionPastResponseRemote({
        this.employeeMissionId,
        this.employeeId,
        this.validatorId,
        this.chapterId,
        this.chapterName,
        this.missionId,
        this.missionName,
        this.missionStatusCode,
        this.missionStatus,
        this.startedDate,
        this.dueDate,
        this.submittedBy,
        this.submittedDate,
        this.completedBy,
        this.completedDate,
        this.missionReward,
        this.totalReward,
    });

    MissionPastResponseRemote copyWith({
        int? employeeMissionId,
        int? employeeId,
        int? validatorId,
        int? chapterId,
        String? chapterName,
        int? missionId,
        String? missionName,
        String? missionStatusCode,
        String? missionStatus,
        String? startedDate,
        String? dueDate,
        String? submittedBy,
        String? submittedDate,
        String? completedBy,
        String? completedDate,
        int? missionReward,
        int? totalReward
    }) => 
        MissionPastResponseRemote(
            employeeMissionId: employeeMissionId ?? this.employeeMissionId,
            employeeId: employeeId ?? this.employeeId,
            validatorId: validatorId ?? this.validatorId,
            chapterId: chapterId ?? this.chapterId,
            chapterName: chapterName ?? this.chapterName,
            missionId: missionId ?? this.missionId,
            missionName: missionName ?? this.missionName,
            missionStatusCode: missionStatusCode ?? this.missionStatusCode,
            missionStatus: missionStatus ?? this.missionStatus,
            startedDate: startedDate ?? this.startedDate,
            dueDate: dueDate ?? this.dueDate,
            submittedBy: submittedBy ?? this.submittedBy,
            submittedDate: submittedDate ?? this.submittedDate,
            completedBy: completedBy ?? this.completedBy,
            completedDate: completedDate ?? this.completedDate,
            missionReward: missionReward ?? this.missionReward,
            totalReward: totalReward ?? this.totalReward,
        );


  factory MissionPastResponseRemote.fromJson(Map<String, dynamic> json) =>
      MissionPastResponseRemote(
        employeeMissionId: json["employeeMissionId"],
        employeeId: json["employeeId"],
        validatorId: json["validatorId"],
        chapterId: json["chapterId"],
        chapterName: json["chapterName"],
        missionId: json["missionId"],
        missionName: json["missionName"],
        missionStatusCode: json["missionStatusCode"],
        missionStatus: json["missionStatus"],
        startedDate: json["startedDate"],
        dueDate: json["dueDate"],
        submittedBy: json["submittedBy"],
        submittedDate: json["submittedDate"],
        completedBy: json["completedBy"],
        completedDate: json["completedDate"],
        missionReward: json["missionReward"],
        totalReward: json["totalReward"],
      );

  Map<String, dynamic> toJson() => {
        "employeeMissionId": employeeMissionId,
        "employeeId": employeeId,
        "validatorId": validatorId,
        "chapterId": chapterId,
        "chapterName": chapterName,
        "missionId": missionId,
        "missionName": missionName,
        "missionStatusCode": missionStatusCode,
        "missionStatus": missionStatus,
        "startedDate": startedDate,
        "dueDate": dueDate,
        "submittedBy": submittedBy,
        "submittedDate": submittedDate,
        "completedBy": completedBy,
        "completedDate": completedDate,
        "missionReward": missionReward,
        "totalReward": totalReward,
  };
}