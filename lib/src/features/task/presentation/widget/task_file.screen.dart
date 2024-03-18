import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:module_etamkawa/src/configs/theme/color.theme.dart';
import 'package:module_shared/module_shared.dart';

import '../../../../component/widget/dashed_border_widget.dart';
import '../../../../constants/constant.dart';
import '../../../../constants/image.constant.dart';
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
        final currentQuestionIndex = ref.watch(currentIndexState.notifier);
        final attachment = ref.watch(attachmentBase64State.notifier);
        final attachmentName = ref.watch(attachmentNameState.notifier);
        final listSelectedOptionString =
            ref.read(listSelectOptionStringState);
        final currentQuestionProgress = ref.watch(currentProgressState);
        final lengthAnswer = ref.watch(listTaskState).length;
        final listTask = ref.watch(listTaskState);
        if(ref
            .watch(
            previousTypeTaskState.notifier)
            .state ==
            TaskType.STX.name|| ref
            .watch(
            nextTypeTaskState.notifier)
            .state ==
            TaskType.STX.name){
          if (isInit) {

            if (ref
                .watch(listSelectOptionStringState.notifier)
                .state
                .isNotEmpty) {
                _textController.text = ref
                    .watch(listSelectOptionStringState.notifier)
                    .state
                    .single;


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
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              color: ColorTheme.textDark,
                            ),
                          ),
                          Container(
                            width: 75.h,
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      color:
                                      ColorThemeEtamkawa.secondary100,
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
                                              color:
                                              ColorThemeEtamkawa.secondary500,
                                              size: 12.h,
                                            ),
                                            Text(
                                              " +${listTask[currentQuestionIndex.state].taskReward}",
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                color: ColorTheme.secondary500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                ),
                                Icon(
                                  Icons.info,
                                  color:
                                  ColorThemeEtamkawa.primaryNew,
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
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/images/image_news.png',
                                      package: 'module_etamkawa',
                                    ),
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
                              style: const TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.w500),
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
                                                text:  TextSpan(
                                                  text: 'Evidence (one file only)',
                                                  style: TextStyle(
                                                    color: ColorTheme.textDark,
                                                    fontSize: 12,
                                                  ),
                                                  children: const [
                                                    TextSpan(
                                                      text: '*',
                                                      style: TextStyle(
                                                        color: Colors.red,
                                                        fontSize: 12,
                                                      ),
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
                                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                                  onTap: (){
                                                    setState(() {
                                                      ref
                                                          .read(attachmentBase64State
                                                          .notifier)
                                                          .state = '';
                                                      ref
                                                          .read(attachmentNameState
                                                          .notifier)
                                                          .state =  '';
                                                      ref
                                                          .read(attachmentPathState
                                                          .notifier)
                                                          .state =  '';
                                                    });
                                                  },
                                                  child: Icon(
                                                    Icons.cancel,
                                                    color: ColorThemeEtamkawa
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
                                      _showPicker(context);
                                    },
                                    child: DottedBorder(
                                      color: ColorThemeEtamkawa.primaryNew,
                                      radius: Radius.circular(12),
                                      strokeWidth: 3,
                                      //thickness of dash/dots
                                      dashPattern: [10, 6],
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
                                                    color: ColorThemeEtamkawa
                                                        .primaryNew,
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
                                    color: ColorThemeEtamkawa.textLightDark,
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
                                controller: _textController,
                                maxLength: 100,
                                textInputAction: TextInputAction.done,
                                decoration: InputDecoration(
                                  hintText: 'Write your comment here..',
                                  hintStyle: TextStyle(
                                      color: ColorThemeEtamkawa.textLightDark),
                                  border: const OutlineInputBorder(),
                                ),
                                maxLines: 10,
                                onChanged: (value) {
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
                                }, // Allows multiple lines of input
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    width: double.infinity,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: double.infinity,
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            0 < currentQuestionIndex.state  &&
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
                                  ctrl.prevQuestion().whenComplete(() {
                                    currentQuestionIndex.state--;
                                    ref
                                        .watch(
                                        currentProgressState.notifier)
                                        .state--;
                                    if (ref
                                        .watch(
                                        previousTypeTaskState.notifier)
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
                                        ctrl.nextQuestion(isLast: false).whenComplete(() async {
                                          await  ctrl
                                              .saveAnswer(
                                              listTask[currentQuestionIndex
                                                  .state]
                                                  .taskId ??
                                                  0,
                                              isLast: false,
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
                                                .watch(
                                                nextTypeTaskState.notifier)
                                                .state ==
                                                TaskType.STX.name) {
                                              ref
                                                  .watch(listSelectOptionStringState
                                                  .notifier)
                                                  .state =
                                                  ref
                                                      .watch(listSelectOptionNextStringState
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
                                                .watch(currentProgressState.notifier)
                                                .state++;
                                          }

                                          ref
                                              .watch(
                                              listSelectOptionStringState
                                                  .notifier)
                                              .state
                                              .clear();
                                          _textController.clear();
                                          isInit = true;
                                          showDialog(
                                            context: context,
                                            builder: (_) => AlertDialog(
                                              title: const Text('Quiz Finished'),
                                              content: const Text(
                                                  'You have completed the quiz.'),
                                              actions: <Widget>[
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Text('OK'),
                                                )
                                              ],
                                            ),
                                          );
                                        });
                                      }
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text('Please select an option!')),
                                    );
                                  }
                                },
                                child: Text(
                                  (currentQuestionIndex.state + 1) <
                                          (listTask[currentQuestionIndex.state]
                                                      .answerData
                                                      ?.length ??
                                                  0) -
                                              1
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
                      leading: const Icon(Icons.photo_library),
                      title: const Text('Photo Library'),
                      onTap: () async {
                        Navigator.pop(context);
                        pickAndCropImageGallery();
                      }),
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

  void pickAndCropImageGallery() async {
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
        Uint8List imageBytes = await imageFile.readAsBytes();
        String base64Image = base64Encode(imageBytes);
        setState(() {
          ref
              .read(attachmentBase64State
              .notifier)
              .state = base64Image;
          ref
              .read(attachmentNameState
              .notifier)
              .state = pickedFile.name;
          ref
              .read(attachmentPathState
              .notifier)
              .state = imageFile.path;
        });

        // widget.onImagePicked(base64Image);
      }
    }
  }

  Future<void> pickDocFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['doc','jpg', 'jpeg', 'png', 'gif', 'pdf'],
    );

    if (result != null) {
      XFile imageFile = XFile(result.files.single.path??'');
      Uint8List fileBytes = await imageFile.readAsBytes();
      String base64file = base64Encode(fileBytes);
      setState(() {
        ref
            .read(attachmentBase64State
            .notifier)
            .state = base64file;
        ref
            .read(attachmentNameState
            .notifier)
            .state = result.names.single??'';
        ref
            .read(attachmentPathState
            .notifier)
            .state = result.files.single.path??'';
      });
    } else {
      // User canceled the picker
    }
  }
}
