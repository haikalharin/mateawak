import 'package:flutter/material.dart';
import 'package:module_shared/module_shared.dart';

class ProgressDialog extends StatelessWidget {
  const ProgressDialog({
    Key? key,
    required this.title,
    required this.isProgressed,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final bool isProgressed;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () { return Future.value(false); },
      child: AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(color: ColorTheme.primary300, width: 1.0),
        ),
        title: const Text("Mohon tunggu"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title),
            const SizedBox(height: 15),
            isProgressed ? const CircularProgressIndicator() : const SizedBox(),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
