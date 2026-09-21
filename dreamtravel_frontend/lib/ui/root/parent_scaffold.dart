import 'package:dreamtravel/ui/common/navigation/bottom_nav_bar_scaffold.dart';
import 'package:dreamtravel/ui/common/navigation/nav_rail_scaffold.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/services/mouse_tracking.dart';
import 'package:go_router/go_router.dart';

class ParentScaffold extends StatefulWidget {
  const ParentScaffold({Key? key, required this.navigationShell})
    : super(key: key ?? const ValueKey("ParentScaffold"));

  final StatefulNavigationShell navigationShell;

  @override
  State<ParentScaffold> createState() => _ParentScaffoldState();
}

class _ParentScaffoldState extends State<ParentScaffold> {
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
    // The SafeArea widget fixes an error on Samsung OneUI where the bottom navigation bar is covered by the system navigation
    return SafeArea(
      top: false,
      left: false,
      right: false,
      bottom: true,
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        drawerBarrierDismissible: true,
        resizeToAvoidBottomInset: true,
        body: Listener(
          onPointerHover: _pointerListener,
          child: Row(
            children: [
              Flexible(child: widget.navigationShell),
              if (landscapeWindow) NavRailScaffold(widget.navigationShell),
            ],
          ),
        ),
        bottomNavigationBar: landscapeWindow
            ? null
            : BottomNavBarScaffold(widget.navigationShell),
      ),
    );
  }

  void _pointerListener(PointerEvent pointerEvent) {
    if (kDebugMode) {
      print("Listening to pointer at - ${pointerEvent.position.dx}X ${pointerEvent.position.dy}Y");
    }}
}
