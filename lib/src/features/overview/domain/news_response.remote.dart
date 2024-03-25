// To parse this JSON data, do
//
//     final newsResponseRemote = newsResponseRemoteFromJson(jsonString);

import 'package:isar/isar.dart';
import 'dart:convert';
part 'news_response.remote.g.dart';

NewsResponseRemote newsResponseRemoteFromJson(String str) => NewsResponseRemote.fromJson(json.decode(str));

String newsResponseRemoteToJson(NewsResponseRemote data) => json.encode(data.toJson());

@collection
class NewsResponseRemote {
  Id id = 1;
  String? attachmentUrl;
  String? attachmentPath;
  String? title;
  String? updatedDate;
  String? content;

  NewsResponseRemote({
    this.attachmentUrl,
    this.attachmentPath,
    this.title,
    this.updatedDate,
    this.content,
  });

  NewsResponseRemote copyWith({
    String? attachmentUrl,
    String? attachmentPath,
    String? title,
    String? updatedDate,
    String? content,
  }) =>
      NewsResponseRemote(
        attachmentUrl: attachmentUrl ?? this.attachmentUrl,
        attachmentPath: attachmentPath ?? this.attachmentPath,
        title: title ?? this.title,
        updatedDate: updatedDate ?? this.updatedDate,
        content: content ?? this.content,
      );

  factory NewsResponseRemote.fromJson(Map<String, dynamic> json) => NewsResponseRemote(
    attachmentUrl: json["attachmentUrl"],
    title: json["title"],
    updatedDate: json["updatedDate"],
    content: json["content"],
  );

  Map<String, dynamic> toJson() => {
    "attachmentUrl": attachmentUrl,
    "title": title,
    "updatedDate": updatedDate,
    "content": content,
  };
}
