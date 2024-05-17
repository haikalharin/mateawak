import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_shared/module_shared.dart';

import '../../domain/task_answer_past.remote.dart';
import '../controller/mission_past.controller.dart';

class TaskSingleChoicePastScreen extends ConsumerStatefulWidget {
  // final List<TaskDatum> listTask;
  final int index;
  final TaskAnswerPastRemote taskDatum;

  const TaskSingleChoicePastScreen(
      {super.key, required this.index, required this.taskDatum});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TaskSingleChoicePastScreenState();
}

class _TaskSingleChoicePastScreenState
    extends ConsumerState<TaskSingleChoicePastScreen> {
  var groupValue = 0;

  // int currentQuestionIndex = 0;
  // String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final gamificationData = ref.watch(gamificationDetailState);
        final listTask =
            gamificationData.chapterData?.single.missionData?.single.taskData;
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
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.taskDatum.taskCaption ?? '',
                            style: SharedComponent.textStyleCustom(
                                typographyType: TypographyType.mediumH6,
                                fontColor: ColorTheme.textDark),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
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
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: widget.taskDatum.answerData?.length,
                              itemBuilder: (BuildContext context, int index) {
                                var listAnswer = widget.taskDatum.answerData;

                                return Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: (widget.taskDatum
                                                      .listSelectedOption ??
                                                  [])
                                              .contains(
                                                  listAnswer?[index].answerId)
                                          ? ColorTheme.primary500
                                          : ColorTheme
                                              .backgroundLight, // Border color based on selection
                                    ),
                                    borderRadius: BorderRadius.circular(
                                        8.0), // Border radius
                                  ),
                                  child: RadioListTile<int>(
                                    title: Text(
                                      listAnswer?[index].answerCaption ?? '',
                                      style: SharedComponent.textStyleCustom(
                                          typographyType: TypographyType.medium,
                                          fontColor: listAnswer?[index]
                                                      .isCorrectAnswer ==
                                                  true
                                              ? ColorTheme.buttonPrimary
                                              : ColorTheme.textDark),
                                    ),
                                    value: listAnswer?[index].answerId ?? 0,
                                    groupValue:
                                        (widget.taskDatum.listSelectedOption ??
                                                    [])
                                                .isNotEmpty
                                            ? (widget.taskDatum
                                                        .listSelectedOption ??
                                                    [])
                                                .first
                                            : 0,
                                    onChanged: (int? value) {},
                                  ),
                                );
                              },
                            ),
                            gamificationData.missionStatusCode == 99
                                ? (widget.taskDatum.answerReward != null &&
                                        widget.taskDatum.answerReward != 0)
                                    ? Column(
                                        children: [
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                  EtamKawaTranslate
                                                      .yourAnswerIsCorrect,
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
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: ColorTheme
                                                          .secondary500,
                                                      size: 12.h,
                                                    ),
                                                    Text(
                                                      " +${widget.taskDatum.answerReward}",
                                                      style: SharedComponent
                                                          .textStyleCustom(
                                                              typographyType:
                                                                  TypographyType
                                                                      .body,
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                  EtamKawaTranslate
                                                      .yourAnswerIsInCorrect,
                                                  style: SharedComponent
                                                      .textStyleCustom(
                                                          typographyType:
                                                              TypographyType
                                                                  .body,
                                                          fontColor: ColorTheme
                                                              .danger500)
                                                  //TextStyle(fontSize: 12.sp)
                                                  ),
                                              Center(
                                                  child: SizedBox(
                                                height: 24.h,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: ColorTheme
                                                          .secondary500,
                                                      size: 12.h,
                                                    ),
                                                    Text(
                                                      " +${widget.taskDatum.answerReward}",
                                                      style: SharedComponent
                                                          .textStyleCustom(
                                                              typographyType:
                                                                  TypographyType
                                                                      .body,
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
      },
    );
  }
}
