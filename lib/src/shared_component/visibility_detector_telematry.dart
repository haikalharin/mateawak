import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../features/telematry/presentation/controller/telematry.controller.dart';

class VisibilityDetectorTelematry extends ConsumerWidget {
  const VisibilityDetectorTelematry(
      {super.key, required this.child, required this.widgetName});
  final Widget child;
  final String widgetName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return VisibilityDetector(
      key: Key(widgetName),
      onVisibilityChanged: (visibilityInfo) {
        try {
          double screenOccupationPercentage =
              ((visibilityInfo.visibleFraction * visibilityInfo.size.height) /
                      MediaQuery.sizeOf(context).height) *
                  100;

          if (screenOccupationPercentage.toInt() > 0) {
            if (context.mounted) {
              ref
                  .read(telematryControllerProvider.notifier)
                  .onVisibilityChangedSingleWidget(widgetName);
            }
          }
        } catch (e) {
          debugPrint('VisibilityDetectorError: $e');
        }
      },
      child: child,
    );
  }
}
