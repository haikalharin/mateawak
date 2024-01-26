import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/src/shared_component/detail_page_appbar_widget.dart';
import 'package:module_etamkawa/src/shared_component/refreshable_starter_widget.dart';

class FullscreenChartScreen extends ConsumerStatefulWidget {
  final String title;
  final Widget? trailing;
  final Widget child;
  final Future<void> Function()? onRefresh;
  const FullscreenChartScreen({
    super.key,
    required this.title,
    this.trailing,
    required this.child,
    this.onRefresh,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FullscreenChartScreenState();
}

class _FullscreenChartScreenState extends ConsumerState<FullscreenChartScreen> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DetailPageAppBarWidget(
        title: widget.title,
        trailing: widget.trailing,
        ref: ref,
        onTap: () => context.pop(),
        isFullscreen: true,
      ),
      body: RefreshableStarterWidget(
        onRefresh: widget.onRefresh ?? () async {},
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(right: 8.sp),
              child: SafeArea(
                right: false,
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height -
                      (kToolbarHeight + 32.sp),
                  child: widget.child,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
