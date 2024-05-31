import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';

import '../../../../../module_etamkawa.dart';
import '../../../task/presentation/controller/task.controller.dart';
import '../../domain/task_answer_past.remote.dart';
import '../controller/mission_past.controller.dart';

class TaskAssignmentPastScreen extends ConsumerStatefulWidget {
  // final List<TaskDatum> listTask;
  final int index;
  final TaskAnswerPastRemote taskDatum;

  const TaskAssignmentPastScreen(
      {super.key, required this.index, required this.taskDatum});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TaskAssignmentPastScreenState();
}

class _TaskAssignmentPastScreenState
    extends ConsumerState<TaskAssignmentPastScreen> {
  var groupValue = 0;
  final TextEditingController _textController = TextEditingController();
  String stringAnswer = '';

  // int currentQuestionIndex = 0;
  // String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final gamificationData = ref.watch(gamificationDetailState);
        if (widget.taskDatum.taskTypeCode == TaskType.ASM.name) {
          if ((widget.taskDatum.listSelectedOptionString ?? []).isNotEmpty) {
            stringAnswer =
                (widget.taskDatum.listSelectedOptionString ?? []).single;
          }
        }
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
                    child: Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        title: Text(
                          widget.taskDatum.taskCaption ?? '',
                          style: SharedComponent.textStyleCustom(
                              typographyType: TypographyType.mediumH6,
                              fontColor: ColorTheme.textDark),
                        ),
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20.0),
                                widget.taskDatum.answerAttachmentUrl != null &&
                                        widget.taskDatum.answerAttachmentUrl != ''
                                    ? Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                child: RichText(
                                                  text: TextSpan(
                                                    text: EtamKawaTranslate
                                                        .evidence,
                                                    style: SharedComponent
                                                        .textStyleCustom(
                                                            typographyType:
                                                                TypographyType
                                                                    .largeH5,
                                                            fontColor:
                                                                ColorTheme
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
                                              const SizedBox(
                                                height: 12,
                                              ),
                                              Image.network(widget.taskDatum
                                                  .answerAttachmentUrl??'')
                                            ],
                                          ),
                                        ],
                                      )
                                    : Container(),
                                const SizedBox(height: 10.0),
                                Text(
                                  EtamKawaTranslate.answerAssignment,
                                  style: SharedComponent.textStyleCustom(
                                      typographyType: TypographyType.largeH5,
                                      fontColor: ColorTheme.textDark),
                                ),
                                const SizedBox(height: 10.0),
                                Text(stringAnswer,
                                    style: SharedComponent.textStyleCustom(
                                        typographyType: TypographyType.smallH8,
                                        fontColor: ColorTheme.neutral600)),
                                gamificationData.missionStatusCode == 99
                                    ? widget.taskDatum.feedbackComment !=
                                                null &&
                                            widget.taskDatum.feedbackComment !=
                                                ''
                                        ? Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                      '${EtamKawaTranslate.yourAnswerIsRatedAs} ${EtamKawaUtils().getMissionScore(widget.taskDatum.qualitativeScoreId ?? 0)}',
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
                                                                  fontColor:
                                                                      ColorTheme
                                                                          .neutral600),
                                                        ),
                                                      ],
                                                    ),
                                                  )),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Divider(),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text(EtamKawaTranslate.feedback,
                                                  style: SharedComponent
                                                      .textStyleCustom(
                                                          typographyType:
                                                              TypographyType
                                                                  .largeH5,
                                                          fontColor: ColorTheme
                                                              .neutral600)
                                                  //TextStyle(fontSize: 12.sp)
                                                  ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Text(
                                                  widget.taskDatum
                                                          .feedbackComment ??
                                                      '',
                                                  style: SharedComponent
                                                      .textStyleCustom(
                                                          typographyType:
                                                              TypographyType
                                                                  .smallH8,
                                                          fontColor: ColorTheme
                                                              .neutral600)
                                                  //TextStyle(fontSize: 12.sp)
                                                  )
                                            ],
                                          )
                                        : Container()
                                    : gamificationData.missionStatusCode == 3
                                        ? Column(
                                            children: [
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                  EtamKawaTranslate.notYetRated,
                                                  style: SharedComponent
                                                      .textStyleCustom(
                                                          typographyType:
                                                              TypographyType
                                                                  .body,
                                                          fontColor: ColorTheme
                                                              .neutral500)
                                                  //TextStyle(fontSize: 12.sp)
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
