

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_shared/module_shared.dart';

import '../module_etamkawa.dart';
import 'initializer.dart';

Future<Widget> initializeApp(AppConfig appConfig) async {
  await Initializer.init(appConfig);
  return ProviderScope(
    child: MainApp(
      config: appConfig,
    ),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key, required this.config});
  final AppConfig config;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    ref.read(chuckerShowReleaseProvider); //baru
    return ScreenUtilInit(
        designSize: const Size(393, 852),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) {
          return MaterialApp.router(
            title: config.appName,
            routerConfig: goRouter, //route,
            theme: Themes.light,
            // darkTheme: Themes.dark,
            debugShowCheckedModeBanner: false,
            builder: (context, child) {
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: child!,
              );
            },
          );
        });
  }
}
