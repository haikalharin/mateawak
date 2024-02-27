import 'dart:convert';

import 'package:isar/isar.dart';
part 'gamification_response.remote.g.dart';

GamificationResponseRemote gamificationResponseRemoteFromJson(String str) => GamificationResponseRemote.fromJson(json.decode(str));

String gamificationResponseRemoteToJson(GamificationResponseRemote data) => json.encode(data.toJson());

@collection
class GamificationResponseRemote {
  Id? employeeId;
  String? lastSync;
  List<Datum>? data;

  GamificationResponseRemote({
    this.employeeId,
    this.lastSync,
    this.data,
  });

  GamificationResponseRemote copyWith({
    Id? employeeId,
    String? lastSync,
    List<Datum>? data,
  }) =>
      GamificationResponseRemote(
        employeeId: employeeId ?? this.employeeId,
        lastSync: lastSync ?? this.lastSync,
        data: data ?? this.data,
      );

  factory GamificationResponseRemote.fromJson(Map<String, dynamic> json) => GamificationResponseRemote(
    employeeId: int.parse(json["employeeId"]) ,
    lastSync: json["lastSync"],
    data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "employeeId": employeeId,
    "lastSync": lastSync,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}
@embedded
class Datum {
  List<ChapterDatum>? chapterData;

  Datum({
    this.chapterData,
  });

  Datum copyWith({
    List<ChapterDatum>? chapterData,
  }) =>
      Datum(
        chapterData: chapterData ?? this.chapterData,
      );

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    chapterData: json["chapterData"] == null ? [] : List<ChapterDatum>.from(json["chapterData"]!.map((x) => ChapterDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "chapterData": chapterData == null ? [] : List<dynamic>.from(chapterData!.map((x) => x.toJson())),
  };
}
@embedded
class ChapterDatum {
  String? chapterId;
  String? name;
  String? startDate;
  String? endDate;
  String? status;
  List<MissionDatum>? missionData;

  ChapterDatum({
    this.chapterId,
    this.name,
    this.startDate,
    this.endDate,
    this.status,
    this.missionData,
  });

  ChapterDatum copyWith({
    String? chapterId,
    String? name,
    String? startDate,
    String? endDate,
    String? status,
    List<MissionDatum>? missionData,
  }) =>
      ChapterDatum(
        chapterId: chapterId ?? this.chapterId,
        name: name ?? this.name,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        status: status ?? this.status,
        missionData: missionData ?? this.missionData,
      );

  factory ChapterDatum.fromJson(Map<String, dynamic> json) => ChapterDatum(
    chapterId: json["chapterId"],
    name: json["name"],
    startDate: json["startDate"],
    endDate: json["endDate"],
    status: json["status"],
    missionData: json["missionData"] == null ? [] : List<MissionDatum>.from(json["missionData"]!.map((x) => MissionDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "chapterId": chapterId,
    "name": name,
    "startDate": startDate,
    "endDate": endDate,
    "status": status,
    "missionData": missionData == null ? [] : List<dynamic>.from(missionData!.map((x) => x.toJson())),
  };
}
@embedded
class MissionDatum {
  String? missionId;
  String? missionStatus;
  String? name;
  String? rewards;
  String? taks;
  String? description;
  String? startDate;
  String? endDate;
  List<TaskDatum>? taskData;

  MissionDatum({
    this.missionId,
    this.missionStatus,
    this.name,
    this.rewards,
    this.taks,
    this.description,
    this.startDate,
    this.endDate,
    this.taskData,
  });

  MissionDatum copyWith({
    String? missionId,
    String? missionStatus,
    String? name,
    String? rewards,
    String? taks,
    String? description,
    String? startDate,
    String? endDate,
    List<TaskDatum>? taskData,
  }) =>
      MissionDatum(
        missionId: missionId ?? this.missionId,
        missionStatus: missionStatus ?? this.missionStatus,
        name: name ?? this.name,
        rewards: rewards ?? this.rewards,
        taks: taks ?? this.taks,
        description: description ?? this.description,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        taskData: taskData ?? this.taskData,
      );

  factory MissionDatum.fromJson(Map<String, dynamic> json) => MissionDatum(
    missionId: json["missionId"],
    missionStatus: json["missionStatus"],
    name: json["name"],
    rewards: json["rewards"],
    taks: json["taks"],
    description: json["description"],
    startDate: json["startDate"],
    endDate: json["endDate"],
    taskData: json["taskData"] == null ? [] : List<TaskDatum>.from(json["taskData"]!.map((x) => TaskDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "missionId": missionId,
    "missionStatus": missionStatus,
    "name": name,
    "rewards": rewards,
    "taks": taks,
    "description": description,
    "startDate": startDate,
    "endDate": endDate,
    "taskData": taskData == null ? [] : List<dynamic>.from(taskData!.map((x) => x.toJson())),
  };
}
@embedded
class TaskDatum {
  String? taskId;
  String? attachId;
  String? name;
  String? description;
  String? question;
  String? info;
  String? orderTask;
  String? reward;
  List<AnswerDatum>? answerData;

  TaskDatum({
    this.taskId,
    this.attachId,
    this.name,
    this.description,
    this.question,
    this.info,
    this.orderTask,
    this.reward,
    this.answerData,
  });

  TaskDatum copyWith({
    String? taskId,
    String? attachId,
    String? name,
    String? description,
    String? question,
    String? info,
    String? orderTask,
    String? reward,
    List<AnswerDatum>? answerData,
  }) =>
      TaskDatum(
        taskId: taskId ?? this.taskId,
        attachId: attachId ?? this.attachId,
        name: name ?? this.name,
        description: description ?? this.description,
        question: question ?? this.question,
        info: info ?? this.info,
        orderTask: orderTask ?? this.orderTask,
        reward: reward ?? this.reward,
        answerData: answerData ?? this.answerData,
      );

  factory TaskDatum.fromJson(Map<String, dynamic> json) => TaskDatum(
    taskId: json["taskId"],
    attachId: json["attachId"],
    name: json["name"],
    description: json["description"],
    question: json["question"],
    info: json["info"],
    orderTask: json["orderTask"],
    reward: json["reward"],
    answerData: json["answerData"] == null ? [] : List<AnswerDatum>.from(json["answerData"]!.map((x) => AnswerDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "taskId": taskId,
    "attachId": attachId,
    "name": name,
    "description": description,
    "question": question,
    "info": info,
    "orderTask": orderTask,
    "reward": reward,
    "answerData": answerData == null ? [] : List<dynamic>.from(answerData!.map((x) => x.toJson())),
  };
}
@embedded
class AnswerDatum {
  String? answerId;
  String? name;

  AnswerDatum({
    this.answerId,
    this.name,
  });

  AnswerDatum copyWith({
    String? answerId,
    String? name,
  }) =>
      AnswerDatum(
        answerId: answerId ?? this.answerId,
        name: name ?? this.name,
      );

  factory AnswerDatum.fromJson(Map<String, dynamic> json) => AnswerDatum(
    answerId: json["answerId"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "answerId": answerId,
    "name": name,
  };
}
