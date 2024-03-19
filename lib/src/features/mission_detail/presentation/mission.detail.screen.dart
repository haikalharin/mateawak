import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/module_etamkawa.dart';
import 'package:module_etamkawa/src/constants/constant.dart';
import 'package:module_etamkawa/src/constants/image.constant.dart';
import 'package:module_etamkawa/src/features/task/presentation/controller/task.controller.dart';
import 'package:module_etamkawa/src/features/task/presentation/widget/task_multi_choice.screen.dart';
import 'package:module_etamkawa/src/features/task/presentation/widget/task_sinlgle_choice.screen.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';

import '../../../configs/theme/color.theme.dart';
import '../../../shared_component/shared_component_etamkawa.dart';
import '../../mission/domain/gamification_response.remote.dart';

class MissionDetailScreen extends ConsumerStatefulWidget {
  final GamificationResponseRemote gamification;

  const MissionDetailScreen({super.key, required this.gamification});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MissionDetailScreenState();
}

class _MissionDetailScreenState extends ConsumerState<MissionDetailScreen> {
  final _scrollController = ScrollController();
  double progress = 0.0;

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
    return WillPopScope(
        onWillPop: () {
          context.pop();
          context.pop();
          return Future.value(false);
        },
        child: Scaffold(
            backgroundColor: ColorTheme.neutral0,
            appBar: SharedComponentEtamkawa.appBar(
              context: context,
              title: 'Mission Detail',
              brightnessIconStatusBar: Brightness.light,
            ),
            body: Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
              final gamification = ref.watch(gamificationState.notifier).state;
              final ctrlTask = ref.watch(taskControllerProvider.notifier);

              return Column(children: [
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: ColorTheme.strokeTertiary,
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.r),
                        bottomRight: Radius.circular(10.r)),
                  ),
                  elevation: 0,
                  margin: const EdgeInsets.all(0),
                  child: Container(
                    margin: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      gamification.chapterData![0].chapterName!,
                                      style: SharedComponent.textStyleCustom(
                                          typographyType:
                                              TypographyType.largeH5,
                                          fontColor: ColorTheme.neutral600)
                                      // TextStyle(
                                      //     fontWeight: FontWeight.bold,
                                      //     fontSize: 16.sp,
                                      //     color: ColorTheme.neutral600),
                                      ),
                                  Text(
                                      'Mission: ${gamification.chapterData![0].missionData![0].missionName!}',
                                      style: SharedComponent.textStyleCustom(
                                          typographyType:
                                              TypographyType.paragraph,
                                          fontColor: ColorTheme.neutral500))
                                  // TextStyle(
                                  //     fontSize: 12.sp,
                                  //     color: ColorTheme.neutral500)),
                                ],
                              ),
                              DecoratedBox(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.r)),
                                    color: (gamification.missionStatusId == 0)
                                        ? ColorTheme.neutral300
                                        : ColorTheme.secondary100),
                                child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8.w, vertical: 4.h),
                                    child: Text(gamification.missionStatus!,
                                        style: SharedComponent.textStyleCustom(
                                            typographyType:
                                                TypographyType.paragraph,
                                            fontColor:
                                                (gamification.missionStatusId ==
                                                        0)
                                                    ? ColorTheme.neutral600
                                                    : ColorTheme.secondary500))
                                    // TextStyle(
                                    //     fontSize: 12.sp,
                                    //     fontWeight: FontWeight.bold,
                                    //     color:
                                    //         (gamification.missionStatusId == 0)
                                    //             ? ColorTheme.neutral600
                                    //             : ColorTheme.secondary500),

                                    ),
                              ),
                            ]),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text('Chapter goals:',
                            style: SharedComponent.textStyleCustom(
                                typographyType: TypographyType.bold,
                                fontColor: ColorTheme.neutral600)),
                        //   TextStyle(
                        //       fontWeight: FontWeight.bold,
                        //       fontSize: 12.sp,
                        //       color: ColorTheme.neutral600),
                        // ),
                        Text(gamification.chapterData![0].chapterGoal!,
                            style: SharedComponent.textStyleCustom(
                                typographyType: TypographyType.paragraph,
                                fontColor: ColorTheme.neutral500)),
                        //   TextStyle(
                        //       fontSize: 12.sp, color: ColorTheme.neutral500),
                        // ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Row(
                          children: [
                            Text('Focus behavior: ',
                                style: SharedComponent.textStyleCustom(
                                    typographyType: TypographyType.bold,
                                    fontColor: ColorTheme.neutral600)),
                            //   TextStyle(
                            //       fontWeight: FontWeight.bold,
                            //       fontSize: 12.sp,
                            //       color: ColorTheme.neutral600),
                            // ),
                            Text(
                                gamification.chapterData![0].competencyName ??
                                    '',
                                style: SharedComponent.textStyleCustom(
                                    typographyType: TypographyType.paragraph,
                                    fontColor: ColorTheme.neutral500)),
                            //   TextStyle(
                            //       fontSize: 12.sp,
                            //       color: ColorTheme.neutral500),
                            // ),
                            const Spacer(),
                            DecoratedBox(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.r)),
                                  color: ColorTheme.primary100),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.w, vertical: 4.h),
                                child: Text(
                                    gamification.chapterData![0]
                                            .peopleCategoryName ??
                                        '',
                                    style: SharedComponent.textStyleCustom(
                                        typographyType:
                                            TypographyType.paragraph,
                                        fontColor: ColorTheme.neutral500)
                                    //   TextStyle(
                                    //       fontSize: 12.sp,
                                    //       color: ColorTheme.primary500),
                                    // ),
                                    ),
                              ),
                            )
                          ],
                        ),
                        Card(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: ColorTheme.strokeTertiary,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r)),
                            ),
                            elevation: 0,
                            margin: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                            child: IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 10.h),
                                      SvgPicture.asset(ImageConstant.iconReward,
                                          width: 16.sp,
                                          height: 20.sp,
                                          package: Constant.moduleEtamkawa),
                                      SizedBox(height: 6.h),
                                      Text('Rewards',
                                          style:
                                              SharedComponent.textStyleCustom(
                                                  typographyType:
                                                      TypographyType.bold,
                                                  fontColor:
                                                      ColorTheme.neutral600)
                                          // (
                                          //     fontWeight: FontWeight.bold,
                                          //     fontSize: 12.sp,
                                          //     color: ColorTheme.neutral600),
                                          ),
                                      Text(
                                          '${gamification.chapterData![0].missionData![0].missionReward.toString()} total',
                                          style:
                                              SharedComponent.textStyleCustom(
                                                  typographyType:
                                                      TypographyType.paragraph,
                                                  fontColor:
                                                      ColorTheme.neutral500)),
                                      //   TextStyle(
                                      //       fontSize: 12.sp,
                                      //       color: ColorTheme.neutral500),
                                      // ),
                                      SizedBox(height: 10.h),
                                    ],
                                  ),
                                  addVerticalDividerIfQuizz(gamification
                                          .chapterData![0]
                                          .missionData![0]
                                          .missionTypeName !=
                                      'Assignment'),
                                  addTaskIfQuizz(
                                      gamification
                                              .chapterData![0]
                                              .missionData![0]
                                              .missionTypeName !=
                                          'Assignment',
                                      gamification.chapterData![0]
                                          .missionData![0].taskData!.length),
                                  VerticalDivider(
                                    thickness: 1.sp,
                                    color: ColorTheme.strokeTertiary,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 10.h),
                                      SvgPicture.asset(
                                          ImageConstant.iconDuration,
                                          width: 16.sp,
                                          height: 20.sp,
                                          package: Constant.moduleEtamkawa),
                                      SizedBox(
                                        height: 8.h,
                                      ),
                                      Text('Duration',
                                          style:
                                              SharedComponent.textStyleCustom(
                                                  typographyType:
                                                      TypographyType.bold,
                                                  fontColor:
                                                      ColorTheme.neutral600)),
                                      //   TextStyle(
                                      //       fontWeight: FontWeight.bold,
                                      //       fontSize: 12.sp,
                                      //       color: ColorTheme.neutral600),
                                      // ),
                                      Text('5 days',
                                          style:
                                              SharedComponent.textStyleCustom(
                                                  typographyType:
                                                      TypographyType.paragraph,
                                                  fontColor:
                                                      ColorTheme.neutral500)),
                                      //   TextStyle(
                                      //       fontSize: 12.sp,
                                      //       color: ColorTheme.neutral500),
                                      // ),
                                      SizedBox(height: 10.h),
                                    ],
                                  ),
                                ],
                              ),
                            )),
                      
                    ],
                  ),
                ),),
                const Divider(
                  height: 0.5,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: ColorTheme.strokeTertiary,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  ),
                  elevation: 0,
                  margin: const EdgeInsets.all(15),
                  child: Container(
                      width: MediaQuery.sizeOf(context).width,
                      margin: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Before you start',
                              style: SharedComponent.textStyleCustom(
                                  typographyType: TypographyType.bold,
                                  fontColor: ColorTheme.neutral600)
                              // TextStyle(
                              //     fontWeight: FontWeight.bold,
                              //     fontSize: 14.sp,
                              //     color: ColorTheme.neutral600),
                              ),
                          SizedBox(height: 8.h),
                          Text(
                              gamification.chapterData![0].missionData![0]
                                  .missionInstruction!,
                              style: SharedComponent.textStyleCustom(
                                  typographyType: TypographyType.paragraph,
                                  fontColor: ColorTheme.neutral600)
                              // TextStyle(
                              //     fontSize: 12.sp,
                              //     color: ColorTheme.neutral600)
                              ),
                        ],
                      )),
                ),
                const Spacer(),
                Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: ColorTheme.strokeTertiary,
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.r),
                          topRight: Radius.circular(10.r)),
                    ),
                    elevation: 0,
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Column(
                      children: [
                        const Divider(
                          height: 0.5,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: () {
                                    context
                                        .goNamed(taskMissionEtamkawa, extra: {
                                      Constant.listTask: (gamification
                                          .chapterData![0]
                                          .missionData![0]
                                          .taskData),
                                    });
                                  },
                                  child: Text('Start',
                                      style: SharedComponent.textStyleCustom(
                                          typographyType:
                                              TypographyType.paragraph)))),
                        ),
                      ],
                    ))
              )]);
            })));
  }
}

Widget addVerticalDividerIfQuizz(bool isAssignment) {
  return 
  VerticalDivider(
    color: ColorTheme.strokeTertiary,
    thickness: 2,
  );
}


Widget addTaskIfQuizz(bool isAssignment, int totalTask) {
  return 
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [
      SvgPicture.asset(ImageConstant.iconTask,
          width: 16.sp,
          height: 20.sp,
          package: Constant.moduleEtamkawa),
      const SizedBox(
        height: 5,
      ),
      Text('Task',
          style: SharedComponent.textStyleCustom(
              typographyType: TypographyType.bold,
              fontColor: ColorTheme.neutral600)
          // TextStyle(
          //     fontWeight: FontWeight.bold,
          //     fontSize: 12.sp,
          //     color: ColorTheme.neutral600),
          ),
      Text(totalTask.toString(),
          style: //TextStyle(fontSize: 12.sp, color: ColorTheme.neutral500),
              SharedComponent.textStyleCustom(
                  typographyType: TypographyType.paragraph,
                  fontColor: ColorTheme.neutral500)),
      SizedBox(height: 10.h),
    ],
  );
}