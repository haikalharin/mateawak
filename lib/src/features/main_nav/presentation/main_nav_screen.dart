import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_etamkawa/src/features/main_nav/presentation/controller/main_nav.controller.dart';
import 'package:module_etamkawa/src/features/mission/presentation/controller/mission.controller.dart';
import 'package:module_etamkawa/src/features/mission/presentation/mission.screen.dart';
import 'package:module_etamkawa/src/features/overview/presentation/overview.screen.dart';
import 'package:module_etamkawa/src/features/validation/presentation/controller/validation.controller.dart';
import 'package:module_etamkawa/src/features/validation/presentation/validation.screen.dart';
import 'package:module_shared/module_shared.dart';

import '../../../shared_component/progress_dialog.dart';
import '../../../shared_component/shared_component_etamkawa.dart';
import 'background_service/mission_background_services.dart';

IndexedStack pages({required int currentIndex}) {
  return IndexedStack(
    index: currentIndex,
    children: const <Widget>[
      OverviewScreen(),
      UnderConstructionScreen(),
      MissionScreen(),
      ValidationScreen(),
      UnderConstructionScreen(),
    ],
  );
}

class MainNavScreen extends ConsumerStatefulWidget {
  const MainNavScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainNavScreenState();
}

class _MainNavScreenState extends ConsumerState<MainNavScreen>
    with WidgetsBindingObserver {
  bool isInit =false;
  Future<void> initEtamkawa() async {
    WidgetsFlutterBinding.ensureInitialized();
    await intializedMissionBackgroundService();
  }

  @override
  void initState() {
    isInit =true;
    initEtamkawa();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AsyncValueSharedWidget(
        value: ref.watch(mainNavControllerProvider),
        data: (data) {
          final ctrl = ref.watch(mainNavControllerProvider.notifier);
          final ctrlMission = ref.watch(missionControllerProvider.notifier);
          final ctrlValidation = ref.watch(validationControllerProvider.notifier);

          final submitStatus = ref.watch(submitStatusState);
          final submitStatusMission = ref.watch(submitStatusMissionState);
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
                title = 'Validation';
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
                    onBack: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pop();
                    },
                    actions: [
                      InkWell(
                          onTap: () async {
                            await ctrlMission
                                .fetchMissionListBackgroundService();
                          },
                          child: const Icon(Icons.sync)),
                      SizedBox(width: 20.w),
                      const Icon(Icons.notifications),
                      SizedBox(width: 20.w),
                    ],
                    brightnessIconStatusBar:
                        ctrl.indexNav == 0 ? Brightness.light : Brightness.dark,
                  ),
                  body: Stack(children: [
                    pages(currentIndex: ctrl.indexNav),
                    submitStatus == SubmitStatus.inProgess
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : Container(),
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
                          label: 'Validation',
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
                      onTap: (value) async {
                        ctrl.onItemTapped(value);
                        if(ctrl.indexNav == 2){
                          await ctrlMission
                              .getMissionList(isInit: isInit).whenComplete(() {
                                isInit =false;
                          });
                        } else if(ctrl.indexNav == 3){
                          await ctrlValidation
                              .getValidationList();
                        }
                      },
                    ),
                  )),
            );
          });
        },
        skipError: true,
        onPressed: () {
          ref.invalidate(mainNavControllerProvider);
        });
  }
}
