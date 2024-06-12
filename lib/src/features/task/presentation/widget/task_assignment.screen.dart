import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image/image.dart' as img;
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:module_etamkawa/src/configs/theme/color.theme.dart';
import 'package:module_etamkawa/src/constants/constant.dart';
import 'package:module_etamkawa/src/features/mission/presentation/controller/mission.controller.dart';
import 'package:module_etamkawa/src/shared_component/connection_listener_widget.dart';
import 'package:module_etamkawa/src/shared_component/custom_dialog.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';

import '../../../../../module_etamkawa.dart';
import '../../../../shared_component/instruction_dialog.dart';
import '../../../../shared_component/shared_component_etamkawa.dart';
import '../../../main_nav/presentation/controller/main_nav.controller.dart';
import '../../../mission/domain/gamification_response.remote.dart';
import '../controller/task.controller.dart';

class TaskAssignmentScreen extends ConsumerStatefulWidget {
  // final List<TaskDatum> listTask;

  const TaskAssignmentScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TaskAssignmentScreenState();
}

class _TaskAssignmentScreenState extends ConsumerState<TaskAssignmentScreen> {
  final TextEditingController _textController = TextEditingController();

  // String? _docFileBase64;
  // String? _docFilePath;
  var groupValue = 0;

  // String? _docFilePathName;
  bool isInit = true;
  bool isResizing = false;
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
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Assignment",
                                style: SharedComponent.textStyleCustom(
                                    typographyType: TypographyType.largeH5,
                                    fontColor: ColorTheme.textDark)),
                            SizedBox(
                              child: Row(
                                children: [
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                    margin: EdgeInsets.only(right: 4.sp),
                                    decoration: BoxDecoration(
                                        color: ColorTheme.secondary100,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.r))),
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
                                            style:
                                                SharedComponent.textStyleCustom(
                                                    typographyType:
                                                        TypographyType.body,
                                                    fontColor: ColorTheme
                                                        .secondary500),
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
                                              title: EtamKawaTranslate
                                                  .instructions,
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
                            ),
                          ],
                        ),
                        Column(
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
                            const SizedBox(height: 10.0),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: RichText(
                                text: TextSpan(
                                  text: EtamKawaTranslate.evidence,
                                  style: SharedComponent.textStyleCustom(
                                      typographyType: TypographyType.body,
                                      fontColor: ColorTheme.textDark),
                                  children: [
                                    if (isMandatory)
                                      TextSpan(
                                        text: '*',
                                        style: SharedComponent.textStyleCustom(
                                            typographyType: TypographyType.body,
                                            fontColor: ColorTheme.danger500),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10.0),
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
                                : isResizing
                                    ? const CircularProgressIndicator()
                                    : InkWell(
                                        onTap: () {
                                          if (Platform.isIOS) {
                                            _showPicker(context,
                                                ctrl: ctrl,
                                                listTask: listTask,
                                                currentQuestionIndex:
                                                    currentQuestionIndex.state);
                                          } else {
                                            pickDocFile(
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
                                              color: ColorThemeEtamkawa
                                                  .bgGreenLight,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .upload_file_rounded,
                                                        color: ColorTheme
                                                            .primary500,
                                                        size: 40.h,
                                                      ),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
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
                                                              style: Theme.of(
                                                                      context)
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
                                                              "Allowed files ${Platform.isIOS ? EtamKawaUploadConstant.fileTypeTextImage : EtamKawaUploadConstant.fileTypeTextImageAndroid}",
                                                              style: Theme.of(
                                                                      context)
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
                                  if (!isSubmitted) {
                                    debugPrint('ontapoutside asm');
                                    await ctrl
                                        .saveAnswer(
                                            listTask[currentQuestionIndex
                                                        .state]
                                                    .taskId ??
                                                0,
                                            isLast: false,
                                            listSelectedOption: [
                                              _textController.text
                                            ],
                                            attachment: attachment.state,
                                            attachmentName:
                                                attachmentName.state,
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
                                    });
                                  }
                                  FocusManager.instance.primaryFocus?.unfocus();
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
                                          attachment: attachment.state,
                                          attachmentName: attachmentName.state,
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
                          ],
                        ),
                      ],
                    ),
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
                          lengthAnswer != 1
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
                                              listTask.length &&
                                          listTask.length != 1) {
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
                                                ref
                                                    .watch(
                                                        listSelectOptionCurrentStringState
                                                            .notifier)
                                                    .state
                                                    .clear();
                                                ref
                                                    .watch(
                                                        attachmentPathCurrentState
                                                            .notifier)
                                                    .state = '';
                                                ref
                                                    .watch(
                                                        attachmentNameCurrentState
                                                            .notifier)
                                                    .state = '';
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
                                              setState(() {
                                                _textController.clear();
                                                isInit = true;
                                              });
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
                                                return CustomDialog(
                                                  title: EtamKawaTranslate
                                                      .confirmation,
                                                  content: EtamKawaTranslate
                                                      .areYouSureSubmitAssignment,
                                                  label:
                                                      EtamKawaTranslate.submit,
                                                  type: DialogType.mission,
                                                  isConnectionAvailable:
                                                      isConnectionAvailable,
                                                  onClosed: () async {
                                                    showLoadingDialog(context);
                                                    var status =
                                                        ctrl.putAnswerFinal(
                                                            isSubmitted: true);
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
                                                          Navigator.of(context)
                                                              .pop();
                                                          showDialog(
                                                            barrierDismissible:
                                                                false,
                                                            context: context,
                                                            builder: (context) {
                                                              return CustomDialog(
                                                                title:
                                                                    EtamKawaTranslate
                                                                        .hooray,
                                                                content:
                                                                    EtamKawaTranslate
                                                                        .yourMissionHasBeenCompleted,
                                                                label: "Okay",
                                                                type: DialogType
                                                                    .success,
                                                                onClosed: () {
                                                                  Navigator.of(
                                                                          context)
                                                                      .pop(); // Close the second dialog
                                                                  Navigator.of(
                                                                          context)
                                                                      .pop(); // Close the first dialog's parent
                                                                },
                                                              );
                                                            },
                                                          );
                                                        }

                                                        setState(() {
                                                          _textController
                                                              .clear();
                                                          isInit = true;
                                                        });
                                                      });
                                                    });
                                                  },
                                                );
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
                                  } else {
                                    submitStatusTask.state =
                                        SubmitStatus.success;
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(EtamKawaTranslate
                                              .pleaseWriteAndFillYourAnswer)),
                                    );
                                  }
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
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        backgroundColor: Colors.white,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 5,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Pilih Opsi',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.file_present, color: Colors.blue),
                    title: const Text('Pilih Berkas'),
                    onTap: () async {
                      Navigator.pop(context);
                      pickDocFile(
                          ctrl: ctrl,
                          listTask: listTask,
                          currentQuestionIndex: currentQuestionIndex);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.image, color: Colors.green),
                    title: const Text('Pilih dari Galeri'),
                    onTap: () async {
                      Navigator.pop(context);
                      pickImageGallery(
                          ctrl: ctrl,
                          listTask: listTask,
                          currentQuestionIndex: currentQuestionIndex);
                    },
                  ),
                  const SizedBox(height: 16),
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

  Future<void> pickImageGallery({
    required TaskController ctrl,
    required List<TaskDatum> listTask,
    required int currentQuestionIndex,
  }) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.media,
      allowCompression: true,
    );

    if (result != null) {
      PlatformFile platformFile = result.files.first;
      final fileName = platformFile.name;
      final filePath = platformFile.path;
      final fileExtension = platformFile.extension?.toLowerCase();

      if (Platform.isAndroid
          ? EtamKawaUploadConstant.fileTypeImageAndroid.contains(fileExtension)
          : EtamKawaUploadConstant.fileTypeImage.contains(fileExtension)) {
        debugPrint('accepted format');

        File file = File(filePath!);
        img.Image? image;

        if (fileExtension == 'heic' ||
            fileExtension == 'heif' ||
            fileExtension == 'jpeg') {
          file = await _convertHeicToJpeg(file);
        }

        image = img.decodeImage(file.readAsBytesSync());

        if (image != null) {
          setState(() {
            isResizing = true;
          });

          File resizedFile =
              _resizeImageToMaxSize(image, file.path, 2 * 1024 * 1024);

          ref.refresh(taskControllerProvider);
          await ctrl
              .saveAnswer(
            listTask[currentQuestionIndex].taskId ?? 0,
            isLast: false,
            attachment: resizedFile.path,
            attachmentName: fileName,
            listSelectedOption: [_textController.text],
            type: listTask[currentQuestionIndex].taskTypeCode ?? '',
            taskGroup: listTask[currentQuestionIndex].taskGroup ?? '',
          )
              .whenComplete(() async {
            ref.refresh(taskControllerProvider);
            await ctrl.putAnswerFinal();
          }).whenComplete(() {
            ref.refresh(taskControllerProvider);
            Future.delayed(const Duration(seconds: 1), () {
              setState(() {
                isResizing = false;

                ref.read(attachmentNameState.notifier).state = fileName;
                ref.read(attachmentPathState.notifier).state = resizedFile.path;
              });
            });
          });
        }
      } else {
        SharedComponent.dialogPopUp(
          type: 'info',
          context: globalkey.currentContext!,
          title: 'Tipe file tidak sesuai!',
          subTitle:
              'Hanya diperbolehkan untuk upload file tipe: ${Platform.isIOS ? '.heif, ' : ''}.jpg, .jpeg, .png',
          btntitleright: 'Ok',
          onpressright: () {
            Navigator.of(globalkey.currentContext!).pop();
          },
        );
      }
    } else {
      // User canceled the picker
    }
  }

  Future<void> pickDocFile({
    required TaskController ctrl,
    required List<TaskDatum> listTask,
    required int currentQuestionIndex,
  }) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: Platform.isIOS
          ? EtamKawaUploadConstant.fileTypeImage
          : EtamKawaUploadConstant.fileTypeImageAndroid,
      allowCompression: true,
    );

    if (result != null) {
      PlatformFile platformFile = result.files.first;
      final fileName = platformFile.name;
      final filePath = platformFile.path;
      final fileExtension = platformFile.extension?.toLowerCase();

      if (Platform.isAndroid
          ? EtamKawaUploadConstant.fileTypeImageAndroid.contains(fileExtension)
          : EtamKawaUploadConstant.fileTypeImage.contains(fileExtension)) {
        debugPrint('accepted format');

        File file = File(filePath!);
        img.Image? image;

        if (fileExtension == 'heic' ||
            fileExtension == 'heif' ||
            fileExtension == 'jpeg') {
          file = await _convertHeicToJpeg(file);
        }

        image = img.decodeImage(file.readAsBytesSync());

        if (image != null) {
          setState(() {
            isResizing = true;
          });

          File resizedFile =
              _resizeImageToMaxSize(image, file.path, 2 * 1024 * 1024);

          ref.refresh(taskControllerProvider);
          await ctrl
              .saveAnswer(
            listTask[currentQuestionIndex].taskId ?? 0,
            isLast: false,
            attachment: resizedFile.path,
            attachmentName: fileName,
            listSelectedOption: [_textController.text],
            type: listTask[currentQuestionIndex].taskTypeCode ?? '',
            taskGroup: listTask[currentQuestionIndex].taskGroup ?? '',
          )
              .whenComplete(() async {
            ref.refresh(taskControllerProvider);
            await ctrl.putAnswerFinal();
          }).whenComplete(() {
            ref.refresh(taskControllerProvider);
            Future.delayed(const Duration(seconds: 1), () {
              setState(() {
                isResizing = false;

                ref.read(attachmentNameState.notifier).state = fileName;
                ref.read(attachmentPathState.notifier).state = resizedFile.path;
              });
            });
          });
        }
      } else {
        SharedComponent.dialogPopUp(
          type: 'info',
          context: globalkey.currentContext!,
          title: 'Tipe file tidak sesuai!',
          subTitle:
              'Hanya diperbolehkan untuk upload file tipe: ${Platform.isIOS ? '.heif, ' : ''}.jpg, .jpeg, .png',
          btntitleright: 'Ok',
          onpressright: () {
            Navigator.of(globalkey.currentContext!).pop();
          },
        );
      }
    } else {
      // User canceled the picker
    }
  }

  Future<File> _convertHeicToJpeg(File file) async {
    final compressedBytes = await FlutterImageCompress.compressWithFile(
      file.path,
      format: CompressFormat.jpeg,
      quality: 90,
    );

    if (compressedBytes == null) {
      throw Exception('Failed to convert HEIC to JPEG');
    }

    final tempDir = Directory.systemTemp;
    final tempFile = File('${tempDir.path}/temp_image.jpg');
    await tempFile.writeAsBytes(compressedBytes); // Use async method here
    return tempFile;
  }

  File _resizeImageToMaxSize(
      img.Image image, String filePath, int maxSizeInBytes) {
    int quality = 100;
    List<int> resizedImageBytes;
    File resizedFile;
    do {
      debugPrint('resize foto');
      resizedImageBytes = img.encodeJpg(image, quality: quality);
      resizedFile = File('${filePath}_resized.jpg')
        ..writeAsBytesSync(resizedImageBytes);
      quality -= 20; // Reduce quality to lower file size
    } while (resizedFile.lengthSync() > maxSizeInBytes && quality > 0);
    return resizedFile;
  }
}
