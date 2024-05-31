// To parse this JSON data, do
//
//     final downloadAttachmentNewsRequestRemote = downloadAttachmentNewsRequestRemoteFromJson(jsonString);

import 'dart:convert';

import 'package:isar/isar.dart';
part 'download_attachment_request.remote.g.dart';


DownloadAttachmentNewsRequestRemote downloadAttachmentNewsRequestRemoteFromJson(String str) => DownloadAttachmentNewsRequestRemote.fromJson(json.decode(str));

String downloadAttachmentNewsRequestRemoteToJson(DownloadAttachmentNewsRequestRemote data) => json.encode(data.toJson());

@collection
class DownloadAttachmentNewsRequestRemote {
  Id? attachmentId;
  String? formattedName;

  DownloadAttachmentNewsRequestRemote({
    this.attachmentId,
    this.formattedName,
  });

  DownloadAttachmentNewsRequestRemote copyWith({
    int? attachmentId,
    String? formattedName,
  }) =>
      DownloadAttachmentNewsRequestRemote(
        attachmentId: attachmentId ?? this.attachmentId,
        formattedName: formattedName ?? this.formattedName,
      );

  factory DownloadAttachmentNewsRequestRemote.fromJson(Map<String, dynamic> json) => DownloadAttachmentNewsRequestRemote(
    attachmentId: json["attachmentId"],
    formattedName: json["formattedName"],
  );

  Map<String, dynamic> toJson() => {
    "attachmentId": attachmentId,
    "formattedName": formattedName,
  };
}
