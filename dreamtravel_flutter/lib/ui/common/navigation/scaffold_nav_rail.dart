import 'package:dreamtravel/logic/navigation/go_branch.dart';
import 'package:dreamtravel/ui/common/navigation/nav_screen_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';

class ScaffoldNavRail extends ConsumerStatefulWidget {
  ScaffoldNavRail(this.navigationShell, {super.key});

  final StatefulNavigationShell navigationShell;

  final uiDebugLogger = Logger("uiDebugLogger");

  @override
  ConsumerState<ScaffoldNavRail> createState() => _CustomNavRailState();
}

class _CustomNavRailState extends ConsumerState<ScaffoldNavRail> {
  bool toggleButtonIsSelected = true;
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("CustomNavigationRail has been built");
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        color: Colors.lightBlue,
        width: 125,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(navScreens.length, (navIndex) {
                return Column(
                  children: [
                    IconButton(
                      mouseCursor: SystemMouseCursors.click,
                      focusColor: Colors.white,
		      isSelected: true,
                      icon: Icon(navScreens[navIndex].navScreenIcon, color: Colors.white),
                      onPressed: () {
                        if (kDebugMode) {
                          print(
                            "CustomNavigationRail button has been tapped",
                          );
                        }
                        GoBranch().goToBranch(
                          navIndex,
                          widget.navigationShell,
                        );
                      },
                    ),
                    Text(navScreens[navIndex].navScreenName, style: TextStyle(color: Colors.white)),
                  ],
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
