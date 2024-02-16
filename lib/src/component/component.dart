import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:module_shared/module_shared.dart';

class ComponentEtamkawa{
  static PreferredSizeWidget appBar(
      {required BuildContext context,
        required String title,
        List<Widget>? actions,
        bool? centerTitle,
        Brightness? brightnessIconStatusBar = Brightness.light,
        bool? isLeading}) {
    return AppBar(
      centerTitle: centerTitle,
      title: Text(title),
      flexibleSpace: Container(
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(ImageSharedConstant.appBarTitle), fit: BoxFit.fill)),
      ),
      leading: (isLeading ?? true)
          ? IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => Navigator.of(context).pop(),
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
}