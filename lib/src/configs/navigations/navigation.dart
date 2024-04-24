import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:module_etamkawa/src/configs/navigations/routes.dart';
import 'package:module_etamkawa/src/features/mission/domain/gamification_response.remote.dart';
import 'package:module_etamkawa/src/features/mission_detail/presentation/mission.detail.screen.dart';
import 'package:module_etamkawa/src/features/mission_past/presentation/mission_past_detail.screen.dart';
import 'package:module_etamkawa/src/features/mission_past/presentation/task_past.screen.dart';
import 'package:module_etamkawa/src/features/task/presentation/task.screen.dart';
import 'package:module_etamkawa/src/features/task/presentation/task_assignment.screen.dart';
import 'package:module_etamkawa/src/features/validation_detail/presentation/validation.detail.screen.dart';
import 'package:module_shared/module_shared.dart';

import '../../features/main_nav/presentation/main_nav_screen.dart';
import '../../shared_component/connection_listener_widget.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navigation.g.dart';

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
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
                GoRoute(
                    path: taskAssignmentMissionEtamkawa,
                    name: taskAssignmentMissionEtamkawa,
                    builder: (BuildContext context, GoRouterState state) {
                      return SharedComponent.banner(
                          dotenv.env[EnvConstant.environment]!,
                          const ConnectionListenerWidget(
                              child: TaskAssignmentScreen()));
                    }),
              ]),
          GoRoute(
              path: detailMissionPastEtamkawa,
              name: detailMissionPastEtamkawa,
              builder: (BuildContext context, GoRouterState state) {
                return SharedComponent.banner(
                    dotenv.env[EnvConstant.environment]!,
                    const ConnectionListenerWidget(
                        child: MissionPastDetailScreen()));
              },
              routes: [
                GoRoute(
                    path: taskMissionPastEtamkawa,
                    name: taskMissionPastEtamkawa,
                    builder: (BuildContext context, GoRouterState state) {
                      return SharedComponent.banner(
                          dotenv.env[EnvConstant.environment]!,
                          const ConnectionListenerWidget(child: TaskPastScreen()));
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
      path: homeEtakawa,
      name: homeEtakawa,
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
                  const ConnectionListenerWidget(child: MissionDetailScreen()));
            },
            routes: [
              GoRoute(
                  path: taskMissionEtamkawa,
                  name: taskMissionEtamkawa,
                  builder: (BuildContext context, GoRouterState state) {
                    List<TaskDatum> list = [];
                    return SharedComponent.banner(
                        dotenv.env[EnvConstant.environment]!,
                        const ConnectionListenerWidget(child: TaskScreen()));
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
];
