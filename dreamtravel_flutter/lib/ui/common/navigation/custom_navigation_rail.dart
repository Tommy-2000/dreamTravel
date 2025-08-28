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

  double navigationRailWidthOpen = 300;

  @override
  Widget build(BuildContext context) {
    final navigationRailAdaptiveWidth = MediaQuery.of(context).size.width;
    double navigationRailWidthClosed = navigationRailAdaptiveWidth * 0.15;

    if (kDebugMode) {
      print("CustomNavigationRail has been built");
    }
    return Container(
      color: Colors.deepOrange,
      width: toggleButtonIsSelected
          ? navigationRailWidthOpen
          : navigationRailWidthClosed,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    toggleButtonIsSelected = true;
                    navigationRailWidthClosed =
                        navigationRailAdaptiveWidth * 0.30;
                  });
                },
                icon: Icon(Icons.menu_rounded, color: Colors.white),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(navScreenItems.length, (navIndex) {
                    if (toggleButtonIsSelected = false) {
                      return Row(
                        children: [
                          navScreenItems[navIndex].navScreenName,
                          IconButton(
                            mouseCursor: SystemMouseCursors.click,
                            icon: navScreenItems[navIndex].navScreenIcon,
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
                    } else {
                      return IconButton(
                        mouseCursor: SystemMouseCursors.click,
                        focusColor: Colors.teal,
                        icon: navScreenItems[navIndex].navScreenIcon,
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
                      );
                    }
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
