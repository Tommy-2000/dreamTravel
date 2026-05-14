import 'dart:ui';

import 'package:dreamtravel/logic/navigation/nav_branch.dart';
import 'package:dreamtravel/ui/common/navigation/nav_screen_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';

class NavRailScaffold extends StatefulWidget {
  const NavRailScaffold(this.navigationShell, this.navigationIndex, {super.key});

  final StatefulNavigationShell navigationShell;

  final int navigationIndex;

  @override
  State<NavRailScaffold> createState() => _NavRailScaffoldState();
}

class _NavRailScaffoldState extends State<NavRailScaffold> {
  @override
  Widget build(BuildContext context) {
    late Logger uiDebugLogger = Logger("uiDebugLogger");
    final colourScheme = Theme.of(context).colorScheme;
    late bool iconIsSelected = false;

    if (kDebugMode) {
      print("NavRailScaffold is rendering");
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        color: colourScheme.primaryContainer,
        width: 100,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              spacing: 50.0,
              children: List.generate(navScreens.length, (navIndex) {
                return IconButton(
                  color: colourScheme.primaryContainer,
                  onPressed: () {
                    if (kDebugMode) {
                      print("NavRailScaffold button has been tapped");
                    }
                    setState(() {
                      iconIsSelected = true;
                    });
                    NavBranch().goToShellBranch(navIndex, widget.navigationShell);
                  },
                  icon: Column(
                    children: [
                      iconIsSelected
                          ? navScreens[navIndex].navScreenSelectedIcon
                          : navScreens[navIndex].navScreenIcon,
                      Text(navScreens[navIndex].navScreenName, style: TextStyle(color: colourScheme.primary)),
                    ],
                  ),

                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
