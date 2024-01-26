import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/src/configs/navigations/routes.dart';
import 'package:module_shared/module_shared.dart';

import '../../features/main_nav/presentation/main_nav_screen.dart';
import '../../features/setting/presentation/setting.screen.dart';
import '../../shared_component/connection_listener_widget.dart';


List<RouteBase> routeEtamkawa = [
  GoRoute(
      path: '$homeEtakawa/:currentIndex',
      name: homeEtakawa,
      builder: (BuildContext context, GoRouterState state) {
        return SharedComponent.banner(
            dotenv.env[EnvConstant.environment]!,
            ConnectionListenerWidget(
              child: MainNavScreen(
                currentIndex: int.parse(state.pathParameters['currentIndex']!),
              ),
            ));
      },
      routes:  [
        GoRoute(
            path: setting,
            name: setting,
            builder: (BuildContext context, GoRouterState state) {
              return SharedComponent.banner(
                  dotenv.env[EnvConstant.environment]!,
                  ConnectionListenerWidget(child: SettingScreen()));
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
