import 'package:dreamtravel/logic/navigation/go_branch.dart';
import 'package:dreamtravel/ui/common/navigation/nav_screen_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CustomNavigationRail extends ConsumerStatefulWidget {
  const CustomNavigationRail(this.navigationShell, {super.key});

  final StatefulNavigationShell navigationShell;

  @override
  ConsumerState<CustomNavigationRail> createState() => _NavigationRailState();
}

class _NavigationRailState extends ConsumerState<CustomNavigationRail> {
  bool toggleButtonIsSelected = true;
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("CustomNavigationRail has been built");
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(60),
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
                    MaterialButton(
                      mouseCursor: SystemMouseCursors.click,
                      focusColor: Colors.white,
                      child: Column(
                        children: [
                          Icon(navScreens[navIndex].navScreenIcon, color: Colors.white),
                          Text(navScreens[navIndex].navScreenName, style: TextStyle(color: Colors.white)),
                        ],
                      ),
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
