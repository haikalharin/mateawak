import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/src/constants/etamkawa_empty_state_widget.dart';
import 'package:module_etamkawa/src/features/overview/presentation/controller/overview.controller.dart';
import 'package:module_shared/module_shared.dart';

import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import '../../../shared_component/async_value_widget.dart';
import '../../../shared_component/refreshable_starter_widget.dart';

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
    return WillPopScope(
      onWillPop: () {
        context.pop();
        context.pop();
        return Future.value(false);
      },
      child: Scaffold(
        body: Consumer(builder: (context, ref, child) {
          final ctrl = ref.watch(overviewControllerProvider.notifier);
          final news = ref.watch(newsState);
          final imageNews = ref.watch(imageNewsState);
          Uint8List imageBytes = imageNews.attachmentId != 0
              ? base64Decode(imageNews.formattedName ?? '')
              : Uint8List(1);
          return AsyncValueWidget(
            value: ref.watch(overviewControllerProvider),
            data: (data) {
              return Stack(
                children: [
                  Column(
                    children: [
                      const Divider(
                        height: 0.5,
                      ),
                      Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: ColorTheme.primaryNew,
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
                                  color: ColorTheme.textDark,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100.r))),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Richard Papangayan',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                      color: ColorTheme.textWhite,
                                    ),
                                  ),
                                  Text(
                                    'Supervisor',
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10.sp,
                                      color: ColorTheme.textWhite,
                                    ),
                                  ),
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
                                  Column(
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
                                            Text(
                                              news.title??'',
                                              style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 16.sp,
                                                color: ColorTheme.textDark,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Container(
                                              height: 200,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: MemoryImage(
                                                      imageBytes,
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  color: ColorTheme
                                                      .backgroundWhite,
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(10))),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 16),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            HtmlWidget(news.content ?? ''),
                                          ],
                                        ),
                                      )
                                    ],
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
    );
  }
}
