import 'package:dreamtravel/ui/bookings/flights_screen.dart';
import 'package:dreamtravel/ui/bookings/hotel_screen.dart';
import 'package:dreamtravel/ui/bookings/rentals_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../ui/common/navigation/nav_screen_model.dart';
import '../../ui/root/root_scaffold.dart';

class TravelGoRouter {
  final travelGoRouter = GoRouter(
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
                path: "/search",
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
                routes: <RouteBase>[
                  GoRoute(
                    path: "flights",
                    pageBuilder: (context, state) => MaterialPage(
                      child: HeroControllerScope(
                        controller: MaterialApp.createMaterialHeroController(),
                        child: FlightsScreen(),
                      ),
                    ),
                  ),
                  GoRoute(
                    path: "hotels",
                    pageBuilder: (context, state) => MaterialPage(
                      child: HeroControllerScope(
                        controller: MaterialApp.createMaterialHeroController(),
                        child: HotelsScreen(),
                      ),
                    ),
                  ),
                  GoRoute(
                    path: "rentals",
                    pageBuilder: (context, state) => MaterialPage(
                      child: HeroControllerScope(
                        controller: MaterialApp.createMaterialHeroController(),
                        child: RentalsScreen(),
                      ),
                    ),
                  ),
                ],
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
      final validWebRoutes = [
        '/explore',
        '/bookings',
        '/search',
        '/user',
        '/test',
        '/bookings/flights'
        '/bookings/hotels'
        '/bookings/rentals'
      ];
      if (!validWebRoutes.contains(state.uri.path)) {
        return '/404';
      } else {
        return null;
      }
    },
  );

  GoRouterDelegate getGoRouterDelegate() {
    return travelGoRouter.routerDelegate;
  }
}
