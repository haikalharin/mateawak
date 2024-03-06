import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:module_etamkawa/src/features/overview/domain/news_response.remote.dart';
import 'package:module_etamkawa/src/features/overview/infrastructure/repositories/overview.repository.dart';
import 'package:module_etamkawa/src/features/overview/infrastructure/repositories/overview_local.repository.dart';
import "package:module_etamkawa/src/utils/common_utils.dart" show CommonUtils;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../constants/constant.dart';
import '../../../../shared_component/connection_listener_widget.dart';
import '../../domain/achievement_produksi_response.remote.dart';
import '../../domain/detail_hourly_grafik_response.remote.dart';
import '../../domain/download_attachment_request.remote.dart';
import '../../domain/unit_breakdown_response.remote.dart';
part 'overview.controller.g.dart';

final isScrollProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});

final indexMtdYtdSliderProvider = StateProvider.autoDispose<int>((ref) => 0);

final imageNewsState =
StateProvider.autoDispose<DownloadAttachmentNewsRequestRemote>((ref) => DownloadAttachmentNewsRequestRemote());

final newsState =
StateProvider.autoDispose<NewsResponseRemote>((ref) => NewsResponseRemote());



@riverpod
Future<DownloadAttachmentNewsRequestRemote?> getImage(
    GetImageRef ref) async {
  final isConnectionAvailable = ref.watch(isConnectionAvailableProvider);
final ctrl =  ref.watch(overviewControllerProvider.notifier);
  return isConnectionAvailable
      ? await ref.watch(getNewsImageRemoteProvider(id: ctrl.news.attachmentId).future)
      : await ref.watch(
      getNewsImageLocalProvider(id: ctrl.news.attachmentId).future);
}



@riverpod
class OverviewController extends _$OverviewController {
  NewsResponseRemote news = NewsResponseRemote();
  DownloadAttachmentNewsRequestRemote imageNews = DownloadAttachmentNewsRequestRemote();
  @override
  FutureOr<void> build() async {
    await getNews();
  }


  Future<void> getNews() async {
    final isConnectionAvailable = ref.watch(isConnectionAvailableProvider);
    bool isImageExist = false;
    final repo = isConnectionAvailable
        ?  ref.read(getNewsRemoteProvider.future)
        :  ref.read(
        getNewsLocalProvider.future);
    state = await AsyncValue.guard(() => repo).then((value) async {
      if (value.hasValue && value.value?.attachmentId != null) {
        ref.watch(newsState.notifier).state =
            value.value??NewsResponseRemote();
        news = value.value??NewsResponseRemote();
        await getImage(id: news.attachmentId);
      } else{
        state =  AsyncError(value.error??'',StackTrace.fromString(''));
      }

      return value;
    });

  }

  Future<void> getImage({int? id}) async {
    final isConnectionAvailable = ref.watch(isConnectionAvailableProvider);

    final repo = isConnectionAvailable
        ? ref.read(getNewsImageRemoteProvider(id: id).future)
        : ref.read(getNewsImageLocalProvider(id: id).future);
    var data = await AsyncValue.guard(() => repo).then((value) async {
      if (value.hasValue) {
        ref.watch(imageNewsState.notifier).state =
            value.value??DownloadAttachmentNewsRequestRemote();
        imageNews = value.value ?? DownloadAttachmentNewsRequestRemote();
      }
      return value;
    });

  }

}
