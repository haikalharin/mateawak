import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/src/features/task/domain/result_submission_request.remote.dart';
import 'package:module_etamkawa/src/features/task/presentation/widget/reward_dialog.dart';
import 'package:module_shared/module_shared.dart';

import '../constants/constant.dart';
import '../constants/image.constant.dart';

enum DialogType { success, error, info, question, mission }

class CustomDialog extends StatelessWidget {
  const CustomDialog(
      {super.key,
      required this.type,
      required this.title,
      required this.content,
      required this.label,
      this.isAssignment,
      this.resultSubmissionState,
      this.isConnectionAvailable,
      this.onClosed});

  final DialogType type;
  final String title;
  final String content;
  final String label;
  final bool? isAssignment;
  final ResultSubmissionRequestRemote? resultSubmissionState;
  final bool? isConnectionAvailable;
  final Function()? onClosed;

  @override
  Widget build(BuildContext context) {
    String imageConstant;
    switch (type) {
      case DialogType.info:
        imageConstant = ImageConstant.iconDialogInfo;
      case DialogType.error:
        imageConstant = ImageConstant.iconDialogError;
      case DialogType.question || DialogType.mission:
        imageConstant = ImageConstant.iconDialogQuestion;
      default:
        imageConstant = ImageConstant.iconDialogSuccess;
    }
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(24.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          color: ColorTheme.backgroundWhite,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              imageConstant,
              package: Constant.moduleEtamkawa,
            ),
            SizedBox(height: 10.h),
            SharedComponent.label(
              text: title,
              context: context,
              typographyType: TypographyType.largeH5,
              textAlign: TextAlign.center,
              color: ColorTheme.textDark,
            ),
            SizedBox(height: 16.h),
            SharedComponent.label(
              text: content,
              context: context,
              typographyType: TypographyType.body,
              textAlign: TextAlign.center,
              color: ColorTheme.textDark,
            ),
            SizedBox(height: 16.h),
            SizedBox(
              width: double.infinity,
              child: (type == DialogType.question || type == DialogType.mission)
                  ? confirmationButton(
                      context,
                      label,
                      onClosed,
                      type,
                      resultSubmissionState,
                      isConnectionAvailable,
                      isAssignment ?? false)
                  : SharedComponent.btnWidget(
                      label: label,
                      typographyType: TypographyType.body,
                      onPressed: () async {
                        context.pop();
                        if (onClosed == null) return;
                        await onClosed!();
                      },
                      radius: 5.r,
                    ),
            ),
            SizedBox(height: 8.h),
          ],
        ),
      ),
    );
  }
}

Widget confirmationButton(
    BuildContext context,
    String label,
    Function()? onClosed,
    DialogType type,
    ResultSubmissionRequestRemote? resultSubmissionState,
    bool? isConnectionAvailable,
    bool? isAssignment) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SharedComponent.btnWidget(
        label: type == DialogType.mission ? EtamKawaTranslate.cancel : EtamKawaTranslate.leave,
        typographyType: TypographyType.body,
        color: ColorTheme.neutral200,
        fontColor: ColorTheme.neutral600,
        onPressed: () async {
          context.pop();
          if (type == DialogType.question) {
            showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) {
                  return CustomDialog(
                      title: EtamKawaTranslate.hooray,
                      content:
                          "Progress successfully saved. We're saving your activity in this mission as a Draft. Come back soon.",
                      label: EtamKawaTranslate.backToMissionList,
                      type: DialogType.success,
                      onClosed: () async {
                        Navigator.of(context).pop();
                        Navigator.of(context).pop();
                      });
                });
            await onClosed!();
          }
        },
        radius: 5.r,
      ),
      SizedBox(
        width: 15.w,
      ),
      SharedComponent.btnWidget(
        label: label,
        typographyType: TypographyType.body,
        onPressed: () {
          context.pop();
          if (type == DialogType.mission) {
            onClosed!();
            if (!isAssignment!) {
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return RewardDialog(
                      resultSubmissionState: resultSubmissionState!,
                      isConnectionAvailable: isConnectionAvailable!,
                    );
                  });
            } else {
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return CustomDialog(
                        title: EtamKawaTranslate.hooray,
                        content: EtamKawaTranslate.yourMissionHasBeenCompleted,
                        label: "Okay",
                        type: DialogType.success,
                        onClosed: () async => {
                              Navigator.of(context).pop(),
                              Navigator.of(context).pop()
                            });
                  });
            }
          }
        },
        radius: 5.r,
      ),
    ],
  );
}
