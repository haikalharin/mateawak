import 'dart:io';

import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/features/overview/domain/download_attachment_request.remote.dart';
import 'package:module_etamkawa/src/features/overview/domain/news_response.remote.dart';
import 'package:module_shared/module_shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../constants/constant.dart';
import '../../../../constants/function_utils.dart';
import '../../../offline_mode/infrastructure/repositories/isar.repository.dart';

part 'overview.repository.g.dart';

@riverpod
FutureOr<NewsResponseRemote> getNewsRemote(GetNewsRemoteRef ref) async {
  final connect = ref.read(connectProvider.notifier);
  // final response = {
  //   "attachId": 120,
  //   "title": "Tentang Kami",
  //   "fileName": "btech.id",
  //   "content": Constant.htmlNews,
  // };
  // final result = NewsResponseRemote.fromJson(response);
  final isarInstance = await ref.watch(isarInstanceProvider.future);
  var imageBefore = isarInstance.newsResponseRemotes
      .filter()
      .attachmentPathIsNotEmpty()
      .findAll();
  NewsResponseRemote news = NewsResponseRemote();

  final response = await connect.get(
    modul: ModuleType.etamkawaNews,
    path: "/api/news/get_last_news?${Constant.apiVer}",
  );
  final result = NewsResponseRemote.fromJson(response.result?.content);

  if (response.statusCode == 200) {
    String imagePath = '';
    File file = File('');

    await AsyncValue.guard(() => imageBefore).then((value) async {
      if (result.attachmentUrl != null) {
        if ((value.value??[]).isEmpty || value.value?.first.attachmentPath == null ||
            value.value?.first.updatedDate != result.updatedDate) {
          final responseImage = await connect.downloadImage(
            url: result.attachmentUrl ?? '',
          );
          if (responseImage.statusCode == 200) {
            file = await asyncMethodSaveFile(responseImage.data);
            imagePath = file.path;
            // if((value.value??[]).isNotEmpty || value.value?.first.attachmentPath != null ) {
            //   var fileDelete = File(value.value?.first.attachmentPath ?? '');
            //   await fileDelete.delete();
            // }
          }
        } else {
          imagePath = value.value?.first.attachmentPath ?? '';
        }
      }
    });
    news = NewsResponseRemote(
        attachmentUrl: result.attachmentUrl,
        attachmentPath: imagePath,
        title: result.title,
        content: result.content,
        updatedDate: result.updatedDate);

    await isarInstance.writeTxn(() async {
      await isarInstance.newsResponseRemotes.put(news);
    });
    ref.keepAlive();
  }
  return news;
}

@riverpod
Future<DownloadAttachmentNewsRequestRemote> getNewsImageRemote(
    GetNewsImageRemoteRef ref,
    {int? id}) async {
  final response = await ref.read(connectProvider.notifier).post(
      modul: ModuleType.etamkawaNews,
      path: "/api/attachment/download_attachment?${Constant.apiVer}",
      body: {"attachmentId": id});
  final result = DownloadAttachmentNewsRequestRemote.fromJson(
      {"attachmentId": id, "formattedName": response.result?.content});
  if (response.statusCode == 200) {
    final isarInstance = await ref.watch(isarInstanceProvider.future);
    await isarInstance.writeTxn(() async {
      await isarInstance.downloadAttachmentNewsRequestRemotes.put(result);
    });
  }
  if (response.statusCode == 200) {
    final isarInstance = await ref.watch(isarInstanceProvider.future);
    await isarInstance.writeTxn(() async {
      await isarInstance.downloadAttachmentNewsRequestRemotes.put(result);
    });
  }
  ref.keepAlive();
  return result;
}
