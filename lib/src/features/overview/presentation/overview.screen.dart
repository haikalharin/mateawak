import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/src/features/overview/presentation/controller/overview.controller.dart';
import 'package:module_shared/module_shared.dart';

import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import '../../../constants/constant.dart';
import '../../../constants/image.constant.dart';
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
    // final isScrolled = ref.watch(isScrollProvider);

    // final indexMenuOverview = ref.watch(indexMenuOverviewProvider);

    return WillPopScope(
      onWillPop: () {
        context.pop();
        context.pop();
        return Future.value(false);
      },
      child: Scaffold(
        body: Column(
          children: [
            Divider(
              height: 0.5,
            ),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: ColorTheme.primaryNew,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(24.0))),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: ColorTheme.textDark,
                        borderRadius:
                        BorderRadius.all(Radius.circular(100.r))),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Richard Papangayan',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                            color: ColorTheme.textWhite,
                          ),
                        ),
                        Text(
                          'Supervisor',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 10.sp,
                            color: ColorTheme.textWhite,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: RefreshableStarterWidget(
                // scrollController: _scrollController,
                onRefresh: () async {
                  final materials = await ref.watch(
                      getActiveSwitchersProvider(SwitcherMode.material).future);
                  // final areas = await ref
                  //     .watch(getActiveSwitchersProvider(SwitcherMode.area).future);
                  // // final userModel =
                  //     await ref.read(helperUserProvider).getUserProfile();

                  // ignore: unused_result
                  // await ref.refresh(isDayShiftProvider.future);

                  // ignore: unused_result
                  // await ref.refresh(getDetailHourlyGrafikRemoteProvider(
                  //   areas: areas,
                  //   material: materials[ref.read(indexSliderProvider)],
                  //   adAccount: userModel?.adAccount,
                  //   uid: userModel?.employeeID ?? 0,
                  // ).future);

                  // ignore: unused_result
                  // await ref.refresh(getAchievementProduksiRemoteProvider(
                  //   areas: areas,
                  //   material: materials[ref.read(indexSliderProvider)],
                  //   adAccount: userModel?.adAccount,
                  //   uid: userModel?.employeeID ?? 0,
                  // ).future);

                  // ignore: unused_result
                  // await ref.refresh(getBannerWaterfallRemoteProvider(
                  //   areas: areas,
                  //   material: materials[ref.read(indexSliderProvider)],
                  //   adAccount: userModel?.adAccount,
                  //   uid: userModel?.employeeID ?? 0,
                  // ).future);

                  // ignore: unused_result
                  // await ref.refresh(getUnitBreakdownRemoteProvider(
                  //   areas: areas,
                  //   material: materials[ref.read(indexSliderProvider)],
                  //   adAccount: userModel?.adAccount,
                  //   uid: userModel?.employeeID ?? 0,
                  // ).future);
                },
                slivers: [
                  SliverToBoxAdapter(
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Richard Papangayan',
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16.sp,
                                      color: ColorTheme.textDark,
                                    ),
                                  ),
                              SizedBox(height: 8,),
                              Container(
                                height: 200,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage(ImageConstant.imageNews)),
                                    color: ColorTheme.primaryNew,
                                    borderRadius: BorderRadius.all(
                                     Radius.circular(10))),
                                padding: EdgeInsets.symmetric(horizontal: 16),),
                                  SizedBox(height: 8,),
                                  HtmlWidget(Constant.htmlNews),
                                ],
                              ),
                            )
                          ],
                        )
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
