import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/src/constants/etamkawa_empty_state_widget.dart';
import 'package:module_etamkawa/src/features/overview/presentation/controller/overview.controller.dart';
import 'package:module_etamkawa/src/shared_component/visibility_detector_telematry.dart';
import 'package:module_shared/module_shared.dart';

import '../../../constants/telematry.constant.dart';
import '../../../shared_component/async_value_widget.dart';
import '../../../shared_component/refreshable_starter_widget.dart';
import '../../../shared_component/shared_component_etamkawa.dart';
import '../../../utils/custom_html_widget.dart';

class OverviewScreen extends ConsumerStatefulWidget {
  const OverviewScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends ConsumerState<OverviewScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(
      () {
        ref.read(isScrollProvider.notifier).state =
            _scrollController.position.pixels > 100.h;
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  // final List<int> _screenOccupation = [0, 0];

  @override
  Widget build(BuildContext context) {
    // final isScrolled = ref.watch(isScrollProvider);

    // final indexMenuOverview = ref.watch(indexMenuOverviewProvider);
    return VisibilityDetectorTelematry(
      widgetName: TelematryConstant.general,
      child: WillPopScope(
        onWillPop: () {
          context.pop();
          context.pop();
          return Future.value(false);
        },
        child: Scaffold(
          body: Consumer(builder: (context, ref, child) {
            final ctrl = ref.watch(overviewControllerProvider.notifier);
            final news = ref.watch(newsState);
            //final imageNews = ref.watch(imageNewsState);
            final userProfile = ref.watch(userProfileState);
            // Uint8List imageBytes = imageNews.attachmentId != 0
            //     ? base64Decode(imageNews.formattedName ?? '')
            //     : Uint8List(1);
            return AsyncValueWidget(
              value: ref.watch(overviewControllerProvider),
              data: (data) {
                return Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: ColorTheme.primary500,
                              borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(24.0))),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: ColorTheme.primary100,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(100.r))),
                                child: Center(
                                    child: Text(
                                  (userProfile.employeeName ?? '')[0]
                                      .toUpperCase(),
                                  style: SharedComponent.textStyleCustom(
                                      typographyType: TypographyType.largeH2,
                                      fontColor: ColorTheme.textDark),
                                )),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(userProfile.employeeName ?? '',
                                        style: SharedComponent.textStyleCustom(
                                            typographyType:
                                                TypographyType.largeH5,
                                            fontColor: ColorTheme.textWhite)),
                                    Text(userProfile.positionName ?? '',
                                        style: SharedComponent.textStyleCustom(
                                            typographyType: TypographyType.body,
                                            fontColor: ColorTheme.textWhite)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: RefreshableStarterWidget(
                            // scrollController: _scrollController,
                            onRefresh: () async {
                              ctrl.getNews();
                            },
                            slivers: [
                              SliverToBoxAdapter(
                                child: Stack(
                                  children: [
                                    VisibilityDetectorTelematry(
                                      widgetName: TelematryConstant.general,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16, vertical: 16),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(news.title ?? '',
                                                    style: SharedComponent
                                                        .textStyleCustom(
                                                            typographyType:
                                                                TypographyType
                                                                    .largeH5,
                                                            fontColor:
                                                                ColorTheme
                                                                    .textDark)),
                                                const SizedBox(
                                                  height: 8,
                                                ),
                                                news.attachmentPath != null
                                                    ? InkWell(
                                                        onTap: () {
                                                          SharedComponentEtamkawa
                                                              .showImage(
                                                                  context:
                                                                      context,
                                                                  path:
                                                                      news.attachmentPath ??
                                                                          '');
                                                        },
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .fromLTRB(
                                                                  0, 8, 0, 16),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.r),
                                                            child: Image(
                                                              image: FileImage(File(
                                                                  news.attachmentPath ??
                                                                      '')),
                                                              fit: BoxFit
                                                                  .contain,
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    : Container(),
                                                const SizedBox(
                                                  height: 8,
                                                ),
                                                customHtmlWidget(
                                                  news.content ?? '',
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    news.content == null
                        ? EtamkawaEmptyStateWidget(
                            onPressed: () {
                              ref.watch(overviewControllerProvider);
                            },
                            title:
                                'There’s no data yet. Please tap here to Retry',
                          )
                        : Container(),
                  ],
                );
              },
              onError: (p0, p1) => EtamkawaEmptyStateWidget(
                onPressed: () {
                  ref.invalidate(overviewControllerProvider);
                },
                title: 'There’s no data yet. Please tap here to Retry',
              ),
            );
          }),
        ),
      ),
    );
  }
}
