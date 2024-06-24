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

class TaskPerformanceScreen extends ConsumerStatefulWidget {
  // final List<TaskDatum> listTask;

  const TaskPerformanceScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TaskPerformanceScreenState();
}

class _TaskPerformanceScreenState extends ConsumerState<TaskPerformanceScreen> {
  final TextEditingController _textController = TextEditingController();

  // String? _docFileBase64;
  // String? _docFilePath;
  var groupValue = 0;

  //String? _docFilePathName;
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
                            Text("Performance",
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

                          ],
                        ),
                      ],
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
