import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:module_shared/module_shared.dart';

import '../constants/constant.dart';
import '../constants/image.constant.dart';

enum DialogType { success, error, info, question }

class CustomDialog extends StatelessWidget {
  const CustomDialog(
      {super.key,
      required this.type,
      required this.title,
      required this.content,
      required this.label,
      this.onClosed});

  final DialogType type;
  final String title;
  final String content;
  final String label;
  final Function()? onClosed;

  @override
  Widget build(BuildContext context) {
    String imageConstant;
    switch (type) {
      case DialogType.info:
        imageConstant = ImageConstant.iconDialogInfo;
      case DialogType.error:
        imageConstant = ImageConstant.iconDialogError;
      case DialogType.question:
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
              child: (type == DialogType.question)
                  ? confirmationButton(context, label, onClosed)
                  : SharedComponent.btnWidget(
                      label: label,
                      typographyType: TypographyType.body,
                      onPressed: () {
                        context.pop();
                        if (onClosed == null) return;
                        onClosed!();
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
    BuildContext context, String label, Function()? onClosed) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SharedComponent.btnWidget(
        label: 'Leave',
        typographyType: TypographyType.body,
        color: ColorTheme.neutral200,
        fontColor: ColorTheme.neutral600,
        onPressed: () {
          context.pop();
          showDialog(
              context: context,
              builder: (context) {
                return CustomDialog(
                    title: "Hooray!",
                    content: "Progress successfully saved. We're saving your activity in this mission as a Draft. Come back soon.",
                    label: "Okay",
                    type: DialogType.success,
                    onClosed: () async => {
                          Navigator.of(context).pop(),
                          Navigator.of(context).pop()
                        });
              });
          onClosed!();
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
        },
        radius: 5.r,
      ),
    ],
  );
}
