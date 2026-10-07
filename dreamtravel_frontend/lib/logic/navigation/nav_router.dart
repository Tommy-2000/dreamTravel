import 'package:dreamtravel/ui/root/child_scaffold.dart';
import 'package:dreamtravel/ui/root/not_found_screen.dart';
import 'package:dreamtravel/ui/screens/booking_details_screen.dart';
import 'package:dreamtravel/ui/screens/campfire_details_screen.dart';
import 'package:dreamtravel/ui/screens/search_screen.dart';
import 'package:dreamtravel/ui/screens/trip_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../ui/common/navigation/nav_screen_model.dart';
import '../../ui/root/parent_scaffold.dart';

final navRouter = Provider.autoDispose((ref) {
  final router = GoRouter(
    initialLocation: "/explore",
    redirectLimit: 5,
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
                routes: [
                  GoRoute(
                    path: '/trip_details/:travelId',
                    pageBuilder: (context, state) => MaterialPage(
                      child: TripDetailsScreen(
                        travelId: state.pathParameters['travelId'] ?? '00001',
                        tripHeroTag: state.pathParameters['travelId'] ?? '00001',
                      ),
                    ),
                  ),
                ]
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/campfire",
                pageBuilder: (context, state) =>
                    MaterialPage(child: navScreens[1].navScreen),
                routes: [
                  GoRoute(
                    path: '/campfire_details',
                    pageBuilder: (context, state) => MaterialPage(
                      child: CampfireDetailsScreen(
                        campfireId: state.pathParameters['campfireId'] ?? 'A1234',
                        campfireHeroTag:
                        state.pathParameters['campfireId'] ?? 'A1234',
                      ),
                    ),
                  ),
                ]
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/bookings",
                pageBuilder: (context, state) =>
                    MaterialPage(child: navScreens[2].navScreen),
                routes: [
                  GoRoute(
                    path: '/booking_details',
                    pageBuilder: (context, state) => MaterialPage(
                      child: BookingDetailsScreen(
                        bookingId: state.pathParameters['bookingId'] ?? '#12345',
                        bookingHeroTag:
                        state.pathParameters['bookingId'] ?? '#12345',
                      ),
                    ),
                  ),
                ]
              ),
            ],
          ),
          StatefulShellBranch(routes: [
            GoRoute(
              path: '/search',
              pageBuilder: (context, state) => MaterialPage(
                child: SearchScreen(
                ),
              ),
            ),
          ]),
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
        // redirect: (context, state) {
        //   final authState = context.read(authProvider);
        // },
      ),
    ],
    redirect: (context, state) {
      final validRoutes = [
        '/explore',
        '/campfire',
        '/bookings',
        '/bookings/flights',
        '/bookings/hotels',
        '/bookings/tours',
        '/search',
        '/diary',
        '/user',
        '/create_booking',
        '/trip_details/:travelId',
        '/campfire_details/:campfireId',
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

  return router;
});
