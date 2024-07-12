import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:module_etamkawa/src/shared_component/async_value_widget.dart';
import 'package:module_etamkawa/src/shared_component/refreshable_starter_widget.dart';
import 'package:module_shared/module_shared.dart';

import '../../../constants/constant.dart';
import '../../../constants/image.constant.dart';
import '../../mission/presentation/controller/mission.controller.dart';

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
          final ctrl = ref.watch(missionControllerProvider.notifier);
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
                                            childCount: 1,
                                              (context, index) {
                                        return _buildListItem(index, ctrl);
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

  Widget _buildListItem(int index, MissionController ctrl) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Theme(
                    data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      initiallyExpanded : true,
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // widget.taskDatum.taskCaption ??
                            'Summary Team',
                            style: SharedComponent.textStyleCustom(
                                typographyType: TypographyType.largeH5,
                                fontColor: ColorTheme.textDark),
                          ),
                          const SizedBox(
                            height: 8,)
                        ],
                      ),
                      children: const <Widget>[
                        SummaryTeamCard()
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}


class SummaryTeamCard extends StatelessWidget {
  const SummaryTeamCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Stack(
          children: [
            Center(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                child: Image.network(
                  'https://via.placeholder.com/300', // Replace with your image URL
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width-32,
                  height: 200,
                ),
              ),
            ),
            Column(
              children: [
                Container(height: 150,),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage('https://via.placeholder.com/60'), // Replace with your avatar image URL
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Solid Buddies',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Coal Transport - KM6 - Produksi',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 10),
                      Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: ColorTheme.strokeTertiary,
                          ),
                          borderRadius:
                          BorderRadius.all(Radius.circular(10.r)),
                        ),
                        elevation: 0,
                        margin: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                        child: IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 10.h),

                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text('Achievement',
                                    style: SharedComponent
                                        .textStyleCustom(
                                        typographyType:
                                        TypographyType
                                            .paragraph,
                                        fontColor: ColorTheme
                                            .neutral500),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SvgPicture.asset(
                                          ImageConstant.iconAccuracy,
                                          width: 16.sp,
                                          height: 20.sp,
                                          package: Constant
                                              .moduleEtamkawa),
                                      Text('Rank 1',
                                        style: SharedComponent
                                            .textStyleCustom(
                                            typographyType:
                                            TypographyType
                                                .bold,
                                            fontColor: ColorTheme
                                                .neutral600),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 10.h),
                                ],
                              ),
                              addVerticalDivider(),
                              Column(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 10.h),

                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text('Achievement',
                                    style: SharedComponent
                                        .textStyleCustom(
                                        typographyType:
                                        TypographyType
                                            .paragraph,
                                        fontColor: ColorTheme
                                            .neutral500),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SvgPicture.asset(
                                          ImageConstant.iconAccuracy,
                                          width: 16.sp,
                                          height: 20.sp,
                                          package: Constant
                                              .moduleEtamkawa),
                                      Text('Rank 1',
                                        style: SharedComponent
                                            .textStyleCustom(
                                            typographyType:
                                            TypographyType
                                                .bold,
                                            fontColor: ColorTheme
                                                .neutral600),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 10.h),
                                ],
                              ),
                              addVerticalDivider(),
                              Column(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 10.h),

                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text('Achievement',
                                    style: SharedComponent
                                        .textStyleCustom(
                                        typographyType:
                                        TypographyType
                                            .paragraph,
                                        fontColor: ColorTheme
                                            .neutral500),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SvgPicture.asset(
                                          ImageConstant.iconAccuracy,
                                          width: 16.sp,
                                          height: 20.sp,
                                          package: Constant
                                              .moduleEtamkawa),
                                      Text('Rank 1',
                                        style: SharedComponent
                                            .textStyleCustom(
                                            typographyType:
                                            TypographyType
                                                .bold,
                                            fontColor: ColorTheme
                                                .neutral600),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 10.h),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),

      ],
    );
  }
  Widget addHorizontalDivider() {
    return Divider(
      thickness: 1.h,
      height: 1.h,
      color: ColorTheme.strokeTertiary,
    );
  }

  Widget addVerticalDivider() {
    return VerticalDivider(
      width: 1.sp,
      thickness: 1.sp,
      color: ColorTheme.strokeTertiary,
    );
  }
}
