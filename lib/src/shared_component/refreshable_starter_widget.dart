import 'package:flutter/material.dart';

///wrap slivers child with SliverFillRemaining or SliverToBoxAdapter

class RefreshableStarterWidget extends StatelessWidget {
  const RefreshableStarterWidget({
    super.key,
    required this.onRefresh,
    this.scrollKey,
    required this.slivers,
    this.refreshKey,
    this.scrollController,
    this.isAlwaysScrollableScrollPhysics = false,
  });
  final Future<void> Function() onRefresh;
  final String? scrollKey;
  final List<Widget> slivers;
  final GlobalKey<RefreshIndicatorState>? refreshKey;
  final ScrollController? scrollController;
  final bool isAlwaysScrollableScrollPhysics;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      key: refreshKey,
      triggerMode: RefreshIndicatorTriggerMode.anywhere,
      onRefresh: onRefresh,
      child: CustomScrollView(
          physics: (isAlwaysScrollableScrollPhysics)
              ? const AlwaysScrollableScrollPhysics()
              : null,
          controller: scrollController,
          key: scrollKey != null ? PageStorageKey(scrollKey) : null,
          slivers: slivers),
    );
  }
}
