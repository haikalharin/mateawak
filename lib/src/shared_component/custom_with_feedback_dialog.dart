import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/src/shared_component/custom_dialog.dart';
import 'package:module_etamkawa/src/shared_component/custom_dropdown.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';

import '../../module_etamkawa.dart';

class CustomWithFeedbackDialog extends StatefulWidget {
  const CustomWithFeedbackDialog(
      {super.key,
      required this.rating,
      required this.feedback,
      required this.label,
      this.onClosed});

  final String rating;
  final String feedback;
  final String label;
  final Function(String feedback, int selectedOption)? onClosed;

  @override
  State<CustomWithFeedbackDialog> createState() =>
      _CustomWithFeedbackDialogState();
}

class _CustomWithFeedbackDialogState extends State<CustomWithFeedbackDialog> {
  TextEditingController controller = TextEditingController();
  int? selectedScore;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(24.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          color: ColorTheme.backgroundWhite,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(EtamKawaTranslate.giveAScore,
                style: SharedComponent.textStyleCustom(
                    typographyType: TypographyType.largeH5)),
            const SizedBox(
              height: 10,
            ),
            RichText(
              text: TextSpan(
                text: EtamKawaTranslate.score,
                style: SharedComponent.textStyleCustom(
                    typographyType: TypographyType.body,
                    fontColor: ColorTheme.textDark),
                children: [
                  TextSpan(
                    text: '*',
                    style: SharedComponent.textStyleCustom(
                        typographyType: TypographyType.body,
                        fontColor: ColorTheme.danger500),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            CustomDropDown(
              items: const ['Tidak Baik', 'Kurang Baik', 'Baik', 'Sangat Baik'],
              hint: EtamKawaTranslate.chooseAScore,
              onPicked: (val) {
                setState(() {
                  if (val.isNotEmpty) {
                    switch (val) {
                      case 'Tidak Baik':
                        selectedScore = 1;
                        break;
                      case 'Kurang Baik':
                        selectedScore = 2;
                        break;
                      case 'Baik':
                        selectedScore = 3;
                      default:
                        selectedScore = 4;
                        break;
                    }
                  }
                });
              },
            ),
            SizedBox(
              height: 10.h,
            ),
            RichText(
              text: TextSpan(
                text: EtamKawaTranslate.feedback,
                style: SharedComponent.textStyleCustom(
                    typographyType: TypographyType.body,
                    fontColor: ColorTheme.textDark),
                children: [
                  TextSpan(
                    text: '*',
                    style: SharedComponent.textStyleCustom(
                        typographyType: TypographyType.body,
                        fontColor: ColorTheme.danger500),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            SizedBox(
              height: 100.0,
              child: TextFormField(
                readOnly: false,
                controller: controller,
                maxLength: 1000,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: EtamKawaTranslate.writeYourAnswer,
                  hintStyle: TextStyle(color: ColorTheme.textLightDark),
                  border: const OutlineInputBorder(),
                ),
                maxLines: 10,
                onChanged: (value) {
                  setState(() {
                    if (value.isNotEmpty) {
                      controller.text = value;
                    }
                  });
                }, // Allows multiple lines of input
                onTapOutside: (event) {
                  FocusScope.of(context).unfocus();
                },
              ),
            ),
            SizedBox(height: 16.h),
            SizedBox(
                width: double.infinity,
                child: confirmationButton(
                    selectedScore, controller.text, context, widget.label,
                    (String feedback, int selectedScore) {
                  widget.onClosed!(feedback, selectedScore);
                })),
            SizedBox(height: 8.h),
          ],
        ),
      ),
    );
  }

  State<CustomWithFeedbackDialog> createState() =>
      _CustomWithFeedbackDialogState();
}

Widget confirmationButton(int? selectedScore, String feedback,
    BuildContext context, String label, Function(String, int)? onClosed) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SharedComponent.btnWidget(
        label: EtamKawaTranslate.cancel,
        typographyType: TypographyType.body,
        color: ColorTheme.neutral200,
        fontColor: ColorTheme.neutral600,
        onPressed: () async {
          context.pop();
        },
        radius: 5.r,
      ),
      SizedBox(
        width: 15.w,
      ),
      SharedComponent.btnWidget(
        label: EtamKawaTranslate.submit,
        typographyType: TypographyType.body,
        color: feedback != '' && selectedScore != null
            ? ColorTheme.primary500
            : ColorTheme.primary100,
        onPressed: () {
          if (feedback != '' && selectedScore != null) {
            // Call the onClosed callback with the feedback and selectedScore parameters
            showLoadingDialog(context);
            onClosed!(feedback, selectedScore); // <-- Invoke the callback
            hideLoadingDialog(context);
            context.pop(); // Close the dialog
            showDialog(
                context: context,
                builder: (context) {
                  return CustomDialog(
                      title: EtamKawaTranslate.hooray,
                      content:
                          "${EtamKawaTranslate.feedbackSuccessfullySubmitted}. ${EtamKawaTranslate.willReceiveFeedbackShortly}.",
                      type: DialogType.success,
                      label: "Okay",
                      onClosed: () async => {
                            Navigator.of(context).pop(),
                            //Navigator.of(context).pop()
                          });
                });
          }
        },
        radius: 5.r,
      ),
    ],
  );
}
