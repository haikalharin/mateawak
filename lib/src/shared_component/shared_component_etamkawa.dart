import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widget_zoom/widget_zoom.dart';
import 'package:module_shared/module_shared.dart';

class SharedComponentEtamkawa {
  static PreferredSizeWidget appBar(
      {required BuildContext context,
      required String title,
      List<Widget>? actions,
      Color? backgroundColor,
      Color? titleColor,
      double? elevation,
      bool? centerTitle,
      Function()? onBack,
      Brightness? brightnessIconStatusBar = Brightness.light,
      bool? isLeading}) {
    return AppBar(
      elevation: elevation,
      shadowColor: ColorTheme.textLightDark,
      backgroundColor: backgroundColor ?? ColorTheme.primary500,
      foregroundColor: titleColor,
      surfaceTintColor: titleColor,
      centerTitle: centerTitle,
      title: Text(
        title,
        style: TextStyle(color: titleColor),
      ),
      leading: (isLeading ?? true)
          ? IconButton(
              icon: const Icon(Icons.close),
              onPressed: onBack ??
                  () {
                    Navigator.of(context).pop();
                  },
            )
          : null,
      actions: actions,
      systemOverlayStyle: (brightnessIconStatusBar == null)
          ? null
          : Platform.isIOS
              ? (brightnessIconStatusBar == Brightness.light)
                  ? SystemUiOverlayStyle.light
                  : SystemUiOverlayStyle.dark
              : SystemUiOverlayStyle(
                  statusBarIconBrightness: brightnessIconStatusBar,
                  statusBarColor: Colors.transparent,
                ),
    );
  }

  static void showImage({required BuildContext context, required String path}) {
    bool validURL = Uri.parse(path).isAbsolute;
    showDialog(
      context: context,
      builder: (_) => Dialog(
          child: SizedBox(
        child: WidgetZoom(
          heroAnimationTag: 'tag',
          zoomWidget: (validURL)
              ? Image.network(
                  path,
                  fit: BoxFit.cover,
                )
              : Image.file(
                  File(path),
                  fit: BoxFit.cover,
                ),
        ),
      )),
    );
  }
}
