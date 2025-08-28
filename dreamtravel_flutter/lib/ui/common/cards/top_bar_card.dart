import 'package:flutter/material.dart';

class TopBarCard extends StatefulWidget {
  final Widget child;

  const TopBarCard({super.key,
    required this.child
  });

  @override
  State<TopBarCard> createState() => _TopBarCardState();
}

class _TopBarCardState extends State<TopBarCard> {


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(48),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: widget.child,
        ),
      ),
    );
  }
}
