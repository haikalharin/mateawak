
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_shared/module_shared.dart';

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
        final listTask = gamificationData.chapterData?.single.missionData?.single.taskData;


        return Column(
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
                      title:  Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.taskDatum.taskCaption ?? '',
                            style: SharedComponent.textStyleCustom(
                                typographyType: TypographyType.mediumH6,
                                fontColor: ColorTheme.textDark),
                          ),
                          const SizedBox(height: 8,),
                          Text(
                              "${EtamKawaTranslate.question} ${widget.index + 1} ${EtamKawaTranslate.of} ${listTask?.length}",
                              style: SharedComponent.textStyleCustom(
                                  typographyType: TypographyType.body,
                                  fontColor: ColorTheme.neutral500)),
                        ],
                      ),
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20.0),
                            RatingBar.builder(
                              ignoreGestures: true,
                              initialRating: (widget.taskDatum
                                  .listSelectedOption ??
                                  []).isNotEmpty
                                  ? (widget.taskDatum
                                  .listSelectedOption ??
                                  []).first.toDouble()
                                  : 3.0,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemPadding:
                              const EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) =>
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
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
                                  crossAxisAlignment: CrossAxisAlignment
                                      .center,
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Text(EtamKawaTranslate.yourAnswerIsCorrect,
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
                                        child: SizedBox(
                                          height: 24.h,
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: ColorTheme
                                                    .secondary500,
                                                size: 12.h,
                                              ),
                                              Text(
                                                " +${widget.taskDatum
                                                    .answerReward}",
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
                                  crossAxisAlignment: CrossAxisAlignment
                                      .center,
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Text(
                                        EtamKawaTranslate.yourAnswerIsInCorrect,
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
                                        child: SizedBox(
                                          height: 24.h,
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: ColorTheme
                                                    .secondary500,
                                                size: 12.h,
                                              ),
                                              Text(
                                                " +${widget.taskDatum
                                                    .answerReward}",
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
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5)
          ],
        );
      } );
  }
}
