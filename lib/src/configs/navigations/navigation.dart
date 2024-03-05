import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/src/configs/navigations/routes.dart';
import 'package:module_etamkawa/src/features/overview/presentation/overview.screen.dart';
import 'package:module_etamkawa/src/features/task/presentation/task.screen.dart';
import 'package:module_shared/module_shared.dart';

import '../../constants/constant.dart';
import '../../features/main_nav/presentation/main_nav_screen.dart';
import '../../shared_component/connection_listener_widget.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navigation.g.dart';

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    debugLogDiagnostics: true,
    routes: <RouteBase>[
  GoRoute(
  path: homeEtakawaInit,
    name: homeEtakawaInit,
    builder: (BuildContext context, GoRouterState state) {
      return SharedComponent.banner( dotenv.env[EnvConstant.environment]!,  ConnectionListenerWidget(
        child: MainNavScreen(),
      ));
    },
  )]);
}

List<RouteBase> routeEtamkawa = [

  GoRoute(
      path: homeEtakawa,
      name: homeEtakawa,
      builder: (BuildContext context, GoRouterState state) {
        return SharedComponent.banner(
            dotenv.env[EnvConstant.environment]!,
            ConnectionListenerWidget(
              child: MainNavScreen(),
            ));
      },
      routes: [
        GoRoute(
            path: detailMissionEtamkawa,
            name: detailMissionEtamkawa,
            builder: (BuildContext context, GoRouterState state) {
              return SharedComponent.banner(
                  dotenv.env[EnvConstant.environment]!,
                  const ConnectionListenerWidget(child: OverviewScreen()));
            }),
        GoRoute(
            path: taskMissionEtamkawa,
            name: taskMissionEtamkawa,
            builder: (BuildContext context, GoRouterState state) {
              Map<String, dynamic> param =
              state.extra as Map<String, dynamic>;
              return SharedComponent.banner(
                  dotenv.env[EnvConstant.environment]!,
                   ConnectionListenerWidget(child: TaskScreen(
                    listTask: param[Constant.listTask],
                  )));
            }),
        // GoRoute(
        //     path: notification,
        //     name: notification,
        //     builder: (BuildContext context, GoRouterState state) {
        //       return SharedComponent.banner(
        //           dotenv.env[EnvConstant.environment]!,
        //           const ConnectionListenerWidget(child: NotificationScreen()));
        //     }),
        // GoRoute(
        //     path: unitbreakdown,
        //     name: unitbreakdown,
        //     builder: (BuildContext context, GoRouterState state) {
        //       return SharedComponent.banner(
        //           dotenv.env[EnvConstant.environment]!,
        //           const ConnectionListenerWidget(child: UnitBreakdownScreen()));
        //     }),
      ]),
];
