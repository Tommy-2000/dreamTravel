import 'dart:ui';
import 'package:dreamtravel/logic/navigation/nav_branch.dart';
import 'package:dreamtravel/ui/common/navigation/nav_screen_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';

class ScaffoldBottomNavBar extends ConsumerStatefulWidget {
  ScaffoldBottomNavBar(this.navigationShell, {super.key});

  final StatefulNavigationShell navigationShell;

  final uiDebugLogger = Logger("uiDebugLogger");


  @override
  ConsumerState<ScaffoldBottomNavBar> createState() =>
      _CustomBottomNavBarState();
}

class _CustomBottomNavBarState
    extends ConsumerState<ScaffoldBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("CustomBottomNavigationBar has been built");
    }
    return Padding(
      padding: const EdgeInsets.all(30),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          color: Colors.lightBlue,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
            child: SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(navScreens.length, (navIndex) {
                  return IconButton(
                    mouseCursor: SystemMouseCursors.click,
                    icon: Icon(navScreens[navIndex].navScreenIcon, color: Colors.white),
                    isSelected: true,
                    onPressed: () {
                      if (kDebugMode) {
                        print("CustomBottomNavigationBar button has been tapped");
                      }
                      NavBranch().goToBranch(navIndex, widget.navigationShell);
                    },
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
