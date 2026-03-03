import 'package:flutter/material.dart';

class ScreenPadding extends StatelessWidget {
  final Widget child;

  const ScreenPadding({super.key,
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: child,
    );
  }
}
