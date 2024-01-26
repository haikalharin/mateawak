import 'package:isar/isar.dart';
part 'notification_response.remote.g.dart';

@collection
class NotificationResponseRemote {
  Id id = Isar.autoIncrement;
  int? pageCount;
  String? showingData;
  int? dataCount;
  String? notifId;
  String? notifTitle;
  String? notifDescription;
  String? notifImage;
  String? notifDate;
  int? employeeId;
  String? employeeName;
  String? idTransaction;
  String? activity;
  int? isRead;
  String? feature;
  String? notifType;
  int? pageNo;
  int? pageSize;
  String? category;

  NotificationResponseRemote(
      {this.pageCount,
      this.showingData,
      this.dataCount,
      this.notifId,
      this.notifTitle,
      this.notifDescription,
      this.notifImage,
      this.notifDate,
      this.employeeId,
      this.employeeName,
      this.idTransaction,
      this.activity,
      this.isRead,
      this.feature,
      this.category});

  NotificationResponseRemote.fromJson(Map<String, dynamic> json) {
    pageCount = json['pageCount'];
    showingData = json['showingData'];
    dataCount = json['dataCount'];
    notifId = json['notifId'];
    notifTitle = json['notifTitle'];
    notifDescription = json['notifDescription'];
    notifImage = json['notifImage'];
    notifDate = json['notifDate'];
    employeeId = json['employeeId'];
    employeeName = json['employeeName'];
    idTransaction = json['idTransaction'];
    activity = json['activity'];
    isRead = json['isRead'];
    feature = json['feature'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pageCount'] = pageCount;
    data['showingData'] = showingData;
    data['dataCount'] = dataCount;
    data['notifId'] = notifId;
    data['notifTitle'] = notifTitle;
    data['notifDescription'] = notifDescription;
    data['notifImage'] = notifImage;
    data['notifDate'] = notifDate;
    data['employeeId'] = employeeId;
    data['employeeName'] = employeeName;
    data['idTransaction'] = idTransaction;
    data['activity'] = activity;
    data['isRead'] = isRead;
    data['feature'] = feature;
    data['category'] = category;
    return data;
  }
}
