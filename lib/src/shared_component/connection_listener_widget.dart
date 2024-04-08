import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:module_etamkawa/src/shared_component/reset_transformer_time.dart';
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
    extends ConsumerState<ConnectionListenerWidget>  with WidgetsBindingObserver {
  late StreamSubscription<InternetConnectionStatus> connectionListener;
  late StreamSubscription<int> timeListener;
  final stream = Stream.periodic(const Duration(seconds: 1), (i) => i);
  bool isInit = true;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    final ctrl = ref.read(mainNavControllerProvider.notifier);
    // Initialize a new stream listener when connected
    timeListener = stream.listen((value) {
      // if (kDebugMode) {
      //   print(value);
      // }
      if (value % 7200 == 0) {
        ctrl.fetchMissionListBackgroundService();
      }
    });
    connectionListener =
        InternetConnectionChecker().onStatusChange.listen((status) async {
      switch (status) {
        case InternetConnectionStatus.connected:
          if (isInit) {
            ctrl.fetchMissionListBackgroundService();
            isInit = false;
          }
          ref.read(isConnectionAvailableProvider.notifier).state = true;
          break;
        case InternetConnectionStatus.disconnected:
          isInit = true;
          ref.read(isConnectionAvailableProvider.notifier).state = false;
          break;
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    connectionListener.cancel();
    timeListener.cancel();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
    }
    if (state == AppLifecycleState.resumed) {
    }
    super.didChangeAppLifecycleState(state);
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
              timeListener.pause();
              return const ConnectionStatusWidget();
            } else {
              timeListener.resume();
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
