import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:module_shared/module_shared.dart';

import '../features/main_nav/presentation/background_service/news_background_services.dart';
import '../features/main_nav/presentation/controller/main_nav.controller.dart';

final isConnectionAvailableProvider = StateProvider<bool>((ref) {
  return true;
});

class ConnectionListenerWidget extends ConsumerStatefulWidget {
  const ConnectionListenerWidget({super.key, required this.child});

  final Widget child;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ConnectionListenerWidgetState();
}

class _ConnectionListenerWidgetState
    extends ConsumerState<ConnectionListenerWidget> {
  late StreamSubscription<InternetConnectionStatus> connectionListener;

  @override
  void initState() {
    final ctrl = ref.read(mainNavControllerProvider.notifier);
    connectionListener =
        InternetConnectionChecker().onStatusChange.listen((status) {
      switch (status) {
        case InternetConnectionStatus.connected:
          intializedNewsBackgroundService();
          ref.read(isConnectionAvailableProvider.notifier).state = true;
          break;
        case InternetConnectionStatus.disconnected:
          ref.read(isConnectionAvailableProvider.notifier).state = false;
          break;
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    connectionListener.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Platform.isIOS
          ? SystemUiOverlayStyle.dark
          : const SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.dark,
              statusBarColor: Colors.transparent,
            ),
      child: Column(
        children: [
          Consumer(builder: (context, widgetRef, _) {
            if (!widgetRef.watch(isConnectionAvailableProvider)) {
              return const ConnectionStatusWidget();
            } else {
              return const SizedBox.shrink();
            }
          }),
          Expanded(child: widget.child),
        ],
      ),
    );
  }
}

class ConnectionStatusWidget extends StatelessWidget {
  const ConnectionStatusWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        left: false,
        bottom: false,
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 12.sp,
            horizontal: 16.sp,
          ),
          decoration: BoxDecoration(
            color: ColorTheme.danger500,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Icon(
                Icons.wifi_off_rounded,
                color: ColorTheme.iconWhite,
                size: 20.sp,
              ),
              SizedBox(width: 10.sp),
              Material(
                type: MaterialType.transparency,
                child: SharedComponent.label(
                  text: 'Tidak ada koneksi internet',
                  context: context,
                  typographyType: TypographyType.body,
                  color: ColorTheme.textWhite,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
