
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_etamkawa/module_etamkawa.dart';
import 'package:module_shared/module_shared.dart';

import '../../../../shared_component/shared_component_etamkawa.dart';
import '../../../task/presentation/controller/task.controller.dart';
import '../../domain/task_answer_past.remote.dart';
import '../controller/mission_past.controller.dart';

class TaskPerformancePastScreen extends ConsumerStatefulWidget {
  // final List<TaskDatum> listTask;
  final int index;
  final TaskAnswerPastRemote taskDatum;

  const TaskPerformancePastScreen(
      {super.key, required this.index, required this.taskDatum});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TaskPerformancePastScreenState();
}

class _TaskPerformancePastScreenState
    extends ConsumerState<TaskPerformancePastScreen> {
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
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Performance",
                            style: SharedComponent.textStyleCustom(
                                typographyType: TypographyType.largeH5,
                                fontColor: ColorTheme.textDark)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        gamificationData.chapterData?.single.missionData?.single
                                        .taskData?.first.attachmentUrl !=
                                    null &&
                                gamificationData
                                        .chapterData
                                        ?.single
                                        .missionData
                                        ?.single
                                        .taskData
                                        ?.first
                                        .attachmentUrl !=
                                    ''
                            ? InkWell(
                                onTap: () {
                                  SharedComponentEtamkawa.showImage(
                                      context: context,
                                      path: gamificationData
                                              .chapterData
                                              ?.single
                                              .missionData
                                              ?.single
                                              .taskData
                                              ?.first
                                              .attachmentUrl ??
                                          '');
                                },
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 8, 0, 16),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.r),
                                      child: InkWell(
                                        onTap: () {
                                          SharedComponentEtamkawa.showImage(
                                              context: context,
                                              path: gamificationData
                                                      .chapterData
                                                      ?.single
                                                      .missionData
                                                      ?.single
                                                      .taskData
                                                      ?.first
                                                      .attachmentUrl ??
                                                  '');
                                        },
                                        child: Image.network(gamificationData
                                                .chapterData
                                                ?.single
                                                .missionData
                                                ?.single
                                                .taskData
                                                ?.first
                                                .attachmentUrl ??
                                            ''),
                                      )),
                                ),
                              )
                            : Container(),
                        const SizedBox(height: 10.0),
                        Text(
                          gamificationData.chapterData?.single.missionData
                                  ?.single.taskData?.first.taskCaption ??
                              '',
                          style: SharedComponent.textStyleCustom(
                              typographyType: TypographyType.medium,
                              fontColor: ColorTheme.textDark),
                        ),
                        const SizedBox(height: 10.0),
                        Text('${EtamKawaTranslate.results}: ${gamificationData.rewardGained}%',
                                        style: SharedComponent
                                            .textStyleCustom(
                                            typographyType:
                                            TypographyType
                                                .body,
                                            fontColor: ColorTheme
                                                .buttonPrimary)
                                    ),
                        const SizedBox(height: 10.0),
                        const Divider(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5)
          ],
        );
      },
    );
  }
}
