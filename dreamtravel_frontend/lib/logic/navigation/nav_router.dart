import 'package:dreamtravel/ui/root/child_scaffold.dart';
import 'package:dreamtravel/ui/root/not_found_screen.dart';
import 'package:dreamtravel/ui/screens/booking_details_screen.dart';
import 'package:dreamtravel/ui/screens/search_screen.dart';
import 'package:dreamtravel/ui/screens/travel_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../ui/common/navigation/nav_screen_model.dart';
import '../../ui/root/parent_scaffold.dart';

class NavRouter {
  final bool routeContainsParameters = false;

  final routerConfig = GoRouter(
    initialLocation: "/explore",
    routes: [
      // All parent routes are rendered inside the ParentScaffold
      // And all child routes are rendered inside the ChildScaffold
      // So that the parent pages are connected to the BottomNavBar and NavRail in the ParentScaffold
      StatefulShellRoute.indexedStack(
        builder: (context, state, navShell) =>
            ParentScaffold(navigationShell: navShell),
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
      // All child routes are rendered outside the ParentScaffold and inside the ChildScaffold
      // StatefulShellRoute(
      //   navigatorContainerBuilder: (context, navShell, navIndex) =>
      //       ChildScaffold(navigationShell: navShell),
      //   branches: [
      //     StatefulShellBranch(
      //       routes: <RouteBase>[
      //         GoRoute(
      //           path: '/search/:searchQuery',
      //           pageBuilder: (context, state) => MaterialPage(
      //             child: SearchScreen(
      //               searchQuery: state.pathParameters['searchQuery'],
      //             ),
      //           ),
      //         ),
      //         GoRoute(
      //           path: '/trip_details/:tripId',
      //           pageBuilder: (context, state) => MaterialPage(
      //             child: TripDetailsScreen(
      //               tripId: state.pathParameters['tripId'],
      //             ),
      //           ),
      //         ),
      //         GoRoute(
      //           path: '/booking_details/:bookingId',
      //           pageBuilder: (context, state) => MaterialPage(
      //             child: BookingDetailsScreen(
      //               bookingId: state.pathParameters['bookingId'],
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
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
        '/create_booking/',
        '/trip_details/',
        '/trip_details/:tripId',
        '/booking_details/',
        '/booking_details/:bookingId',
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
