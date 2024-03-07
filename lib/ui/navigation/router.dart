import 'package:get_it/get_it.dart';
import 'package:moneymoney/ui/navigation/names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moneymoney/ui/pages/error/index.dart';
import 'package:moneymoney/ui/pages/movement_edit/container.dart';
import 'package:moneymoney/ui/pages/movement_edit/params.dart';
import 'package:moneymoney/ui/pages/movement_list/container.dart';
import 'package:moneymoney/ui/pages/movement_list_filter/container.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  navigatorKey: GetIt.I.get<GlobalKey<NavigatorState>>(),
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: PageNames.movementListScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const MovementListScreen();
      },
      routes: [
        GoRoute(
          path: ':id(\\d{8}|new)',
          name: PageNames.movementEditScreen,
          builder: (BuildContext context, GoRouterState state) {
            final extra = state.extra! as MovementEditScreenParams;
            return MovementEditScreen(
                id: extra.id,
            );
          },
        ),
        GoRoute(
          path: 'filter',
          name: PageNames.movementFilterScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const MovementListFilterScreen();
          },
        ),
      ]
    ),
  ],
  errorBuilder: (context, state) => const ErrorScreen(),
  debugLogDiagnostics: true,
);
