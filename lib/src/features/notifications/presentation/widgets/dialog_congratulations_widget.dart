import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/src/constants/image.constant.dart';
import 'package:module_shared/module_shared.dart';

class DialogCongratulationsWidget extends StatelessWidget {
  const DialogCongratulationsWidget({super.key, required this.body});

  final String body;

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Container(
            padding: EdgeInsets.all(24.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.r),
              color: ColorTheme.backgroundWhite,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  ImageConstant.iconCongrats,
                  height: 95.h,
                  package: 'module_etamkawa',
                ),
                SizedBox(
                  height: 16.h,
                ),
                SharedComponent.label(
                  text: 'Congratulations!',
                  context: context,
                  typographyType: TypographyType.largeH5,
                  color: ColorTheme.textDark,
                ),
                SizedBox(
                  height: 16.h,
                ),
                SharedComponent.label(
                    text: body,
                    context: context,
                    typographyType: TypographyType.body,
                    color: ColorTheme.textDark,
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: SharedComponent.btnWidget(
                      label: 'Tutup',
                      onPressed: () {
                        context.pop();
                      }),
                )
              ],
            )));
  }
}
