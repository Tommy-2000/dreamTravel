import 'dart:ui';
import 'package:dreamtravel/logic/navigation/nav_branch.dart';
import 'package:dreamtravel/ui/common/navigation/nav_screen_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';

class BottomNavBarScaffold extends StatefulWidget {
  const BottomNavBarScaffold(this.navigationShell, this.navScreenIconIsSelected, {super.key});

  final StatefulNavigationShell navigationShell;
  final bool navScreenIconIsSelected;

  @override
  State<BottomNavBarScaffold> createState() =>
      _BottomNavBarScaffoldState();
}

class _BottomNavBarScaffoldState extends State<BottomNavBarScaffold> {
  @override
  Widget build(BuildContext context) {
    late Logger uiDebugLogger = Logger("uiDebugLogger");
    final colourScheme = Theme.of(context).colorScheme;
    bool iconIsSelected = widget.navScreenIconIsSelected;

    if (kDebugMode) {
      print("BottomNavBarScaffold is rendering");
    }
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          color: colourScheme.primaryContainer,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
            child: SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(navScreens.length, (navIndex) {
                  return IconButton(
                    onPressed: () {
                      if (kDebugMode) {
                        print(
                          "BottomNavBarScaffold button has been tapped",
                        );
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
      ),
    );
  }
}
