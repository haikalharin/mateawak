import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_etamkawa/src/features/overview/domain/news_response.remote.dart';
import 'package:module_etamkawa/src/features/overview/infrastructure/repositories/overview.repository.dart';
import 'package:module_etamkawa/src/features/overview/infrastructure/repositories/overview_local.repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../shared_component/connection_listener_widget.dart';
import '../../domain/download_attachment_request.remote.dart';
part 'overview.controller.g.dart';

final isScrollProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});

final indexMtdYtdSliderProvider = StateProvider.autoDispose<int>((ref) => 0);

final imageNewsState =
    StateProvider.autoDispose<DownloadAttachmentNewsRequestRemote>(
        (ref) => DownloadAttachmentNewsRequestRemote());

final newsState = StateProvider.autoDispose<NewsResponseRemote>(
    (ref) => NewsResponseRemote());

@riverpod
Future<DownloadAttachmentNewsRequestRemote?> getImage(GetImageRef ref) async {
  final isConnectionAvailable = ref.watch(isConnectionAvailableProvider);
  final ctrl = ref.watch(overviewControllerProvider.notifier);
  return isConnectionAvailable
      ? await ref
          .watch(getNewsImageRemoteProvider(id: 0).future)
      : await ref
          .watch(getNewsImageLocalProvider(id: 0).future);
}

@riverpod
class OverviewController extends _$OverviewController {
  NewsResponseRemote news = NewsResponseRemote();
  DownloadAttachmentNewsRequestRemote imageNews =
      DownloadAttachmentNewsRequestRemote();
  @override
  FutureOr<void> build() async {
    await getNews();
  }

  Future<void> getNews() async {
    final isConnectionAvailable = ref.watch(isConnectionAvailableProvider);
    final repo = isConnectionAvailable
        ? ref.read(getNewsRemoteProvider.future)
        : ref.read(getNewsLocalProvider.future);
    state = await AsyncValue.guard(() => repo).then((value) async {
      if (value.hasValue && value.value?.content != null) {
        ref.watch(newsState.notifier).state =
            value.value ?? NewsResponseRemote();
        news = value.value ?? NewsResponseRemote();
        // await getImage(id: news.attachmentId);
      } else {
        state = AsyncError(value.error ?? '', StackTrace.fromString(''));
      }

      return value;
    });
  }

  Future<void> getImage({int? id}) async {
    final isConnectionAvailable = ref.watch(isConnectionAvailableProvider);

    final repo = isConnectionAvailable
        ? ref.read(getNewsImageRemoteProvider(id: id).future)
        : ref.read(getNewsImageLocalProvider(id: id).future);
    await AsyncValue.guard(() => repo).then((value) async {
      if (value.hasValue) {
        ref.watch(imageNewsState.notifier).state =
            value.value ?? DownloadAttachmentNewsRequestRemote();
        imageNews = value.value ?? DownloadAttachmentNewsRequestRemote();
      }
      return value;
    });
  }
}
