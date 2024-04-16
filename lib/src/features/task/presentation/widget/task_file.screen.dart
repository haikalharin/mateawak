import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:module_etamkawa/src/configs/theme/color.theme.dart';
import 'package:module_etamkawa/src/shared_component/custom_dialog.dart';
import 'package:module_shared/module_shared.dart';

import '../../../../component/widget/dashed_border_widget.dart';
import '../../../../constants/constant.dart';
import '../../../../constants/function_utils.dart';
import '../../../../constants/image.constant.dart';
import '../../../main_nav/presentation/controller/main_nav.controller.dart';
import '../../../mission/presentation/controller/mission.controller.dart';
import '../controller/task.controller.dart';

class TaskFileScreen extends ConsumerStatefulWidget {
  // final List<TaskDatum> listTask;

  const TaskFileScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TaskFileScreenState();
}

class _TaskFileScreenState extends ConsumerState<TaskFileScreen> {
  final TextEditingController _textController = TextEditingController();
  String? _docFileBase64;
  String? _docFilePath;
  var groupValue = 0;
  String? _docFilePathName;
  bool isInit = true;

  // int currentQuestionIndex = 0;
  // String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final ctrl = ref.watch(taskControllerProvider.notifier);
        final ctrlMainNav = ref.read(mainNavControllerProvider.notifier);
        final ctrlMission = ref.read(missionControllerProvider.notifier);
        final currentQuestionIndex = ref.watch(currentIndexState.notifier);
        final attachment = ref.watch(attachmentPathState.notifier);
        final attachmentName = ref.watch(attachmentNameState.notifier);
        final listSelectedOptionString = ref.watch(listSelectOptionStringState);
        final currentQuestionProgress = ref.watch(currentProgressState);
        final lengthAnswer = ref.watch(listTaskState).length;
        final listTask = ref.watch(listTaskState);
        final gamificationData = ref.watch(gamificationState);
        if (ref.watch(previousTypeTaskState.notifier).state ==
                TaskType.STX.name ||
            ref.watch(nextTypeTaskState.notifier).state == TaskType.STX.name) {
          if (isInit) {
            if (ref
                .watch(listSelectOptionStringState.notifier)
                .state
                .isNotEmpty) {
              _textController.text =
                  ref.watch(listSelectOptionStringState.notifier).state.single;
            }
          }
          isInit = false;
        }

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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              "${currentQuestionIndex.state + 1}/${listTask.length}",
                              style: SharedComponent.textStyleCustom(
                                  typographyType: TypographyType.largeH5,
                                  fontColor: ColorTheme.textDark)),
                          Container(
                            width: 75.h,
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      color: ColorTheme.secondary100,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.r))),
                                  child: Center(
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
                                          " +${listTask[currentQuestionIndex.state].taskReward}",
                                          style:
                                              SharedComponent.textStyleCustom(
                                                  typographyType:
                                                      TypographyType.body,
                                                  fontColor:
                                                      ColorTheme.secondary500),
                                        ),
                                      ],
                                    ),
                                  )),
                                ),
                                Icon(
                                  Icons.info,
                                  color: ColorTheme.primary500,
                                  size: 24.h,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: FileImage(File(
                                        listTask[currentQuestionIndex.state]
                                                .attachmentPath ??
                                            '')),
                                    fit: BoxFit.cover,
                                  ),
                                  color: ColorTheme.backgroundWhite,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              listTask[currentQuestionIndex.state]
                                      .taskCaption ??
                                  '',
                              style: SharedComponent.textStyleCustom(
                                  typographyType: TypographyType.medium,
                                  fontColor: ColorTheme.textDark),
                            ),
                            const Divider(),
                            const SizedBox(height: 20.0),
                            attachment.state != ''
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
                                            child: Expanded(
                                              child: RichText(
                                                text: TextSpan(
                                                  text:
                                                      'Evidence (one file only)',
                                                  style: SharedComponent
                                                      .textStyleCustom(
                                                          typographyType:
                                                              TypographyType
                                                                  .body,
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
                                                    attachmentName.state ?? '',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleLarge,
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () async {
                                                    await File(attachment.state)
                                                        .delete()
                                                        .whenComplete(() {
                                                      setState(() {
                                                        ref
                                                            .read(
                                                                attachmentNameState
                                                                    .notifier)
                                                            .state = '';
                                                        ref
                                                            .read(
                                                                attachmentPathState
                                                                    .notifier)
                                                            .state = '';
                                                      });
                                                    });
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
                                : InkWell(
                                    onTap: () {
                                      if ((gamificationData.missionStatusCode ??
                                              0) <=
                                          1) {
                                        pickDocFile();
                                      }
                                    },
                                    child: DottedBorder(
                                      color: ColorTheme.primary500,
                                      radius: Radius.circular(12),
                                      strokeWidth: 3,
                                      //thickness of dash/dots
                                      dashPattern: [10, 6],
                                      child: Container(
                                          height: 150,
                                          color: ColorTheme.bgGreenLight,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Icon(
                                                    Icons.upload_file_rounded,
                                                    color:
                                                        ColorTheme.primary500,
                                                    size: 40.h,
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            1.5,
                                                        child: Expanded(
                                                          child: Text(
                                                            'Drop your files here or click to upload',
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .titleLarge,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            1.5,
                                                        child: Expanded(
                                                          child: Text(
                                                            "Allowed files .jpg, .jpeg, .png, .gif, .pdf, .doc",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyLarge,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),
                            const SizedBox(height: 8.0),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Expanded(
                                child: Text(
                                  'Please ensure that your file is in the correct format.',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: ColorTheme.textLightDark,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            const SizedBox(height: 8.0),
                            SizedBox(
                              height: 150.0,
                              child: TextFormField(
                                readOnly:
                                    (gamificationData.missionStatusCode ?? 0) >
                                        1,
                                controller: _textController,
                                maxLength: 100,
                                textInputAction: TextInputAction.done,
                                decoration: InputDecoration(
                                  hintText: 'Write your comment here..',
                                  hintStyle: TextStyle(
                                      color: ColorTheme.textLightDark),
                                  border: const OutlineInputBorder(),
                                ),
                                maxLines: 10,
                                onChanged: (value) {
                                  setState(() {
                                    if (value.isNotEmpty) {
                                      if (listSelectedOptionString.isNotEmpty) {
                                        ref
                                            .watch(listSelectOptionStringState
                                                .notifier)
                                            .state
                                            .clear();
                                      }
                                      ref
                                          .watch(listSelectOptionStringState
                                              .notifier)
                                          .state = [value];
                                    }
                                  });
                                }, // Allows multiple lines of input
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: ColorTheme.backgroundWhite,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0))),
                  padding: const EdgeInsets.all(16.0),
                  width: double.infinity,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          0 < currentQuestionIndex.state && lengthAnswer != 1
                              ? Expanded(
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.black),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white),
                                    ),
                                    onPressed: () {
                                      ctrl.prevQuestion().whenComplete(() {
                                        currentQuestionIndex.state--;
                                        ref
                                            .watch(
                                                currentProgressState.notifier)
                                            .state--;
                                        if (ref
                                                .watch(previousTypeTaskState
                                                    .notifier)
                                                .state ==
                                            TaskType.STX.name) {
                                          ref
                                                  .watch(
                                                      listSelectOptionStringState
                                                          .notifier)
                                                  .state =
                                              ref
                                                  .watch(
                                                      listSelectOptionPrevStringState
                                                          .notifier)
                                                  .state;
                                        } else {
                                          ref
                                                  .watch(listSelectOptionState
                                                      .notifier)
                                                  .state =
                                              ref
                                                  .watch(
                                                      listSelectOptionPrevState
                                                          .notifier)
                                                  .state;
                                        }
                                      });
                                    },
                                    child: Text(
                                      'Previous',
                                    ),
                                  ),
                                )
                              : Container(),
                          SizedBox(width: 8),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                if (listSelectedOptionString.isNotEmpty) {
                                  if ((currentQuestionIndex.state + 1) <
                                          lengthAnswer &&
                                      lengthAnswer != 1) {
                                    ctrl
                                        .nextQuestion(isLast: false)
                                        .whenComplete(() async {
                                      await ctrl
                                          .saveAnswer(
                                              listTask[currentQuestionIndex
                                                          .state]
                                                      .taskId ??
                                                  0,
                                              isLast: false,
                                              attachment: attachment.state,
                                              listSelectedOption:
                                                  listSelectedOptionString,
                                              type: listTask[
                                                          currentQuestionIndex
                                                              .state]
                                                      .taskTypeCode ??
                                                  '')
                                          .whenComplete(() {
                                        currentQuestionIndex.state++;
                                        ref
                                            .watch(
                                                currentProgressState.notifier)
                                            .state++;
                                        if (ref
                                                    .watch(nextTypeTaskState
                                                        .notifier)
                                                    .state ==
                                                TaskType.STX.name ||
                                            ref
                                                    .watch(nextTypeTaskState
                                                        .notifier)
                                                    .state ==
                                                TaskType.ASM.name) {
                                          ref
                                                  .watch(
                                                      listSelectOptionStringState
                                                          .notifier)
                                                  .state =
                                              ref
                                                  .watch(
                                                      listSelectOptionNextStringState
                                                          .notifier)
                                                  .state;
                                        } else {
                                          ref
                                                  .watch(listSelectOptionState
                                                      .notifier)
                                                  .state =
                                              ref
                                                  .watch(
                                                      listSelectOptionNextState
                                                          .notifier)
                                                  .state;
                                        }

                                        _textController.clear();
                                        isInit = true;
                                      });
                                    });
                                  } else {
                                    ctrl
                                        .saveAnswer(
                                            listTask[currentQuestionIndex.state]
                                                    .taskId ??
                                                0,
                                            isLast: true,
                                            attachment: attachment.state,
                                            listSelectedOption:
                                                listSelectedOptionString,
                                            type: listTask[currentQuestionIndex
                                                        .state]
                                                    .taskTypeCode ??
                                                '')
                                        .whenComplete(() {
                                      if (((currentQuestionProgress) * 100) ~/
                                              listTask.length <
                                          100) {
                                        ref
                                            .watch(
                                                currentProgressState.notifier)
                                            .state++;
                                      }

                                      ref
                                          .watch(listSelectOptionStringState
                                              .notifier)
                                          .state
                                          .clear();
                                      _textController.clear();
                                      isInit = true;
                                      if (ref
                                          .watch(nextTypeTaskState
                                          .notifier)
                                          .state ==
                                          TaskType.STX.name ||
                                          ref
                                              .watch(nextTypeTaskState
                                              .notifier)
                                              .state ==
                                              TaskType.ASM.name) {
                                        ref
                                            .watch(
                                            listSelectOptionStringState
                                                .notifier)
                                            .state =
                                            ref
                                                .watch(
                                                listSelectOptionNextStringState
                                                    .notifier)
                                                .state;
                                      } else {
                                        ref
                                            .watch(listSelectOptionState
                                            .notifier)
                                            .state =
                                            ref
                                                .watch(
                                                listSelectOptionNextState
                                                    .notifier)
                                                .state;
                                      }
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return CustomDialog(
                                              title:
                                                  "Are you sure want to submit your ${(gamificationData.chapterData?.single.missionData?.single.missionTypeName == "Assignment" ? "assignment" : "answers")}",
                                              content:
                                                  "Are you sure want to leave",
                                              label: "Submit",
                                              type: DialogType.mission,
                                              onClosed: () async => {
                                                    await ctrl
                                                        .putAnswerFinal()
                                                        .whenComplete(() async {
                                                      await ctrl
                                                          .changeStatusTask()
                                                          .whenComplete(
                                                              () async {
                                                        await ctrlMission
                                                            .getMissionList()
                                                            .whenComplete(
                                                                () {
                                                                  SchedulerBinding.instance.addPostFrameCallback((_) {
                                                                    Navigator.of(context).pop();
                                                                    Navigator.of(context).pop();
                                                                  });
                                                                });
                                                      });
                                                    })
                                                  });
                                        },
                                      );
                                    });
                                  }
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text(
                                            'Please write and fill your answer')),
                                  );
                                }
                              },
                              child: Text(
                                (currentQuestionIndex.state + 1) <
                                        listTask.length
                                    ? 'Next'
                                    : 'Finish',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ));
      },
    );
  }

  void _showPicker(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: Wrap(
                children: [
                  ListTile(
                    leading: const Icon(Icons.file_present),
                    title: const Text('File'),
                    onTap: () async {
                      Navigator.pop(context);
                      pickDocFile();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  Future<void> pickDocFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['doc', 'jpg', 'jpeg', 'png', 'gif', 'pdf'],
    );

    if (result != null) {
      var fileDuplicate =
          await asyncMethodUploadFile(file: result.files.single);
      setState(() {
        ref.read(attachmentNameState.notifier).state = fileDuplicate.name;
        ref.read(attachmentPathState.notifier).state = fileDuplicate.path ?? '';
      });
    } else {
      // User canceled the picker
    }
  }
}
