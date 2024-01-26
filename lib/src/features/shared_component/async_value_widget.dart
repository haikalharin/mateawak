import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_bps/src/shared_component/empty_state_widget.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget({
    super.key,
    required this.value,
    required this.data,
    this.customLoading,
    this.onError,
  });
  final AsyncValue<T> value;
  final Widget Function(T) data;
  final Widget? customLoading;
  final Widget Function(Object, StackTrace)? onError;

  @override
  Widget build(BuildContext context) {
    return value.when(
      skipLoadingOnRefresh: true,
      skipLoadingOnReload: true,
      data: data,
      error: onError ??
          (e, st) {
            log('error occured: ${e.toString()} - $st');
            return const EmptyStateWidget();
            /* Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 16),
                    child: Text(
                      e.toString(),
                      style: TextStyle(fontSize: 18.sp),
                      textAlign: TextAlign.center,
                    ),
                  ); */
          },
      loading: () =>
          customLoading ?? const Center(child: CircularProgressIndicator()),
    );
  }
}
