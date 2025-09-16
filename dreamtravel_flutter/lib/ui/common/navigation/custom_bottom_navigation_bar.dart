import 'dart:ui';

import 'package:dreamtravel/logic/navigation/go_branch.dart';
import 'package:dreamtravel/ui/common/navigation/nav_screen_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';



class CustomBottomNavigationBar extends ConsumerStatefulWidget {
  const CustomBottomNavigationBar(this.navigationShell, {super.key});

  final StatefulNavigationShell navigationShell;


  // // Check the rive of the Rive icons when navigating
  // List<SMIBool> riveIconInputs = [];

  // void animateRiveIcon(int riveIndex) {
  //   riveIconInputs[riveIndex].change(true);
  //   Future.delayed(Duration(seconds: 1), () {
  //     riveIconInputs[riveIndex].change(false);
  //   });
  // }

  // void riveOnInit(Artboard artboard, {required String riveStateMachine}) {
  //   StateMachineController? riveController =
  //       StateMachineController.fromArtboard(artboard, riveStateMachine);
  //   artboard.addController(
  //     riveController!,
  //   ); // Check for nulls when animating Rive icons
  //   riveIconInputs.add(
  //     riveController.findInput<bool>('active') as SMIBool,
  //   ); // Check the type as bool
  // }

  @override
  ConsumerState<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState
    extends ConsumerState<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("CustomBottomNavigationBar has been built");
    }
    return Padding(
      padding: const EdgeInsets.all(30),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        child: Container(
          color: Colors.lightBlue,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
            child: SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(navScreens.length, (navIndex) {
                  // final riveModel = bottomNavItems[index].riveModel;
                  return Column(
                    children: [
                      IconButton(
                        mouseCursor: SystemMouseCursors.click,
                        icon: Icon(navScreens[navIndex].navScreenIcon, color: Colors.white),
                        isSelected: true,
                        onPressed: () {
                          if (kDebugMode) {
                            print("CustomBottomNavigationBar button has been tapped");
                          }
                          GoBranch().goToBranch(navIndex, widget.navigationShell);
                        },
                      ),
                      Text(navScreens[navIndex].navScreenName, style: TextStyle(color: Colors.white))
                    ],
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
