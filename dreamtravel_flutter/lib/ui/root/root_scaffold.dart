import 'package:dreamtravel/ui/common/navigation/custom_bottom_navigation_bar.dart';
import 'package:dreamtravel/ui/common/navigation/custom_navigation_rail.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RootScaffold extends StatefulWidget {
  const RootScaffold({Key? key, required this.navigationShell})
    : super(key: key ?? const ValueKey("NavScaffold"));

  final StatefulNavigationShell navigationShell;

  @override
  State<RootScaffold> createState() => _RootScaffoldState();
}

class _RootScaffoldState extends State<RootScaffold> {
  bool landscapeWindow = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Check the width of the window using MediaQuery if greater than 600 in a state change
    final double windowWidth = MediaQuery.of(context).size.width;
    landscapeWindow = windowWidth > 600;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Row(
        children: [
          if (landscapeWindow) CustomNavigationRail(widget.navigationShell),
          Expanded(child: widget.navigationShell),
        ],
      ),
      bottomNavigationBar: landscapeWindow
          ? null
          : CustomBottomNavigationBar(widget.navigationShell),
    );
  }
}
