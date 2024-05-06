import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:module_etamkawa/src/features/main_nav/presentation/controller/main_nav.controller.dart';
import 'package:module_etamkawa/src/features/mission/presentation/controller/mission.controller.dart';
import 'package:module_etamkawa/src/features/mission/presentation/mission.screen.dart';
import 'package:module_etamkawa/src/features/overview/presentation/overview.screen.dart';
import 'package:module_etamkawa/src/features/task/presentation/controller/task.controller.dart';
import 'package:module_etamkawa/src/features/validation/presentation/controller/validation.controller.dart';
import 'package:module_etamkawa/src/features/validation/presentation/validation.screen.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
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
  bool isInit = false;
  Future<void> initEtamkawa() async {
    WidgetsFlutterBinding.ensureInitialized();
    await intializedMissionBackgroundService();
  }

  @override
  void initState() {
    isInit = true;
    isInit = true;
    initEtamkawa();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AsyncValueSharedWidget(
        value: ref.watch(mainNavControllerProvider),
        data: (data) {
          final ctrl = ref.watch(mainNavControllerProvider.notifier);
          final ctrlTask = ref.watch(taskControllerProvider.notifier);
          final ctrlMission = ref.watch(missionControllerProvider.notifier);
          final ctrlValidation =
              ref.watch(validationControllerProvider.notifier);

          final latestSyncDate = ref.watch(latestSyncDateState.notifier).state;
          final submitStatus = ref.watch(submitStatusState);
          final submitStatusMission = ref.watch(submitStatusMissionState);

          final submitStatusMissionBgServices =
              ref.watch(submitStatusMissionBgServicesState);
          return Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
            String title = '';
            switch (ctrl.indexNav) {
              case 0:
                title = 'Etam Kawa';
              case 1:
                title = EtamKawaTranslate.growth;
              case 2:
                title = EtamKawaTranslate.missionList;
              case 3:
                title = EtamKawaTranslate.validationList;
              case 4:
                title = EtamKawaTranslate.myCard;
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SharedComponent.label(
                              text: EtamKawaTranslate.lastSync,
                              context: context,
                              fontWeight: FontWeight.w600,
                              fontSize: 8.sp),
                          SharedComponent.label(
                              text: CommonUtils.formattedDate(
                                  latestSyncDate.toString(),
                                  withDay: false,
                                  withHourMinute: true),
                              context: context,
                              fontWeight: FontWeight.w400,
                              fontSize: 8.sp),
                        ],
                      ),
                      SizedBox(width: 10.w),
                      InkWell(
                          onTap: () async {
                            submitStatusMission != SubmitStatus.inProgress &&
                                    submitStatusMissionBgServices !=
                                        SubmitStatus.inProgress
                                ? await ctrlTask
                                    .sendAnswerBackgroundService()
                                    .whenComplete(() async {
                                    await ctrlMission
                                        .backgroundServiceEvent();
                                  })
                                : null;
                          },
                          child: (submitStatusMissionBgServices ==
                                      SubmitStatus.inProgress) ||
                                  (submitStatusMission ==
                                          SubmitStatus.inProgress &&
                                      isInit == false)
                              ? Center(
                                  child: Container(
                                      width: 20,
                                      height: 20,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2.5,
                                      )),
                                )
                              : (submitStatusMissionBgServices ==
                                          SubmitStatus.failure)
                                  ? Icon(
                                      Icons.sync_disabled,
                                      color: ColorTheme.danger500,
                                    ):const Icon(Icons.sync)),
                      SizedBox(width: 10.w),
                      const Icon(Icons.notifications),
                      SizedBox(width: 20.w),
                    ],
                    brightnessIconStatusBar:
                        ctrl.indexNav == 0 ? Brightness.light : Brightness.dark,
                  ),
                  body: Stack(children: [
                    pages(currentIndex: ctrl.indexNav),
                    submitStatus == SubmitStatus.inProgress
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : Container(),
                  ]),
                  bottomNavigationBar: Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        SharedComponent.containerBottomNavBar(
                          bottomNavigationBar: BottomNavigationBar(
                            type: BottomNavigationBarType.fixed,
                            selectedFontSize: 10.sp,
                            items: <BottomNavigationBarItem>[
                              BottomNavigationBarItem(
                                icon: const Icon(
                                  Icons.home,
                                ),
                                label: EtamKawaTranslate.bulletin,
                                activeIcon: Icon(
                                  Icons.home,
                                  color: ColorTheme.primary500,
                                ),
                              ),
                              BottomNavigationBarItem(
                                icon: const Icon(Icons.group),
                                label: EtamKawaTranslate.growth,
                                activeIcon: Icon(
                                  Icons.group,
                                  color: ColorTheme.primary500,
                                ),
                              ),
                              BottomNavigationBarItem(
                                icon: const Icon(Icons.checklist),
                                label: EtamKawaTranslate.mission,
                                activeIcon: Icon(
                                  Icons.checklist,
                                  color: ColorTheme.primary500,
                                ),
                              ),
                              BottomNavigationBarItem(
                                icon: const Icon(Icons.check_circle),
                                label: EtamKawaTranslate.validation,
                                activeIcon: Icon(
                                  Icons.check_circle,
                                  color: ColorTheme.primary500,
                                ),
                              ),
                              BottomNavigationBarItem(
                                icon: const Icon(Icons.account_circle_rounded),
                                label: EtamKawaTranslate.myCard,
                                activeIcon: Icon(
                                  Icons.account_circle_rounded,
                                  color: ColorTheme.primary500,
                                ),
                              )
                            ],
                            currentIndex: ctrl.indexNav,
                            onTap: (value) async {
                              ctrl.onItemTapped(value);
                              if (ctrl.indexNav == 2) {
                                if (submitStatusMission !=
                                        SubmitStatus.inProgress &&
                                    submitStatusMissionBgServices !=
                                        SubmitStatus.inProgress) {
                                  if (kDebugMode) {
                                    print('###################Kena');
                                  }
                                  await ctrlMission
                                      .getMissionList(isInit: isInit)
                                      .whenComplete(() {
                                    isInit = false;
                                  });
                                }
                              } else if (ctrl.indexNav == 3) {
                                await ctrlValidation.getValidationList();
                              }
                            },
                          ),
                        ),
                      ])),
            );
          });
        },
        skipError: true,
        onPressed: () {
          ref.invalidate(mainNavControllerProvider);
        });
  }
}
