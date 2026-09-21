import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavBranch {
  // Navigate to the branch according to the indexed navigation shell that ParentScaffold passes
  void goToShellBranch(int navIndex, StatefulNavigationShell navigationShell) {
    if (kDebugMode) {
      print("Navigated to branch in navigationShell");
    }
    navigationShell.goBranch(
      navIndex,
      initialLocation: navIndex == navigationShell.currentIndex,
    );
  }

  // Navigate to a branch with routes associated with it
  void goToBranch(BuildContext context, String routePath, String? queryParameters) {
    if (kDebugMode) {
      print("Navigated to branch");
    }
    // context.go(Uri(path: routePath, queryParameters: ));
  }

}
