import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:module_etamkawa/module_etamkawa.dart';
import 'package:module_etamkawa/src/features/growth/domain/group_response.remote.dart';
import 'package:module_etamkawa/src/features/growth/presentation/controller/group.controller.dart';
import 'package:module_etamkawa/src/shared_component/custom_dropdown_bottomsheet.dart';
import 'package:module_etamkawa/src/shared_component/refreshable_starter_widget.dart';
import 'package:module_shared/module_shared.dart';

import '../../../constants/constant.dart';
import '../../../constants/image.constant.dart';

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
    const Tab(text: 'Tim'),
    const Tab(text: 'Ranking'),
    const Tab(text: 'Diskusi'),
  ];
  GroupResponseRemote? selectedGroup;
  MissionFilterDatum? selectedMission;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: listTab.length, vsync: this);
    _controller.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    if (_selectedIndex != _controller.index) {
      setState(() {
        _selectedIndex = _controller.index;
      });
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_handleTabSelection);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final ctrlGroup = ref.watch(groupControllerProvider.notifier);
        return FutureBuilder(
          future: _selectedIndex == 0 && _selectedIndex != _controller.index
              ? ctrlGroup.getGroupList()
              : ctrlGroup.getGroupListLocal(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return Scaffold(
                body: Stack(
                  children: [
                    Column(
                      children: [
                        Expanded(
                          child: DefaultTabController(
                            length: listTab.length,
                            initialIndex: _selectedIndex,
                            child: Column(
                              children: [
                                TabBar(
                                  controller: _controller,
                                  labelStyle: SharedComponent.textStyleCustom(
                                    typographyType: TypographyType.medium,
                                  ),
                                  unselectedLabelColor: ColorTheme.neutral500,
                                  tabs: listTab,
                                ),
                                Expanded(
                                  child: Container(
                                    color: ColorTheme.neutral100,
                                    child: TabBarView(
                                      controller: _controller,
                                      children: snapshot.connectionState ==
                                              ConnectionState.done
                                          ? [
                                              _buildTabTeamContent(ctrlGroup),
                                              _buildDummyContent(),
                                              _buildDummyContent(),
                                            ]
                                          : [
                                              const Center(
                                                  child:
                                                      CircularProgressIndicator()),
                                              const Center(
                                                  child:
                                                      CircularProgressIndicator()),
                                              const Center(
                                                  child:
                                                      CircularProgressIndicator())
                                            ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }
          },
        );
      },
    );
  }

  Widget _buildTabTeamContent(GroupController ctrlGroup) {
    return RefreshableStarterWidget(
      onRefresh: () async {},
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return _buildListItem(index, ctrlGroup);
            },
            childCount: 1,
          ),
        ),
      ],
    );
  }

  Widget _buildDummyContent() {
    return RefreshableStarterWidget(
      onRefresh: () async {},
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                height: 100,
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildListItem(int index, GroupController ctrlGroup) {
    List<GroupResponseRemote> groupList = ref.watch(groupListState);
    GroupResponseRemote? initialGroup =
        groupList.isNotEmpty ? groupList.first : null;
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        return Container(
          margin: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                            text: EtamKawaTranslate.group,
                            style: SharedComponent.textStyleCustom(
                              typographyType: TypographyType.paragraph,
                              fontColor: ColorTheme.neutral600,
                            ),
                            children: [
                              TextSpan(
                                text: ' *',
                                style: SharedComponent.textStyleCustom(
                                  typographyType: TypographyType.body,
                                  fontColor: ColorTheme.danger500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomDropDownBottomSheet(
                          value: selectedGroup ??
                              (groupList.isNotEmpty ? groupList.first : null),
                          groupItems: groupList,
                          missionItems: const [],
                          isGroup: true,
                          hint: selectedGroup?.groupName ??
                              (groupList.isNotEmpty
                                  ? groupList.first.groupName!
                                  : EtamKawaTranslate.noData),
                          onPickedGroup: (val) {
                            setState(() {
                              selectedGroup = val;
                              selectedMission =
                                  MissionFilterDatum(missionName: 'All');
                            });
                          },
                          title: EtamKawaTranslate.group,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: EtamKawaTranslate.mission,
                            style: SharedComponent.textStyleCustom(
                              typographyType: TypographyType.paragraph,
                              fontColor: ColorTheme.neutral600,
                            ),
                            children: [
                              TextSpan(
                                text: ' *',
                                style: SharedComponent.textStyleCustom(
                                  typographyType: TypographyType.body,
                                  fontColor: ColorTheme.danger500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomDropDownBottomSheet(
                          groupItems: const [],
                          missionItems: initialGroup != selectedGroup
                              ? selectedGroup != null
                                  ? selectedGroup?.missionData
                                  : initialGroup?.missionData
                              : initialGroup?.missionData,
                          hint: selectedMission != null
                              ? selectedMission!.missionName!
                              : 'All',
                          isGroup: false,
                          onPickedMission: (val) {
                            setState(() {
                              selectedMission = val;
                            });
                          },
                          title: EtamKawaTranslate.mission,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Theme(
                    data: Theme.of(context)
                        .copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      initiallyExpanded: true,
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Summary Team',
                            style: SharedComponent.textStyleCustom(
                              typographyType: TypographyType.largeH5,
                              fontColor: ColorTheme.textDark,
                            ),
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                      children: const <Widget>[SummaryTeamCard()],
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
                  width: MediaQuery.of(context).size.width - 32,
                  height: 200,
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://via.placeholder.com/60'), // Replace with your avatar image URL
                      ),
                      const SizedBox(height: 10),
                      const Text(
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
                      const SizedBox(height: 10),
                      Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: ColorTheme.strokeTertiary,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        ),
                        elevation: 0,
                        margin: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                        child: IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 10.h),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Achievement',
                                    style: SharedComponent.textStyleCustom(
                                        typographyType:
                                            TypographyType.paragraph,
                                        fontColor: ColorTheme.neutral500),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SvgPicture.asset(
                                          ImageConstant.iconAccuracy,
                                          width: 16.sp,
                                          height: 20.sp,
                                          package: Constant.moduleEtamkawa),
                                      Text(
                                        'Rank 1',
                                        style: SharedComponent.textStyleCustom(
                                            typographyType: TypographyType.bold,
                                            fontColor: ColorTheme.neutral600),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10.h),
                                ],
                              ),
                              addVerticalDivider(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 10.h),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Achievement',
                                    style: SharedComponent.textStyleCustom(
                                        typographyType:
                                            TypographyType.paragraph,
                                        fontColor: ColorTheme.neutral500),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SvgPicture.asset(
                                          ImageConstant.iconAccuracy,
                                          width: 16.sp,
                                          height: 20.sp,
                                          package: Constant.moduleEtamkawa),
                                      Text(
                                        'Rank 1',
                                        style: SharedComponent.textStyleCustom(
                                            typographyType: TypographyType.bold,
                                            fontColor: ColorTheme.neutral600),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10.h),
                                ],
                              ),
                              addVerticalDivider(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 10.h),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Achievement',
                                    style: SharedComponent.textStyleCustom(
                                        typographyType:
                                            TypographyType.paragraph,
                                        fontColor: ColorTheme.neutral500),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SvgPicture.asset(
                                          ImageConstant.iconAccuracy,
                                          width: 16.sp,
                                          height: 20.sp,
                                          package: Constant.moduleEtamkawa),
                                      Text(
                                        'Rank 1',
                                        style: SharedComponent.textStyleCustom(
                                            typographyType: TypographyType.bold,
                                            fontColor: ColorTheme.neutral600),
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
