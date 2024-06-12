import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:module_etamkawa/src/configs/theme/color.theme.dart';
import 'package:module_etamkawa/src/constants/constant.dart';
import 'package:module_etamkawa/src/features/task/presentation/widget/reward_dialog.dart';
import 'package:module_etamkawa/src/shared_component/connection_listener_widget.dart';
import 'package:module_etamkawa/src/shared_component/custom_dialog.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';

import '../../../../../module_etamkawa.dart';
import '../../../../shared_component/instruction_dialog.dart';
import '../../../../shared_component/shared_component_etamkawa.dart';
import '../../../main_nav/presentation/controller/main_nav.controller.dart';
import '../../../mission/domain/gamification_response.remote.dart';
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

  // String? _docFileBase64;
  // String? _docFilePath;
  var groupValue = 0;

  //String? _docFilePathName;
  bool isInit = true;
  bool isSubmitted = false;

  // int currentQuestionIndex = 0;
  // String? selectedOption;
  @override
  void initState() {
    _textController.clear();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final ctrl = ref.watch(taskControllerProvider.notifier);
        //final ctrlMainNav = ref.read(mainNavControllerProvider.notifier);
        final ctrlMission = ref.read(missionControllerProvider.notifier);
        final currentQuestionIndex = ref.watch(currentIndexState.notifier);
        final attachment = ref.watch(attachmentPathState.notifier);
        final attachmentName = ref.watch(attachmentNameState.notifier);
        final listSelectedOptionString = ref.watch(listSelectOptionStringState);
        final currentQuestionProgress = ref.watch(currentProgressState);
        final lengthAnswer = ref.watch(listTaskState).length;
        final listTask = ref.watch(listTaskState);
        final gamificationData = ref.watch(gamificationState);
        final isConnectionAvailable = ref.watch(isConnectionAvailableProvider);
        final submitStatusTask = ref.watch(submitStatusTaskState.notifier);
        final isMandatory = gamificationData.chapterData?.single.missionData
                ?.single.isMandatoryAttachment ??
            false;
        debugPrint('is mandatory attachment : ${isMandatory.toString()}');
        if (ref.watch(currentTypeTaskState.notifier).state ==
            TaskType.ASM.name) {
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
                              "${EtamKawaTranslate.task} ${currentQuestionIndex.state + 1}/${listTask.length}",
                              style: SharedComponent.textStyleCustom(
                                  typographyType: TypographyType.largeH5,
                                  fontColor: ColorTheme.textDark)),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                margin: EdgeInsets.only(right: 4.sp),
                                decoration: BoxDecoration(
                                    color: ColorTheme.secondary100,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.r))),
                                child: Center(
                                    child: SizedBox(
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
                                        style: SharedComponent.textStyleCustom(
                                            typographyType: TypographyType.body,
                                            fontColor: ColorTheme.secondary500),
                                      ),
                                    ],
                                  ),
                                )),
                              ),
                              InkWell(
                                onTap: () {
                                  showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (context) {
                                      return InstructionDialog(
                                          title: EtamKawaTranslate.instructions,
                                          content: gamificationData
                                                  .chapterData
                                                  ?.first
                                                  .missionData
                                                  ?.first
                                                  .missionInstruction ??
                                              '',
                                          labelButton: 'Ok');
                                    },
                                  );
                                },
                                child: Icon(
                                  Icons.info,
                                  color: ColorTheme.primary500,
                                  size: 24.h,
                                ),
                              ),
                            ],
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
                            listTask[currentQuestionIndex.state]
                                            .attachmentPath !=
                                        null &&
                                    listTask[currentQuestionIndex.state]
                                            .attachmentPath !=
                                        ''
                                ? InkWell(
                                    onTap: () {
                                      SharedComponentEtamkawa.showImage(
                                          context: context,
                                          path: listTask[currentQuestionIndex
                                                      .state]
                                                  .attachmentPath ??
                                              '');
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 8, 0, 16),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        child: Image(
                                          image: FileImage(File(listTask[
                                                      currentQuestionIndex
                                                          .state]
                                                  .attachmentPath ??
                                              '')),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  )
                                : Container(),
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
                            attachmentName.state != ''
                                ? Column(
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
                                          SizedBox(
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
                                                  if (isMandatory)
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
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    attachmentName.state,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleLarge,
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () async {
                                                    await File(attachment.state)
                                                        .delete()
                                                        .whenComplete(() async {
                                                      ref.refresh(
                                                          taskControllerProvider);
                                                      await ctrl
                                                          .saveAnswer(
                                                              listTask[currentQuestionIndex
                                                                          .state]
                                                                      .taskId ??
                                                                  0,
                                                              isLast: false,
                                                              attachment: '',
                                                              attachmentName:
                                                                  '',
                                                              listSelectedOption: [
                                                                _textController
                                                                    .text
                                                              ],
                                                              type: listTask[currentQuestionIndex
                                                                          .state]
                                                                      .taskTypeCode ??
                                                                  '',
                                                              taskGroup: listTask[
                                                                          currentQuestionIndex
                                                                              .state]
                                                                      .taskGroup ??
                                                                  '')
                                                          .whenComplete(
                                                              () async {
                                                        ref.refresh(
                                                            taskControllerProvider);
                                                        await ctrl
                                                            .putAnswerFinal();
                                                      }).whenComplete(() {
                                                        ref.refresh(
                                                            taskControllerProvider);
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
                                  )
                                : InkWell(
                                    onTap: () {
                                      if ((gamificationData.missionStatusCode ??
                                              0) <=
                                          1) {
                                        _showPicker(context,
                                            ctrl: ctrl,
                                            listTask: listTask,
                                            currentQuestionIndex:
                                                currentQuestionIndex.state);
                                      }
                                    },
                                    child: DottedBorder(
                                      color: ColorTheme.primary500,
                                      radius: const Radius.circular(12),
                                      strokeWidth: 3,
                                      //thickness of dash/dots
                                      dashPattern: const [10, 6],
                                      child: Container(
                                          height: 150,
                                          color:
                                              ColorThemeEtamkawa.bgGreenLight,
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
                                                      SizedBox(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            1.5,
                                                        child: Text(
                                                          EtamKawaTranslate
                                                              .dropYourFile,
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .titleLarge,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            1.5,
                                                        child: Text(
                                                          "Allowed files .jpg, .jpeg, .png, .gif, .pdf, .doc",
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyLarge,
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
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                EtamKawaTranslate.pleaseEnsure,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: ColorTheme.textLightDark,
                                ),
                              ),
                            ),
                            const SizedBox(
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
                                maxLength: 1000,
                                textInputAction: TextInputAction.done,
                                decoration: InputDecoration(
                                  hintText: EtamKawaTranslate.writeYourAnswer,
                                  hintStyle: TextStyle(
                                      color: ColorTheme.textLightDark),
                                  border: const OutlineInputBorder(),
                                ),
                                maxLines: 10,
                                onTapOutside: (value) async {
                                  await ctrl
                                      .saveAnswer(
                                          listTask[currentQuestionIndex.state]
                                                  .taskId ??
                                              0,
                                          isLast: false,
                                          listSelectedOption: [
                                            _textController.text
                                          ],
                                          type: listTask[currentQuestionIndex
                                                      .state]
                                                  .taskTypeCode ??
                                              '',
                                          taskGroup: listTask[
                                                      currentQuestionIndex
                                                          .state]
                                                  .taskGroup ??
                                              '')
                                      .whenComplete(() async {
                                    await ctrl.putAnswerFinal(
                                        isSubmitted: isSubmitted);
                                  }).whenComplete(() {
                                    if (_textController.text.isEmpty) {
                                      ref
                                          .watch(listSelectOptionStringState
                                              .notifier)
                                          .state = [];

                                      _textController.clear();
                                    } else {
                                      ref
                                          .watch(listSelectOptionStringState
                                              .notifier)
                                          .state = [_textController.text];
                                    }
                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                  });
                                },
                                onEditingComplete: () async {
                                  await ctrl
                                      .saveAnswer(
                                          listTask[currentQuestionIndex.state]
                                                  .taskId ??
                                              0,
                                          isLast: false,
                                          listSelectedOption: [
                                            _textController.text
                                          ],
                                          type: listTask[currentQuestionIndex
                                                      .state]
                                                  .taskTypeCode ??
                                              '',
                                          taskGroup: listTask[
                                                      currentQuestionIndex
                                                          .state]
                                                  .taskGroup ??
                                              '')
                                      .whenComplete(() async {
                                    await ctrl.putAnswerFinal();
                                  }).whenComplete(() {
                                    setState(() {
                                      if (_textController.text.isEmpty) {
                                        ref
                                            .watch(listSelectOptionStringState
                                                .notifier)
                                            .state = [];

                                        _textController.clear();
                                      } else {
                                        ref
                                            .watch(listSelectOptionStringState
                                                .notifier)
                                            .state = [_textController.text];
                                      }
                                    });
                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                  });
                                },
                                onChanged: (value) {
                                  setState(() {
                                    if (_textController.text.isEmpty) {
                                      ref
                                          .watch(listSelectOptionStringState
                                              .notifier)
                                          .state = [];

                                      _textController.clear();
                                    } else {
                                      ref
                                          .watch(listSelectOptionStringState
                                              .notifier)
                                          .state = [_textController.text];
                                    }
                                  });
                                },
                              ),
                            ),
                            gamificationData.missionStatusCode == 99
                                ? (listTask[currentQuestionIndex.state]
                                                .answerReward !=
                                            null &&
                                        listTask[currentQuestionIndex.state]
                                                .answerReward !=
                                            0)
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
                                            ],
                                          ),
                                        ],
                                      )
                                    : Column(
                                        children: [
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                              EtamKawaTranslate
                                                  .yourAnswerIsInCorrect,
                                              style: SharedComponent
                                                  .textStyleCustom(
                                                      typographyType:
                                                          TypographyType.body,
                                                      fontColor:
                                                          ColorTheme.danger500)
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
                                    onPressed: () async {
                                      if (submitStatusTask.state !=
                                          SubmitStatus.inProgress) {
                                        submitStatusTask.state =
                                            SubmitStatus.inProgress;
                                        setState(() async {
                                          await ctrl
                                              .currentQuestion(
                                                  employeeMissionId:
                                                      gamificationData
                                                              .employeeMissionId ??
                                                          0,
                                                  pagePosition:
                                                      PagePosition.PREV)
                                              .whenComplete(() {
                                            currentQuestionIndex.state--;
                                            ref
                                                .watch(currentProgressState
                                                    .notifier)
                                                .state--;
                                            if (ref
                                                        .watch(
                                                            currentTypeTaskState
                                                                .notifier)
                                                        .state ==
                                                    TaskType.STX.name ||
                                                ref
                                                        .watch(
                                                            currentTypeTaskState
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
                                                          listSelectOptionCurrentStringState
                                                              .notifier)
                                                      .state;
                                              ref
                                                      .watch(attachmentNameState
                                                          .notifier)
                                                      .state =
                                                  ref
                                                      .watch(
                                                          attachmentNameCurrentState
                                                              .notifier)
                                                      .state;
                                              ref
                                                      .watch(attachmentPathState
                                                          .notifier)
                                                      .state =
                                                  ref
                                                      .watch(
                                                          attachmentPathCurrentState
                                                              .notifier)
                                                      .state;
                                              submitStatusTask.state =
                                                  SubmitStatus.success;
                                            } else {
                                              ref
                                                      .watch(
                                                          listSelectOptionState
                                                              .notifier)
                                                      .state =
                                                  ref
                                                      .watch(
                                                          listSelectOptionCurrentState
                                                              .notifier)
                                                      .state;
                                              submitStatusTask.state =
                                                  SubmitStatus.success;
                                            }
                                          });
                                        });
                                      }
                                    },
                                    child: Text(
                                      EtamKawaTranslate.previous,
                                    ),
                                  ),
                                )
                              : Container(),
                          const SizedBox(width: 8),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () async {
                                if (submitStatusTask.state !=
                                    SubmitStatus.inProgress) {
                                  submitStatusTask.state =
                                      SubmitStatus.inProgress;
                                  if (listSelectedOptionString.isNotEmpty) {
                                    if ((isMandatory &&
                                            attachmentName.state != '') ||
                                        !isMandatory) {
                                      if ((currentQuestionIndex.state + 1) <
                                              lengthAnswer &&
                                          lengthAnswer != 1) {
                                        await ctrl
                                            .saveAnswer(
                                                listTask[currentQuestionIndex
                                                            .state]
                                                        .taskId ??
                                                    0,
                                                isLast: false,
                                                attachment: attachment.state,
                                                attachmentName:
                                                    attachmentName.state,
                                                listSelectedOption:
                                                    listSelectedOptionString,
                                                type: listTask[
                                                            currentQuestionIndex
                                                                .state]
                                                        .taskTypeCode ??
                                                    '',
                                                taskGroup: listTask[
                                                            currentQuestionIndex
                                                                .state]
                                                        .taskGroup ??
                                                    '')
                                            .whenComplete(() async {
                                          await ctrl
                                              .putAnswerFinal()
                                              .whenComplete(() async {
                                            ctrl
                                                .currentQuestion(
                                                    employeeMissionId:
                                                        gamificationData
                                                                .employeeMissionId ??
                                                            0,
                                                    pagePosition:
                                                        PagePosition.NEXT)
                                                .whenComplete(() async {
                                              currentQuestionIndex.state++;
                                              ref
                                                  .watch(currentProgressState
                                                      .notifier)
                                                  .state++;

                                              if (ref
                                                          .watch(
                                                              currentTypeTaskState
                                                                  .notifier)
                                                          .state ==
                                                      TaskType.STX.name ||
                                                  ref
                                                          .watch(
                                                              currentTypeTaskState
                                                                  .notifier)
                                                          .state ==
                                                      TaskType.ASM.name) {
                                                ref
                                                    .watch(
                                                        listSelectOptionStringState
                                                            .notifier)
                                                    .state
                                                    .clear();
                                                ref
                                                        .watch(
                                                            listSelectOptionStringState
                                                                .notifier)
                                                        .state =
                                                    ref
                                                        .watch(
                                                            listSelectOptionCurrentStringState
                                                                .notifier)
                                                        .state;
                                                ref
                                                        .watch(
                                                            attachmentNameState
                                                                .notifier)
                                                        .state =
                                                    ref
                                                        .watch(
                                                            attachmentNameCurrentState
                                                                .notifier)
                                                        .state;
                                                ref
                                                        .watch(
                                                            attachmentPathState
                                                                .notifier)
                                                        .state =
                                                    ref
                                                        .watch(
                                                            attachmentPathCurrentState
                                                                .notifier)
                                                        .state;
                                                submitStatusTask.state =
                                                    SubmitStatus.success;
                                              } else {
                                                ref
                                                        .watch(
                                                            listSelectOptionState
                                                                .notifier)
                                                        .state =
                                                    ref
                                                        .watch(
                                                            listSelectOptionCurrentState
                                                                .notifier)
                                                        .state;
                                                submitStatusTask.state =
                                                    SubmitStatus.success;
                                              }
                                              _textController.clear();
                                              isInit = true;
                                            });
                                          });
                                        });
                                      } else {
                                        ctrl
                                            .saveAnswer(
                                                listTask[currentQuestionIndex
                                                            .state]
                                                        .taskId ??
                                                    0,
                                                isLast: true,
                                                attachment: attachment.state,
                                                attachmentName:
                                                    attachmentName.state,
                                                listSelectedOption:
                                                    listSelectedOptionString,
                                                type: listTask[
                                                            currentQuestionIndex
                                                                .state]
                                                        .taskTypeCode ??
                                                    '',
                                                taskGroup: listTask[
                                                            currentQuestionIndex
                                                                .state]
                                                        .taskGroup ??
                                                    '')
                                            .whenComplete(() async {
                                          if (((currentQuestionProgress + 1) *
                                                      100) ~/
                                                  listTask.length <
                                              100) {
                                            ref
                                                .watch(currentProgressState
                                                    .notifier)
                                                .state++;
                                          }
                                          await ctrl
                                              .putAnswerFinal()
                                              .whenComplete(() async {
                                            submitStatusTask.state =
                                                SubmitStatus.success;
                                            showDialog(
                                              barrierDismissible: false,
                                              context: context,
                                              builder: (context) {
                                                //return RewardDialog(rewardResponse: resultSubmissionData, isConnectionAvailable: isConnectionAvailable,);}
                                                return CustomDialog(
                                                    title: EtamKawaTranslate
                                                        .confirmation,
                                                    content: EtamKawaTranslate
                                                        .areYouSureSubmitAnswer,
                                                    label: EtamKawaTranslate
                                                        .submit,
                                                    type: DialogType.mission,
                                                    isConnectionAvailable:
                                                        isConnectionAvailable,
                                                    onClosed: () async {
                                                      showLoadingDialog(
                                                          context);
                                                      var status =
                                                          ctrl.putAnswerFinal(
                                                              isSubmitted:
                                                                  true);

                                                      await AsyncValue.guard(
                                                              () => status)
                                                          .then((value) async {
                                                        isSubmitted = true;
                                                        await ctrlMission
                                                            .getMissionList()
                                                            .whenComplete(() {
                                                          if (value.value ==
                                                              true) {
                                                            hideLoadingDialog(
                                                                context);
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                            showDialog(
                                                                barrierDismissible:
                                                                    false,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  return RewardDialog(
                                                                    resultSubmissionState: ref
                                                                        .watch(resultSubmissionState
                                                                            .notifier)
                                                                        .state,
                                                                    isConnectionAvailable:
                                                                        isConnectionAvailable,
                                                                  );
                                                                });
                                                          }

                                                          setState(() {
                                                            _textController
                                                                .clear();
                                                            isInit = true;
                                                          });
                                                        });
                                                      });
                                                    });
                                              },
                                            );
                                          });
                                        });
                                      }
                                    } else {
                                      submitStatusTask.state =
                                          SubmitStatus.success;
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                            content: Text(EtamKawaTranslate
                                                .pleaseUploadYourEvidence)),
                                      );
                                    }
                                  }
                                } else {
                                  submitStatusTask.state = SubmitStatus.success;
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text(EtamKawaTranslate
                                            .pleaseWriteAndFillYourAnswer)),
                                  );
                                }
                              },
                              child: Text(
                                (currentQuestionIndex.state + 1) <
                                        listTask.length
                                    ? EtamKawaTranslate.next
                                    : EtamKawaTranslate.finish,
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

  void _showPicker(BuildContext context,
      {required TaskController ctrl,
      required List<TaskDatum> listTask,
      required int currentQuestionIndex}) {
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
                      pickDocFile(
                          ctrl: ctrl,
                          listTask: listTask,
                          currentQuestionIndex: currentQuestionIndex);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.image),
                    title: const Text('Gallery'),
                    onTap: () async {
                      Navigator.pop(context);
                      pickImageGallery(
                          ctrl: ctrl,
                          listTask: listTask,
                          currentQuestionIndex: currentQuestionIndex);
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  void pickAndCropImageGallery(
      {required TaskController ctrl,
      required List<TaskDatum> listTask,
      required int currentQuestionIndex}) async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 25,
    );

    if (pickedFile != null) {
      CroppedFile? croppedFile = await ImageCropper.platform
          .cropImage(sourcePath: pickedFile.path, aspectRatioPresets: [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio16x9,
      ]);
      if (croppedFile != null) {
        XFile imageFile = XFile(croppedFile.path);

        var fileDuplicate = imageFile;
        ref.refresh(taskControllerProvider);

        await ctrl
            .saveAnswer(listTask[currentQuestionIndex].taskId ?? 0,
                isLast: false,
                attachment: fileDuplicate.path ?? '',
                attachmentName: fileDuplicate.name,
                listSelectedOption: [_textController.text],
                type: listTask[currentQuestionIndex].taskTypeCode ?? '',
                taskGroup: listTask[currentQuestionIndex].taskGroup ?? '')
            .whenComplete(() async {
          await ctrl.putAnswerFinal();
        }).whenComplete(() {
          ref.refresh(taskControllerProvider);

          setState(() {
            ref.read(attachmentNameState.notifier).state = fileDuplicate.name;
            ref.read(attachmentPathState.notifier).state =
                fileDuplicate.path ?? '';
          });
        });
      }
    }
  }

  Future<void> pickImageGallery(
      {required TaskController ctrl,
      required List<TaskDatum> listTask,
      required int currentQuestionIndex}) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'png', 'gif'],
    );

    if (result != null) {
      PlatformFile platformFile = result.files.first;
      final fileName = platformFile.name;
      final filePath = platformFile.path;
      final fileSize = platformFile.size;
      final fileExtension = platformFile.extension;

      if (EtamKawaUploadConstant.fileTypeDefault.contains(fileExtension)) {
        debugPrint('accepted format');
        ref.refresh(taskControllerProvider);
        await ctrl
            .saveAnswer(listTask[currentQuestionIndex].taskId ?? 0,
                isLast: false,
                attachment: filePath,
                attachmentName: fileName,
                listSelectedOption: [_textController.text],
                type: listTask[currentQuestionIndex].taskTypeCode ?? '',
                taskGroup: listTask[currentQuestionIndex].taskGroup ?? '')
            .whenComplete(() async {
          ref.refresh(taskControllerProvider);

          await ctrl.putAnswerFinal();
        }).whenComplete(() {
          ref.refresh(taskControllerProvider);

          setState(() {
            ref.read(attachmentNameState.notifier).state = fileName;
            ref.read(attachmentPathState.notifier).state = filePath ?? '';
          });
        });
      }
    } else {
      // User canceled the picker
    }
  }

  Future<void> pickDocFile(
      {required TaskController ctrl,
      required List<TaskDatum> listTask,
      required int currentQuestionIndex}) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: EtamKawaUploadConstant.fileTypeDefault,
        allowCompression: true);

    if (result != null) {
      PlatformFile platformFile = result.files.first;
      final fileName = platformFile.name;
      final filePath = platformFile.path;
      final fileSize = platformFile.size;
      final fileExtension = platformFile.extension;

      if (EtamKawaUploadConstant.fileTypeDefault.contains(fileExtension)) {
        ref.refresh(taskControllerProvider);

        await ctrl
            .saveAnswer(listTask[currentQuestionIndex].taskId ?? 0,
                isLast: false,
                attachment: filePath,
                attachmentName: fileName,
                listSelectedOption: [_textController.text],
                type: listTask[currentQuestionIndex].taskTypeCode ?? '',
                taskGroup: listTask[currentQuestionIndex].taskGroup ?? '')
            .whenComplete(() async {
          await ctrl.putAnswerFinal();
        }).whenComplete(() {
          ref.refresh(taskControllerProvider);

          setState(() {
            ref.read(attachmentNameState.notifier).state = fileName;
            ref.read(attachmentPathState.notifier).state = filePath ?? '';
          });
        });
      }
    } else {
      // User canceled the picker
    }
  }
}
