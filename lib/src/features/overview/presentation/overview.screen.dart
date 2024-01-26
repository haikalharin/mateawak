import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/src/features/main_nav/presentation/controller/main_nav.controller.dart';
import 'package:module_etamkawa/src/features/main_nav/presentation/custom_mainappbar_widget.dart';
import 'package:module_etamkawa/src/features/overview/presentation/controller/overview.controller.dart';
import 'package:module_etamkawa/src/features/overview/presentation/widgets/header/header_overview_widget.dart';
import 'package:module_etamkawa/src/features/overview/presentation/widgets/unit_breakdown/unit_breakdown_widget.dart';
import 'package:module_shared/module_shared.dart';

import '../../setting/domain/setting.model.dart';
import '../../setting/presentation/controller/setting.controller.dart';
import '../../../shared_component/refreshable_starter_widget.dart';
import '../infrastructure/repositories/overview.repository.dart';

class OverviewScreen extends ConsumerStatefulWidget {
  const OverviewScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends ConsumerState<OverviewScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(
      () {
        ref.read(isScrollProvider.notifier).state =
            _scrollController.position.pixels > 100.h;
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  final List<int> _screenOccupation = [0, 0];

  @override
  Widget build(BuildContext context) {
    final isScrolled = ref.watch(isScrollProvider);

    final indexMenuOverview = ref.watch(indexMenuOverviewProvider);

    return WillPopScope(
      onWillPop: () {
        context.pop();
        context.pop();
        return Future.value(false);
      },
      child: Scaffold(
        appBar: isScrolled
            ? CustomMainAppbarWidget(
                title: 'Overview',
                currentIndex: indexMenuOverview,
                ref: ref,
              )
            : null,
        body: RefreshableStarterWidget(
          scrollController: _scrollController,
          onRefresh: () async {
            final materials = await ref.watch(
                getActiveSwitchersProvider(SwitcherMode.material)
                    .future);
            final areas = await ref.watch(
                getActiveSwitchersProvider(SwitcherMode.area).future);
            final userModel =
                await ref.read(helperUserProvider).getUserProfile();

            // ignore: unused_result
            await ref.refresh(isDayShiftProvider.future);

            // ignore: unused_result
            await ref.refresh(getDetailHourlyGrafikRemoteProvider(
              areas: areas,
              material: materials[ref.read(indexSliderProvider)],
              adAccount: userModel?.adAccount,
              uid: userModel?.employeeID ?? 0,
            ).future);

            // ignore: unused_result
            await ref.refresh(getAchievementProduksiRemoteProvider(
              areas: areas,
              material: materials[ref.read(indexSliderProvider)],
              adAccount: userModel?.adAccount,
              uid: userModel?.employeeID ?? 0,
            ).future);

            // ignore: unused_result
            // await ref.refresh(getBannerWaterfallRemoteProvider(
            //   areas: areas,
            //   material: materials[ref.read(indexSliderProvider)],
            //   adAccount: userModel?.adAccount,
            //   uid: userModel?.employeeID ?? 0,
            // ).future);

            // ignore: unused_result
            await ref.refresh(getUnitBreakdownRemoteProvider(
              areas: areas,
              material: materials[ref.read(indexSliderProvider)],
              adAccount: userModel?.adAccount,
              uid: userModel?.employeeID ?? 0,
            ).future);
          },
          slivers: [
            SliverToBoxAdapter(
              child: Stack(
                children: [
                  HeaderOverviewWidget(isScrolled: isScrolled),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 24.h,
                      right: 16.w,
                      left: 16.w,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: kToolbarHeight + 88.sp),
                        SizedBox(height: 16.h),
                        Consumer(
                          builder: (context, consRef, child) {
                            return FutureBuilder(
                              future: Future.wait(
                                [
                                  consRef.watch(getActiveSwitchersProvider(
                                          SwitcherMode.material)
                                      .future),
                                  consRef.watch(getActiveSwitchersProvider(
                                          SwitcherMode.area)
                                      .future),
                                  consRef
                                      .read(helperUserProvider)
                                      .getUserProfile(),
                                ],
                              ),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  final materials =
                                      snapshot.data?[0] as List<String>;
                                  final areas =
                                      snapshot.data?[1] as List<String>;
                                  final userModel =
                                      snapshot.data?[2] as UserModel?;
                                  if (materials.isNotEmpty &&
                                      areas.isNotEmpty) {
                                    return Column(
                                      children: [
                                        HeaderSlideWidget(
                                          getActiveAreas: areas,
                                          getActiveMaterials: materials,
                                          userModel: userModel,
                                          screenOccupation: _screenOccupation,
                                        ),
                                        SizedBox(height: 24.h),
                                        UnitBreakdownWidget(
                                          areas: areas,
                                          materials: materials,
                                          userModel: userModel,
                                          screenOccupation: _screenOccupation,
                                        )
                                      ],
                                    );
                                  }
                                }
                                return Container(
                                  child: const Center(
                                      child: Text(
                                    'Halooo',
                                    style: TextStyle(fontSize: 50),
                                  )),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
