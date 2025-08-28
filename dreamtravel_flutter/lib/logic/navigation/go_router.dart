import 'package:dreamtravel/ui/root/not_found_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../ui/common/navigation/nav_screen_model.dart';
import '../../ui/root/root_scaffold.dart';

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
                  MaterialPage(child: navScreenItems[0].navScreen),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/trips",
              pageBuilder: (context, state) =>
                  MaterialPage(child: navScreenItems[1].navScreen),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/bookings",
              pageBuilder: (context, state) =>
                  MaterialPage(child: navScreenItems[2].navScreen),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/search",
              pageBuilder: (context, state) =>
                  MaterialPage(child: navScreenItems[3].navScreen),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/user",
              pageBuilder: (context, state) =>
                  MaterialPage(child: navScreenItems[4].navScreen),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/404",
              pageBuilder: (context, state) =>
                  MaterialPage(child: NotFoundScreen()),
            ),
          ],
        ),
      ],
    ),
  ],
  redirect: (context, state) {
    final validRoutes = [
      '/explore',
      '/trips',
      '/bookings',
      '/search',
      '/user',
      '/trips/details/',
    ];
    if (!validRoutes.contains(state.uri.path)) {
      return '/404';
    } else {
      return null;
    }
  },
);
