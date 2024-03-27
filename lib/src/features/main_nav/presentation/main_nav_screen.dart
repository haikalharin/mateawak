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

    return AsyncValueSharedWidget(
        value: ref.watch(mainNavControllerProvider),
        data: (data) {
          final ctrl = ref.read(mainNavControllerProvider.notifier);

      final submitStatus = ref.watch(submitStatusState);
      return Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child) {
            String title = '';
            switch (ctrl.indexNav) {
              case 0:
               title = 'People Product';
              case 1:
                title = 'Growth';
              case 2:
                title = 'Mission';
              case 3:
                title = 'Approval';
              case 4:
                title = 'Profile';
              default:

            }
            return AnnotatedRegion<SystemUiOverlayStyle>(

              value: SystemUiOverlayStyle.light,
              child: Scaffold(
                  appBar: SharedComponentEtamkawa.appBar(
                    backgroundColor: ctrl.indexNav == 0
                        ? ColorTheme.primary500
                        : ColorTheme.backgroundWhite,
                    titleColor: ctrl.indexNav == 0
                        ? ColorTheme.textWhite
                        : ColorTheme.textDark,
                    context: context,
                    elevation: ctrl.indexNav == 0 ? 0.0 : 0.5,
                    title: title,
                    onBack: (){
                      Navigator.of(context).pop();
                      Navigator.of(context).pop();
                    },
                    actions: [
                      InkWell(
                          onTap: () async {
                            ctrl.fetchMissionList();
                          },
                          child: const Icon(Icons.sync)),
                      SizedBox(width: 20.w),
                      const Icon(Icons.notifications),
                      SizedBox(width: 20.w),
                    ],
                    brightnessIconStatusBar:ctrl.indexNav == 0? Brightness.light:Brightness.dark,
                  ),
                  body: Stack(children: [
                    pages(currentIndex: ctrl.indexNav),
                    submitStatus == SubmitStatus.inProgess
                        ? const Center(
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
                            color: ColorTheme.primary500,
                          ),
                        ),
                        BottomNavigationBarItem(
                          icon: const Icon(Icons.group),
                          label: 'Growth',
                          activeIcon: Icon(
                            Icons.group,
                            color: ColorTheme.primary500,
                          ),
                        ),
                        BottomNavigationBarItem(
                          icon: const Icon(Icons.checklist),
                          label: 'Mission',
                          activeIcon: Icon(
                            Icons.checklist,
                            color: ColorTheme.primary500,
                          ),
                        ),
                        BottomNavigationBarItem(
                          icon: const Icon(Icons.check_circle),
                          label: 'Approval',
                          activeIcon: Icon(
                            Icons.check_circle,
                            color: ColorTheme.primary500,
                          ),
                        ),
                        BottomNavigationBarItem(
                          icon: const Icon(Icons.account_circle_rounded),
                          label: 'Profile',
                          activeIcon: Icon(
                            Icons.account_circle_rounded,
                            color: ColorTheme.primary500,
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
          });
    },  skipError: true,
        onPressed: () {
          ref.invalidate(mainNavControllerProvider);
        });
  }
}
