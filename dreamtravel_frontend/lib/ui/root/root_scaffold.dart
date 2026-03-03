import 'package:dreamtravel/ui/common/navigation/bottom_nav_bar_scaffold.dart';
import 'package:dreamtravel/ui/common/navigation/nav_rail_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RootScaffold extends StatefulWidget {
  const RootScaffold({Key? key, required this.navigationShell})
    : super(key: key ?? const ValueKey("RootScaffold"));

  final StatefulNavigationShell navigationShell;

  @override
  State<RootScaffold> createState() => _RootScaffoldState();
}

class _RootScaffoldState extends State<RootScaffold> {
  bool landscapeWindow = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Check the width of the window using MediaQuery if greater than 800 in a state change
    final double windowWidth = MediaQuery.of(context).size.width;
    landscapeWindow = windowWidth > 800;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      left: false,
      right: false,
      bottom: true, // This fixes an error on Samsung OneUI where the bottom navigation bar is covered by the system navigation
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: true,
        body: Row(
          children: [
            Flexible(child: widget.navigationShell),
            if (landscapeWindow) NavRailScaffold(widget.navigationShell, widget.navigationShell.currentIndex),
          ],
        ),
        bottomNavigationBar: landscapeWindow
            ? null
            : BottomNavBarScaffold(widget.navigationShell, false),
      ),
    );
  }
}


