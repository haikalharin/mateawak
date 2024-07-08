import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_etamkawa/src/shared_component/async_value_widget.dart';
import 'package:module_etamkawa/src/shared_component/refreshable_starter_widget.dart';
import 'package:module_shared/module_shared.dart';

import '../../../../module_etamkawa.dart';
import '../../mission/domain/gamification_response.remote.dart';
import '../../mission/presentation/controller/mission.controller.dart';
import '../../task/presentation/controller/task.controller.dart';

class GrowthScreen extends ConsumerStatefulWidget {
  const GrowthScreen({super.key});

  @override
  ConsumerState<GrowthScreen> createState() => _GrowthScreenState();
}

class _GrowthScreenState extends ConsumerState<GrowthScreen>
    with WidgetsBindingObserver, SingleTickerProviderStateMixin {
  late TabController _controller;
  int _selectedIndex = 0;
  List<Widget> listTab = [
    Tab(text: 'Tim'),
    Tab(text: 'Ranking'),
    Tab(text: 'Diskusi'),
  ];

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: listTab.length, vsync: this);
    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
      return AsyncValueWidget(
          value: ref.watch(missionControllerProvider),
          data: (data) {
            return Scaffold(
              body: Stack(
                children: [
                  Column(
                    children: [
                      Expanded(
                          child: DefaultTabController(
                        length: 3,
                        initialIndex: 0,
                        child: Column(
                          children: [
                            TabBar(
                                onTap: (index) {
                                  switch (index) {
                                    case 0:
                                      setState(() {
                                        _selectedIndex = index;
                                      });

                                      break;
                                    case 1:
                                      setState(() {
                                        _selectedIndex = index;
                                      });
                                      break;
                                    case 2:
                                      setState(() {
                                        _selectedIndex = index;
                                      });
                                      break;
                                  }
                                },
                                labelStyle: SharedComponent.textStyleCustom(
                                    typographyType: TypographyType.medium),
                                unselectedLabelColor: ColorTheme.neutral500,
                                tabs: listTab),
                            Expanded(
                                child: Container(
                              color: ColorTheme.neutral100,
                              child: TabBarView(children: [
                                RefreshableStarterWidget(
                                    onRefresh: () async {},
                                    slivers: [
                                      SliverList(delegate:
                                          SliverChildBuilderDelegate(
                                              (context, index) {
                                        return Container(
                                          height: 100,
                                        );
                                      }))
                                    ]),
                                RefreshableStarterWidget(
                                    onRefresh: () async {},
                                    slivers: [
                                      SliverList(delegate:
                                          SliverChildBuilderDelegate(
                                              (context, index) {
                                        return Container(
                                          height: 100,
                                        );
                                      }))
                                    ]),
                                RefreshableStarterWidget(
                                    onRefresh: () async {},
                                    slivers: [
                                      SliverList(delegate:
                                          SliverChildBuilderDelegate(
                                              (context, index) {
                                        return Container(
                                          height: 100,
                                        );
                                      }))
                                    ])
                              ]),
                            ))
                          ],
                        ),
                      )),
                    ],
                  )
                ],
              ),
            );
          });
    });
  }

  Widget _buildListItem(int index, MissionController ctrl,
      TaskController ctrlTask, List<GamificationResponseRemote> gamification) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        return Container(
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: ExpansionTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        // widget.taskDatum.taskCaption ??
                        '',
                        style: SharedComponent.textStyleCustom(
                            typographyType: TypographyType.mediumH6,
                            fontColor: ColorTheme.textDark),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                          // "${EtamKawaTranslate.question} ${widget.index + 1} ${EtamKawaTranslate.of} ${listTask?.length}"
                          '',
                          style: SharedComponent.textStyleCustom(
                              typographyType: TypographyType.body,
                              fontColor: ColorTheme.neutral500)),
                    ],
                  ),
                  children: <Widget>[
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     const SizedBox(height: 20.0),
                    //     ListView.builder(
                    //       physics: const NeverScrollableScrollPhysics(),
                    //       shrinkWrap: true,
                    //       itemCount: widget.taskDatum.answerData?.length,
                    //       itemBuilder: (BuildContext context, int index) {
                    //         var listAnswer = widget.taskDatum.answerData;
                    //
                    //         return Container(
                    //           margin: const EdgeInsets.symmetric(vertical: 8.0),
                    //           decoration: BoxDecoration(
                    //             border: Border.all(
                    //               color: (widget.taskDatum.listSelectedOption ??
                    //                           [])
                    //                       .contains(listAnswer?[index].answerId)
                    //                   ? ColorTheme.primary500
                    //                   : ColorTheme
                    //                       .backgroundLight, // Border color based on selection
                    //             ),
                    //             borderRadius:
                    //                 BorderRadius.circular(8.0), // Border radius
                    //           ),
                    //           child: RadioListTile<int>(
                    //             title: Text(
                    //               listAnswer?[index].answerCaption ?? '',
                    //               style: SharedComponent.textStyleCustom(
                    //                   typographyType: TypographyType.medium,
                    //                   fontColor:
                    //                       listAnswer?[index].isCorrectAnswer ==
                    //                               true
                    //                           ? ColorTheme.buttonPrimary
                    //                           : ColorTheme.textDark),
                    //             ),
                    //             value: listAnswer?[index].answerId ?? 0,
                    //             groupValue:
                    //                 (widget.taskDatum.listSelectedOption ?? [])
                    //                         .isNotEmpty
                    //                     ? (widget.taskDatum
                    //                                 .listSelectedOption ??
                    //                             [])
                    //                         .first
                    //                     : 0,
                    //             onChanged: (int? value) {},
                    //           ),
                    //         );
                    //       },
                    //     ),
                    //     gamificationData.missionStatusCode == 99
                    //         ? (widget.taskDatum.answerReward != null &&
                    //                 widget.taskDatum.answerReward != 0)
                    //             ? Column(
                    //                 children: [
                    //                   const SizedBox(
                    //                     height: 10,
                    //                   ),
                    //                   Row(
                    //                     crossAxisAlignment:
                    //                         CrossAxisAlignment.center,
                    //                     mainAxisAlignment:
                    //                         MainAxisAlignment.spaceBetween,
                    //                     children: [
                    //                       Text(
                    //                           EtamKawaTranslate
                    //                               .yourAnswerIsCorrect,
                    //                           style: SharedComponent
                    //                               .textStyleCustom(
                    //                                   typographyType:
                    //                                       TypographyType.body,
                    //                                   fontColor: ColorTheme
                    //                                       .buttonPrimary)
                    //                           //TextStyle(fontSize: 12.sp)
                    //                           ),
                    //                       Center(
                    //                           child: SizedBox(
                    //                         height: 24.h,
                    //                         child: Row(
                    //                           mainAxisAlignment:
                    //                               MainAxisAlignment.spaceEvenly,
                    //                           children: [
                    //                             Icon(
                    //                               Icons.star,
                    //                               color:
                    //                                   ColorTheme.secondary500,
                    //                               size: 12.h,
                    //                             ),
                    //                             Text(
                    //                               " +${widget.taskDatum.answerReward}",
                    //                               style: SharedComponent
                    //                                   .textStyleCustom(
                    //                                       typographyType:
                    //                                           TypographyType
                    //                                               .body,
                    //                                       fontColor: ColorTheme
                    //                                           .neutral600),
                    //                             ),
                    //                           ],
                    //                         ),
                    //                       )),
                    //                     ],
                    //                   ),
                    //                 ],
                    //               )
                    //             : Column(
                    //                 children: [
                    //                   const SizedBox(
                    //                     height: 10,
                    //                   ),
                    //                   Row(
                    //                     crossAxisAlignment:
                    //                         CrossAxisAlignment.center,
                    //                     mainAxisAlignment:
                    //                         MainAxisAlignment.spaceBetween,
                    //                     children: [
                    //                       Text(
                    //                           EtamKawaTranslate
                    //                               .yourAnswerIsInCorrect,
                    //                           style: SharedComponent
                    //                               .textStyleCustom(
                    //                                   typographyType:
                    //                                       TypographyType.body,
                    //                                   fontColor:
                    //                                       ColorTheme.danger500)
                    //                           //TextStyle(fontSize: 12.sp)
                    //                           ),
                    //                       Center(
                    //                           child: SizedBox(
                    //                         height: 24.h,
                    //                         child: Row(
                    //                           mainAxisAlignment:
                    //                               MainAxisAlignment.spaceEvenly,
                    //                           children: [
                    //                             Icon(
                    //                               Icons.star,
                    //                               color:
                    //                                   ColorTheme.secondary500,
                    //                               size: 12.h,
                    //                             ),
                    //                             Text(
                    //                               " +${widget.taskDatum.answerReward}",
                    //                               style: SharedComponent
                    //                                   .textStyleCustom(
                    //                                       typographyType:
                    //                                           TypographyType
                    //                                               .body,
                    //                                       fontColor: ColorTheme
                    //                                           .neutral600),
                    //                             ),
                    //                           ],
                    //                         ),
                    //                       )),
                    //                     ],
                    //                   ),
                    //                 ],
                    //               )
                    //         : Container(),
                    //   ],
                    // )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
