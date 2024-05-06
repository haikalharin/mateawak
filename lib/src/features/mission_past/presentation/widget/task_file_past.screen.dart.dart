import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
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

class TaskFilePastScreen extends ConsumerStatefulWidget {
  // final List<TaskDatum> listTask;
  final int index;
  final TaskAnswerPastRemote taskDatum;

  const TaskFilePastScreen(
      {super.key, required this.index, required this.taskDatum});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TaskFilePastScreenState();
}

class _TaskFilePastScreenState extends ConsumerState<TaskFilePastScreen> {
  var groupValue = 0;
  TextEditingController _textController = TextEditingController();


  // int currentQuestionIndex = 0;
  // String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final gamificationData = ref.watch(gamificationDetailState);
        final listTask = gamificationData.chapterData?.single.missionData?.single.taskData;
        if (widget.taskDatum.taskTypeCode ==
            TaskType.ASM.name) {
            if ((widget.taskDatum.listSelectedOptionString??[])
                .isNotEmpty) {
              _textController.text =
                  _textController.text =
              (widget.taskDatum.listSelectedOptionString??[]).single;
            }
        }
        return  Column(
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
                          SizedBox(height: 8,),
                          Text(
                              "Question ${widget.index + 1} of ${listTask?.length}",
                              style: SharedComponent.textStyleCustom(
                                  typographyType: TypographyType.body,
                                  fontColor: ColorTheme.neutral500)),
                        ],
                      ),
                      children: <Widget>[
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20.0),
                              widget.taskDatum.attachmentName != null &&widget.taskDatum.attachmentName != ''
                                  ? Container(
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: RichText(
                                              text: TextSpan(
                                                text:
                                                EtamKawaTranslate.evidence,
                                                style: SharedComponent
                                                    .textStyleCustom(
                                                    typographyType:
                                                    TypographyType.body,
                                                    fontColor: ColorTheme
                                                        .textDark),
                                                children: [
                                                  TextSpan(
                                                    text: '*',
                                                    style: SharedComponent
                                                        .textStyleCustom(
                                                        typographyType:
                                                        TypographyType
                                                            .body,
                                                        fontColor:
                                                        ColorTheme
                                                            .danger500),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Row(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    widget.taskDatum.attachmentName ?? '',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleLarge,
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () async {

                                                  },
                                                  child: Icon(
                                                    Icons.cancel,
                                                    color: ColorTheme
                                                        .backgroundDark,
                                                    size: 25.h,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ))
                                  : Container(),

                              const SizedBox(height: 8.0),
                              SizedBox(
                                height: 150.0,
                                child: TextFormField(
                                  readOnly:
                                  (gamificationData.missionStatusCode ?? 0) >
                                      1,
                                  controller: _textController,
                                  maxLength: 300,
                                  textInputAction: TextInputAction.done,
                                  decoration: InputDecoration(
                                    hintText: EtamKawaTranslate.writeYourAnswer,
                                    hintStyle: TextStyle(
                                        color: ColorTheme.textLightDark),
                                    border: const OutlineInputBorder(),
                                  ),
                                  maxLines: 10,
                                  onChanged: (value) {
                                    setState(() {
                                      if (value.isEmpty) {
                                        ref
                                            .watch(listSelectOptionStringState
                                            .notifier)
                                            .state = [];

                                        _textController.clear();
                                      } else {
                                        ref
                                            .watch(listSelectOptionStringState
                                            .notifier)
                                            .state = [value];
                                      }
                                    });
                                  }, // Allows multiple lines of input
                                ),
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
                                                  " +${widget.taskDatum.answerReward}",
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
            SizedBox(height: 5)
          ],
        );
      },
    );
  }
}
