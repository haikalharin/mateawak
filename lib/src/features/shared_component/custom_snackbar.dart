import 'dart:developer';

import 'package:flutter/material.dart';

enum CustomSnackbarMode { error, success, warning }

class CustomSnackbar {
  static show(BuildContext context, CustomSnackbarMode mode, String textContent,
      {int durationInSeconds = 15, SnackBarAction? action}) {
    Color backgroundColor;

    if (mode == CustomSnackbarMode.error) {
      backgroundColor = const Color(0xFFF11617);
    } else if (mode == CustomSnackbarMode.success) {
      backgroundColor = const Color(0xFF12B669);
    } else {
      backgroundColor = const Color.fromARGB(255, 252, 244, 9);
    }

    final snackBar = SnackBar(
      content: Text(
        textContent,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: mode == CustomSnackbarMode.warning
                  ? Colors.black
                  : Colors.white,
            ),
      ),
      backgroundColor: backgroundColor,
      duration: Duration(seconds: durationInSeconds),
      action: action ??
          SnackBarAction(
            label: 'close',
            textColor: mode == CustomSnackbarMode.warning
                ? Colors.black
                : Colors.white,
            onPressed: () {
              try {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              } catch (e) {
                log('Snackbar cannot be closed due to different context');
              }
            },
          ),
    );

    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
