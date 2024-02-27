import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_etamkawa/src/features/main_nav/presentation/controller/main_nav.controller.dart';
import 'package:module_etamkawa/src/features/mission/presentation/mission.screen.dart';
import 'package:module_etamkawa/src/features/overview/presentation/overview.screen.dart';
import 'package:module_shared/module_shared.dart';

import '../../../shared_component/shared_component_etamkawa.dart';

IndexedStack pages({required int currentIndex}) {
  return IndexedStack(
    index: currentIndex,
    children: const <Widget>[
      OverviewScreen(),
      UnderConstructionScreen(),
      MissionScreen(),
      UnderConstructionScreen(),
      UnderConstructionScreen(),
    ],
  );
}

class MainNavScreen extends ConsumerWidget {
  const MainNavScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          final submitStatus = ref.watch(submitStatusState);
          return AsyncValueSharedWidget(
          value: ref.watch(mainNavControllerProvider),
          data: (data) {
            final ctrl = ref.read(mainNavControllerProvider.notifier);
            return AnnotatedRegion<SystemUiOverlayStyle>(
              value: SystemUiOverlayStyle.light,
              child: Scaffold(
                  backgroundColor: ColorTheme.primaryNew,
                  appBar: SharedComponentEtamkawa.appBar(
                    context: context,
                    title: 'People Product',
                    actions: [
                      InkWell(
                          onTap: () async {
                            ctrl.fetchMissionList();
                          },
                          child: Icon(Icons.sync)),
                      SizedBox(width: 20.w),
                      const Icon(Icons.notifications),
                      SizedBox(width: 20.w),
                    ],
                    brightnessIconStatusBar: Brightness.light,
                  ),
                  body: Stack(children: [
                    pages(currentIndex: ctrl.indexNav),
                    submitStatus == SubmitStatus.inProgess
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : Container()
                  ]),
                  bottomNavigationBar: SharedComponent.containerBottomNavBar(
                    bottomNavigationBar: BottomNavigationBar(
                      type: BottomNavigationBarType.fixed,
                      selectedFontSize: 10.sp,
                      items: <BottomNavigationBarItem>[
                        BottomNavigationBarItem(
                          icon: const Icon(
                            Icons.home,
                          ),
                          label: 'Home',
                          activeIcon: Icon(
                            Icons.home,
                            color: ColorTheme.primaryNew,
                          ),
                        ),
                        BottomNavigationBarItem(
                          icon: const Icon(Icons.group),
                          label: 'Growth',
                          activeIcon: Icon(
                            Icons.group,
                            color: ColorTheme.primaryNew,
                          ),
                        ),
                        BottomNavigationBarItem(
                          icon: const Icon(Icons.checklist),
                          label: 'Mission',
                          activeIcon: Icon(
                            Icons.checklist,
                            color: ColorTheme.primaryNew,
                          ),
                        ),
                        BottomNavigationBarItem(
                          icon: const Icon(Icons.check_circle),
                          label: 'Approval',
                          activeIcon: Icon(
                            Icons.check_circle,
                            color: ColorTheme.primaryNew,
                          ),
                        ),
                        BottomNavigationBarItem(
                          icon: const Icon(Icons.account_circle_rounded),
                          label: 'Profile',
                          activeIcon: Icon(
                            Icons.account_circle_rounded,
                            color: ColorTheme.primaryNew,
                          ),
                        )
                      ],
                      currentIndex: ctrl.indexNav,
                      onTap: (value) {
                        ctrl.onItemTapped(value);
                      },
                    ),
                  )),
            );
          },
          skipError: true,
          onPressed: () {
            ref.invalidate(mainNavControllerProvider);
          });
    });
  }
}
