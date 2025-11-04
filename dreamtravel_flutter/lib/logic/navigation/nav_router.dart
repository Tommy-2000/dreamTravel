import 'package:dreamtravel/ui/root/not_found_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../ui/common/navigation/nav_screen_model.dart';
import '../../ui/root/root_scaffold.dart';

class NavRouter {
  final goRouter = GoRouter(
    initialLocation: "/explore",
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navShell) {
          return RootScaffold(navigationShell: navShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/explore",
                pageBuilder: (context, state) =>
                    MaterialPage(child: navScreens[0].navScreen),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/hub",
                pageBuilder: (context, state) =>
                    MaterialPage(child: navScreens[1].navScreen),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/bookings",
                pageBuilder: (context, state) =>
                    MaterialPage(child: navScreens[2].navScreen),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/user",
                pageBuilder: (context, state) =>
                    MaterialPage(child: navScreens[3].navScreen),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/test",
                pageBuilder: (context, state) =>
                    MaterialPage(child: navScreens[4].navScreen),
              ),
            ],
          ),
        ],
      ),
    ],
    redirect: (context, state) {
      final validRoutes = [
        '/explore',
        '/hub',
        '/bookings',
        '/user',
        '/test',
        '/bookings/flights'
        '/bookings/hotels'
        '/bookings/rentals'
      ];
      if (!validRoutes.contains(state.uri.path)) {
        return '/404';
      } else {
        return null;
      }
    },
    errorBuilder: (context, state) => NotFoundScreen(goRouterException: state.error)
  );

  GoRouterState getState() {
    return goRouter.state;
  }

  GoRouterDelegate getDelegate() {
    return goRouter.routerDelegate;
  }

  RouteConfiguration getRouteConfiguration() {
    return goRouter.configuration;
  }

  RouteInformationParser getRouteInfoParser() {
    return goRouter.routeInformationParser;
  }

  RouteInformationProvider getRouteInfoProvider() {
    return goRouter.routeInformationProvider;
  }

  BackButtonDispatcher getBackButtonDispatcher() {
    return goRouter.backButtonDispatcher;
  }



}
