import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChildScaffold extends StatefulWidget {

  final StatefulNavigationShell navigationShell;

  const ChildScaffold({super.key, required this.navigationShell});

  @override
  State<ChildScaffold> createState() => _ChildScaffoldState();
}

class _ChildScaffoldState extends State<ChildScaffold> {
  @override
  Widget build(BuildContext context) {
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
        body: widget.navigationShell, // Render the child from the child route from the StatefulNavigationShell
      ),
    );
  }
}
