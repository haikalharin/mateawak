import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_response.remote.dart';
import 'package:module_etamkawa/src/features/mission/presentation/controller/mission.controller.dart';
import 'package:module_etamkawa/src/features/task/presentation/widget/reward_dialog.dart';
import 'package:module_etamkawa/src/shared_component/connection_listener_widget.dart';
import 'package:module_etamkawa/src/shared_component/custom_dialog.dart';
import 'package:module_shared/module_shared.dart';

import '../../../../configs/theme/color.theme.dart';
import '../../../main_nav/presentation/controller/main_nav.controller.dart';
import '../../../task/presentation/controller/task.controller.dart';
import '../../domain/task_answer_past.remote.dart';
import '../controller/mission_past.controller.dart';

class TaskRatingPastScreen extends ConsumerStatefulWidget {
  // final List<TaskDatum> listTask;
  final int index;
  final TaskAnswerPastRemote taskDatum;

  const TaskRatingPastScreen(
      {super.key, required this.index, required this.taskDatum});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TaskRatingPastScreenState();
}

class _TaskRatingPastScreenState extends ConsumerState<TaskRatingPastScreen> {
  var groupValue = 0;

  // int currentQuestionIndex = 0;
  // String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final gamificationData = ref.watch(gamificationDetailState);
        return Scaffold(
            backgroundColor: ColorTheme.backgroundLight,
            body: ListView(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  ),
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: ExpansionTile(
                          title: Text(
                            widget.taskDatum.taskCaption ?? '',
                            style: SharedComponent.textStyleCustom(
                                typographyType: TypographyType.medium,
                                fontColor: ColorTheme.textDark),
                          ),
                          children: <Widget>[
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 20.0),
                                  RatingBar.builder(
                                    initialRating:  (widget.taskDatum
                                        .listSelectedOption ??
                                        []).isNotEmpty
                                        ?  (widget.taskDatum
                                        .listSelectedOption ??
                                        []).first.toDouble()
                                        : 0.0,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    itemCount: 5,
                                    itemPadding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                    },
                                  ),
                                  gamificationData.missionStatusCode == 99
                                      ? (widget.taskDatum
                                      .answerReward !=
                                      null &&
                                      widget.taskDatum
                                          .answerReward !=
                                          0)
                                      ? Column(
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Your answer is correct!',
                                              style: SharedComponent
                                                  .textStyleCustom(
                                                  typographyType:
                                                  TypographyType
                                                      .body,
                                                  fontColor: ColorTheme
                                                      .buttonPrimary)
                                            //TextStyle(fontSize: 12.sp)
                                          ),
                                          Center(
                                              child: Container(
                                                height: 24.h,
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: ColorTheme.secondary500,
                                                      size: 12.h,
                                                    ),
                                                    Text(
                                                      " +${widget.taskDatum.taskReward}",
                                                      style: SharedComponent
                                                          .textStyleCustom(
                                                          typographyType:
                                                          TypographyType.body,
                                                          fontColor: ColorTheme
                                                              .neutral600),
                                                    ),
                                                  ],
                                                ),
                                              )),
                                        ],
                                      ),

                                    ],
                                  )
                                      : Column(
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                              'Your answer is incorrect!',
                                              style: SharedComponent
                                                  .textStyleCustom(
                                                  typographyType:
                                                  TypographyType
                                                      .body,
                                                  fontColor:
                                                  ColorTheme
                                                      .danger500)
                                            //TextStyle(fontSize: 12.sp)
                                          ),
                                          Center(
                                              child: Container(
                                                height: 24.h,
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: ColorTheme.secondary500,
                                                      size: 12.h,
                                                    ),
                                                    Text(
                                                      " +${widget.taskDatum.taskReward}",
                                                      style: SharedComponent
                                                          .textStyleCustom(
                                                          typographyType:
                                                          TypographyType.body,
                                                          fontColor: ColorTheme
                                                              .neutral600),
                                                    ),
                                                  ],
                                                ),
                                              )),
                                        ],
                                      ),

                                    ],
                                  )
                                      : Container(),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10)
              ],
            ));
      },
    );
  }
}
