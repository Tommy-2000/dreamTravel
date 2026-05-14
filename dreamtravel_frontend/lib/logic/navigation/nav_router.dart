import 'package:dreamtravel/ui/root/not_found_screen.dart';
import 'package:dreamtravel/ui/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../ui/common/navigation/nav_screen_model.dart';
import '../../ui/root/root_scaffold.dart';

class NavRouter {
  final routerConfig = GoRouter(
    initialLocation: "/explore",
    routes: [
      // All parent routes are bound to the ParentNavScaffold
      // So that the main pages are connected to the BottomNavBar and NavRail in the RootScaffold
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
                path: "/campfire",
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
                path: "/diary",
                pageBuilder: (context, state) =>
                    MaterialPage(child: navScreens[3].navScreen),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/user",
                pageBuilder: (context, state) =>
                    MaterialPage(child: navScreens[4].navScreen),
              ),
            ],
          ),
        ],
      ),
      // All child routes are created outside the ParentNavScaffold, so that the nav UI disappears
      GoRoute(
        path: '/search/:query',
        pageBuilder: (context, state) => MaterialPage(
          child: SearchScreen(searchQuery: state.pathParameters['query']),
        ),
      ),
    ],
    redirect: (context, state) {
      final validRoutes = [
        '/explore',
        '/campfire',
        '/bookings',
        '/bookings/flights',
        '/bookings/hotels',
        '/bookings/rentals',
        '/diary',
        '/user',
        '/search/:searchQuery',
        '/location_details',
        '/location_details/:locationId',
      ];
      if (!validRoutes.contains(state.uri.path)) {
        return '/404';
      } else {
        return null;
      }
    },
    errorBuilder: (context, state) =>
        NotFoundScreen(goRouterException: state.error),
  );
}
