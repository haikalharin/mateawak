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
  Id? attachId;
  String? title;
  String? fileName;
  String? content;

  NewsResponseRemote({
    this.attachId,
    this.title,
    this.fileName,
    this.content,
  });

  NewsResponseRemote copyWith({
    int? attachId,
    String? title,
    String? fileName,
    String? content,
  }) =>
      NewsResponseRemote(
        attachId: attachId ?? this.attachId,
        title: title ?? this.title,
        fileName: fileName ?? this.fileName,
        content: content ?? this.content,
      );

  factory NewsResponseRemote.fromJson(Map<String, dynamic> json) => NewsResponseRemote(
    attachId: json["attachId"],
    title: json["title"],
    fileName: json["fileName"],
    content: json["content"],
  );

  Map<String, dynamic> toJson() => {
    "attachId": attachId,
    "title": title,
    "fileName": fileName,
    "content": content,
  };
}
