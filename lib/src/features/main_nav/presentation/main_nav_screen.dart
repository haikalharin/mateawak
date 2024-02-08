import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_load_indexed_stack/lazy_load_indexed_stack.dart';

import 'package:module_etamkawa/module_etamkawa.dart';
import 'package:module_shared/module_shared.dart';

import '../../../constants/image.constant.dart';
import '../../../shared_component/shared_component_etamkawa.dart';
import '../../overview/presentation/overview.screen.dart';

class MainNavScreen extends ConsumerStatefulWidget {
  const MainNavScreen({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainNavScreenState();
}

class _MainNavScreenState extends ConsumerState<MainNavScreen>
    with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    initBps();
    super.initState();
  }

  Future<void> initBps() async {
    WidgetsFlutterBinding.ensureInitialized();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.inactive) {

    }
    super.didChangeAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(true);
      },
      child: MainWidget(
        currentIndex: widget.currentIndex,
        isAbleAccessOverview: false,
        isAbleAccessLineupOperator: false,
        isAbleAccessLineupSpv: false,
        isAbleAccessLive: false,
        isAbleAccessSitePerform: false,
        isRoleSPV: false,
      ),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class MainWidget extends ConsumerWidget {
  const MainWidget({
    super.key,
    required this.currentIndex,
    required this.isAbleAccessOverview,
    required this.isAbleAccessLive,
    required this.isAbleAccessSitePerform,
    required this.isRoleSPV,
    required this.isAbleAccessLineupOperator,
    required this.isAbleAccessLineupSpv,
  });

  final int currentIndex;
  final bool isAbleAccessOverview;
  final bool isAbleAccessLive;
  final bool isAbleAccessSitePerform;
  final bool isAbleAccessLineupOperator;
  final bool isAbleAccessLineupSpv;
  final bool isRoleSPV;

  LazyLoadIndexedStack _buildBody(int currentIndex) {
    return LazyLoadIndexedStack(index: currentIndex, children: const [
      OverviewScreen(),
      UnderConstructionScreen(),
      UnderConstructionScreen(),
      UnderConstructionScreen(),
      UnderConstructionScreen(),      // OverviewScreen(),
      // LiveScreen(),
      // if (isAbleAccessLineupOperator) const LineupScreen()
    ]);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.watch(userRoleProvider);
    final menusLength = _buildBody(currentIndex).children.length;

    return Scaffold(
        appBar: SharedComponentEtamkawa.appBar(
          context: context,
          title: 'People Product',
          actions: [
            const Icon(Icons.sync),
            SizedBox(width: 20.w),
            const Icon(Icons.notifications),
            SizedBox(width: 20.w),
          ],
          brightnessIconStatusBar: Brightness.light,
        ),
        body: _buildBody(currentIndex),
        bottomNavigationBar: menusLength == 0
            ? Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: SharedComponent.label(
                text:
                'Akun Anda tidak punya akses ke modul BPS atau Lineup',
                typographyType: TypographyType.mediumH6,
                textAlign: TextAlign.center,
                context: context),
          ),
        )
            : menusLength == 1
            ? null
            : SharedComponent.containerBottomNavBar(
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 10.sp,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.home),
                label: 'Home',
                activeIcon: Icon(Icons.home,color: ColorTheme.primaryNew,),
              ),

              BottomNavigationBarItem(
                icon:const Icon(Icons.group),
                label: 'Growth',
                activeIcon: Icon(Icons.group,color: ColorTheme.primaryNew,),
              ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.checklist),
                  label: 'Mission',
                  activeIcon: Icon(Icons.checklist,color: ColorTheme.primaryNew,),
                ),
              BottomNavigationBarItem(
                icon:Icon(Icons.check_circle),
                label: 'Approval',
                activeIcon:Icon(Icons.check_circle,color: ColorTheme.primaryNew,),
              ),
              BottomNavigationBarItem(
                icon:Icon(Icons.account_circle_rounded),
                label: 'Profile',
                activeIcon: Icon(Icons.account_circle_rounded,color: ColorTheme.primaryNew,),
              ),
            ],
            currentIndex: currentIndex,
            onTap: (selectedIndex) {
              if (currentIndex != selectedIndex) {
                context.goNamed(homeEtakawa, pathParameters: {
                  'currentIndex': '$selectedIndex'
                });
              }
            },
          ),
        ));
  }
}
