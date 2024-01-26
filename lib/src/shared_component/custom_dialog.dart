import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:module_shared/module_shared.dart';

import '../constants/constant.dart';
import '../constants/image.constant.dart';


enum DialogType { success, error, info }

class CustomDialog extends StatelessWidget {
  const CustomDialog(
      {super.key,
      required this.type,
      required this.title,
      required this.content,
      this.onClosed});

  final DialogType type;
  final String title;
  final String content;
  final Function()? onClosed;

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
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              (type == DialogType.info)
                  ? ImageConstant.iconDialogInfo
                  : (type == DialogType.error)
                      ? ImageConstant.iconDialogError
                      : ImageConstant.iconDialogSuccess,
              package: Constant.moduleBPS,
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
              child: SharedComponent.btnWidget(
                label: 'Tutup',
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
