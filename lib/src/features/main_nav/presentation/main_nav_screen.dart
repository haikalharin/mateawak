import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_load_indexed_stack/lazy_load_indexed_stack.dart';
import 'package:module_etamkawa/src/features/main_nav/presentation/controller/main_nav.controller.dart';
import 'package:module_etamkawa/src/features/mission/presentation/controller/mission.controller.dart';
import 'package:module_etamkawa/src/features/mission/presentation/mission.screen.dart';
import 'package:module_etamkawa/src/features/overview/presentation/overview.screen.dart';
import 'package:module_etamkawa/src/features/task/presentation/controller/task.controller.dart';
import 'package:module_etamkawa/src/features/validation/infrastructure/repositories/validation_local.repository.dart';
import 'package:module_etamkawa/src/features/validation/presentation/controller/validation.controller.dart';
import 'package:module_etamkawa/src/features/validation/presentation/validation.screen.dart';
import 'package:module_etamkawa/src/shared_component/under_construction.screen.dart';
import 'package:module_etamkawa/src/utils/common_utils.dart';
import 'package:module_shared/module_shared.dart';

import '../../../../module_etamkawa.dart';
import '../../../shared_component/connection_listener_widget.dart';
import '../../../shared_component/shared_component_etamkawa.dart';
import '../../telematry/presentation/controller/telematry.controller.dart';
import 'background_service/mission_background_services.dart';

IndexedStack pages({required int currentIndex}) {
  return IndexedStack(
    index: currentIndex,
    children: <Widget>[
      const OverviewScreen(),
      const UnderConstructionEtamKawaScreen(),
      MissionScreen(currentIndex: currentIndex),
      const ValidationScreen(),
      const UnderConstructionEtamKawaScreen(),
    ],
  );
}

class MainNavScreen extends ConsumerStatefulWidget {
  const MainNavScreen({super.key, this.currentIndex, this.employeeMissionId});

  final int? currentIndex;
  final int? employeeMissionId;

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

  int currentIndex = 0;

  @override
  void initState() {
    currentIndex = widget.currentIndex??0;
    isInit = true;
    isInit = true;

    initEtamkawa();
    ref.read(missionControllerProvider.notifier).updateLatestSyncDate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    widget.currentIndex != 9
        ? (widget.currentIndex != 0 ? currentIndex = widget.currentIndex! : currentIndex)
        : 2;
    ref.listen(activeWidgetProvider, (previous, now) {
     if (previous != now) {
        if (now != null) {
          ref
              .read(telematryControllerProvider.notifier)
              .insertInitTelematryData(now);
        }
        if (previous != null) {
          ref
              .read(telematryControllerProvider.notifier)
              .completeTelematryDataThenSend(
              previous, GoRouterState.of(context).uri.toString());
        }
      }
    });
    return AsyncValueSharedWidget(
        value: ref.watch(mainNavControllerProvider),
        data: (data) {
          final ctrl = ref.watch(mainNavControllerProvider.notifier);
          final ctrlTask = ref.watch(taskControllerProvider.notifier);
          final ctrlMission = ref.watch(missionControllerProvider.notifier);
          final ctrlValidation =
              ref.watch(validationControllerProvider.notifier);
          final latestSyncDate = ref.watch(latestSyncDateState);
          final submitStatus = ref.watch(submitStatusState);
          final submitStatusMission = ref.watch(submitStatusMissionState);
          final isConnectionAvailable = ref.read(isConnectionAvailableProvider);

          final submitStatusMissionBgServices =
              ref.watch(submitStatusMissionBgServicesState);
          return Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
            String title = '';
            switch (widget.currentIndex) {
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
                    backgroundColor:currentIndex == 0
                        ? ColorTheme.primary500
                        : ColorTheme.backgroundWhite,
                    titleColor:
                   currentIndex == 0 ? ColorTheme.textWhite : ColorTheme.textDark,
                    context: context,
                    elevation:currentIndex == 0 ? 0.0 : 0.5,
                    title: title,
                    // onBack: () {
                    //   context.pop();
                    // },
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
                              text: latestSyncDate != '2024-03-01T03:55:58.918Z' ? CommonUtils.formattedDate(
                                  latestSyncDate.toString(),
                                  withDay: false,
                                  withHourMinute: true) : '-',
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
                                    .checkExpiredBeforeSubmitAnswer()
                                    .whenComplete(() async {
                                    await ctrlMission.backgroundServiceEvent(
                                        isFetchMission: true,
                                        isSubmitAnswer: true);
                                  })
                                : null;
                          },
                          child: (submitStatusMissionBgServices ==
                                      SubmitStatus.inProgress) ||
                                  (submitStatusMission ==
                                          SubmitStatus.inProgress &&
                                      isInit == false)
                              ? const Center(
                                  child: SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2.5,
                                      )),
                                )
                              : (isConnectionAvailable == false)
                                  ? Icon(
                                      Icons.sync_disabled,
                                      color: ColorTheme.danger500,
                                    )
                                  : const Icon(Icons.sync)),
                      SizedBox(width: 10.w),
                      const Icon(Icons.notifications),
                      SizedBox(width: 20.w),
                    ],
                    brightnessIconStatusBar:
                   currentIndex == 0 ? Brightness.light : Brightness.dark,
                  ),
                  body: Stack(children: [
                    pages(currentIndex:currentIndex??0),
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
                            currentIndex:currentIndex,
                            onTap: (selectedIndex) async {
                              if (widget.currentIndex != selectedIndex) {
                                context.goNamed(homeEtakawa, pathParameters: {
                                  'CurrentIndex': '$selectedIndex'
                                });
                              }
                              // ctrl.onItemTapped(selectedIndex);
                              if (widget.currentIndex == 2) {
                                if (submitStatusMission !=
                                        SubmitStatus.inProgress &&
                                    submitStatusMissionBgServices !=
                                        SubmitStatus.inProgress) {
                                  await ctrlMission
                                      .getMissionList(isInit: isInit)
                                      .whenComplete(() {
                                    isInit = false;
                                  });
                                }
                              } else if (widget.currentIndex == 3) {
                                ref.read(submitValidationBgProvider);
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
