import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/src/configs/navigations/routes.dart';
import 'package:module_etamkawa/src/features/mission_detail/presentation/mission.detail.screen.dart';
import 'package:module_etamkawa/src/features/mission_past/presentation/mission_past_detail.screen.dart';
import 'package:module_etamkawa/src/features/mission_past/presentation/mission_past_notif_detail.screen.dart';
import 'package:module_etamkawa/src/features/mission_past/presentation/task_past.screen.dart';
import 'package:module_etamkawa/src/features/task/presentation/task.screen.dart';
import 'package:module_etamkawa/src/features/validation_detail/presentation/validation.detail.screen.dart';
import 'package:module_shared/module_shared.dart';

import '../../features/main_nav/presentation/main_nav_screen.dart';
import '../../shared_component/connection_listener_widget.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navigation.g.dart';

@Riverpod(keepAlive: true)
GoRouter etamkawaGoRouter(EtamkawaGoRouterRef ref) {
  return GoRouter(debugLogDiagnostics: true, routes: <RouteBase>[
    GoRoute(
        path: homeEtakawaInit,
        name: homeEtakawaInit,
        builder: (BuildContext context, GoRouterState state) {
          return SharedComponent.banner(
              dotenv.env[EnvConstant.environment]!,
              const ConnectionListenerWidget(
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
                    const ConnectionListenerWidget(
                        child: MissionDetailScreen()));
              },
              routes: [
                GoRoute(
                    path: taskMissionEtamkawa,
                    name: taskMissionEtamkawa,
                    builder: (BuildContext context, GoRouterState state) {
                      return SharedComponent.banner(
                          dotenv.env[EnvConstant.environment]!,
                          const ConnectionListenerWidget(child: TaskScreen()));
                    }),
              ]),
          GoRoute(
              path: detailMissionPastEtamkawa,
              name: detailMissionPastEtamkawa,
              builder: (BuildContext context, GoRouterState state) {
                debugPrint(
                    'firebase id query params: ${state.uri.queryParameters['Id']}');
                return SharedComponent.banner(
                    dotenv.env[EnvConstant.environment]!,
                    ConnectionListenerWidget(
                        child: MissionPastDetailScreen(
                      employeeMissionId: state.uri.queryParameters['Id'] != null
                          ? int.parse(state.pathParameters['Id']!)
                          : 0,
                    )));
              },
              routes: [
                GoRoute(
                    path: taskMissionPastEtamkawa,
                    name: taskMissionPastEtamkawa,
                    builder: (BuildContext context, GoRouterState state) {
                      return SharedComponent.banner(
                          dotenv.env[EnvConstant.environment]!,
                          const ConnectionListenerWidget(
                              child: TaskPastScreen()));
                    }),
              ]),
          GoRoute(
            path: detailValidationEtamkawa,
            name: detailValidationEtamkawa,
            builder: (BuildContext context, GoRouterState state) {
              return SharedComponent.banner(
                  dotenv.env[EnvConstant.environment]!,
                  const ConnectionListenerWidget(
                      child: ValidationDetailScreen()));
            },
          ),
        ]),
  ]);
}

List<RouteBase> routeEtamkawa = [
  GoRoute(
      path: '$homeEtakawa/:CurrentIndex',
      name: homeEtakawa,
      builder: (BuildContext context, GoRouterState state) {
        final currentIndex =
            int.tryParse(state.pathParameters['CurrentIndex'] ?? '0') ?? 0;
        final employeeMissionId =
            int.tryParse(state.uri.queryParameters['Id'] ?? '0') ?? 0;
        return SharedComponent.banner(
            dotenv.env[EnvConstant.environment]!,
            ConnectionListenerWidget(
              child: MainNavScreen(
                  currentIndex: currentIndex,
                  employeeMissionId: employeeMissionId),
            ));
      },
      routes: [
        GoRoute(
            path: detailMissionEtamkawa,
            name: detailMissionEtamkawa,
            builder: (BuildContext context, GoRouterState state) {
              return SharedComponent.banner(
                  dotenv.env[EnvConstant.environment]!,
                  const ConnectionListenerWidget(child: MissionDetailScreen()));
            },
            routes: [
              GoRoute(
                  path: taskMissionEtamkawa,
                  name: taskMissionEtamkawa,
                  builder: (BuildContext context, GoRouterState state) {
                    // List<TaskDatum> list = [];
                    return SharedComponent.banner(
                        dotenv.env[EnvConstant.environment]!,
                        const ConnectionListenerWidget(child: TaskScreen()));
                  }),
            ]),
        GoRoute(
            path: detailMissionPastv2Etamkawa,
            name: detailMissionPastv2Etamkawa,
            builder: (BuildContext context, GoRouterState state) {
              final employeeMissionId =
                  int.tryParse(state.uri.queryParameters['Id'] ?? '0') ?? 0;
              return SharedComponent.banner(
                  dotenv.env[EnvConstant.environment]!,
                  ConnectionListenerWidget(
                      child: MissionPastDetailScreen(
                          employeeMissionId: employeeMissionId)));
            },
            routes: [
              GoRoute(
                  path: taskMissionPastEtamkawa,
                  name: taskMissionPastEtamkawa,
                  builder: (BuildContext context, GoRouterState state) {
                    return SharedComponent.banner(
                        dotenv.env[EnvConstant.environment]!,
                        const ConnectionListenerWidget(
                            child: TaskPastScreen()));
                  }),
            ]),
        GoRoute(
          path: detailMissionPastEtamkawa,
          name: detailMissionPastEtamkawa,
          builder: (BuildContext context, GoRouterState state) {
            final employeeMissionId =
                int.tryParse(state.uri.queryParameters['Id'] ?? '0') ?? 0;
            return SharedComponent.banner(
                dotenv.env[EnvConstant.environment]!,
                ConnectionListenerWidget(
                    child: MissionPastNotifDetailScreen(
                        employeeMissionId: employeeMissionId)));
          },
        ),
        GoRoute(
          path: detailValidationEtamkawa,
          name: detailValidationEtamkawa,
          builder: (BuildContext context, GoRouterState state) {
            return SharedComponent.banner(
                dotenv.env[EnvConstant.environment]!,
                const ConnectionListenerWidget(
                    child: ValidationDetailScreen()));
          },
        ),
      ]),
];
