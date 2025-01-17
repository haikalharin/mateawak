import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/src/configs/theme/color.theme.dart';
import 'package:module_shared/module_shared.dart';

class InstructionDialog extends StatelessWidget {
  const InstructionDialog(
      {super.key,
        required this.title,
        required this.content,
        required this.labelButton});
  final String title;
  final String content;
  final String labelButton;
  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SharedComponent.label(
              text: title,
              context: context,
              typographyType: TypographyType.largeH5,
              textAlign: TextAlign.center,
              color: ColorTheme.textDark,
            ),
            InkWell(
                onTap: () {
                  context.pop();
                },
                child: Container(
                  height: 20,
                  width: 20,
                  child: Center(
                    child: SharedComponent.label(
                      text: '✕',
                      context: context,
                      typographyType: TypographyType.largeH5,
                      textAlign: TextAlign.center,
                      color: ColorTheme.textLightDark,
                    ),
                  ),
                ),

            ),
          ]),
      insetPadding:
      EdgeInsets.symmetric(horizontal: 20, vertical: 32),
      actionsAlignment: MainAxisAlignment.start,
      scrollable: true,
      content: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                Divider(color: ColorThemeEtamkawa.divider),
                SizedBox(height: 16.h),
                SharedComponent.label(
                  text: content,
                  context: context,
                  typographyType: TypographyType.body,
                  textAlign: TextAlign.left,
                  color: ColorTheme.textDark,
                ),


              ],
            ),
          ),
        ],
      ),
      actions: <Widget>[
        Divider(color: ColorThemeEtamkawa.divider,),
        SizedBox(height: 8.h),
        Container(
          width: MediaQuery.of(context).size.width,
          child: SharedComponent.btnWidget(
            label: labelButton,
            typographyType: TypographyType.body,
            onPressed: () async {
              context.pop();
            },
            radius: 5.r,
          ),
        ),
      ],
    );
  }
}
