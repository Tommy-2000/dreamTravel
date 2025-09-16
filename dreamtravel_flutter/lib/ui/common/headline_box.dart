import 'package:flutter/material.dart';

class HeadlineBox extends StatefulWidget {
  final Widget child;

  const HeadlineBox({super.key,
    required this.child
  });

  @override
  State<HeadlineBox> createState() => _HeadlineBoxState();
}

class _HeadlineBoxState extends State<HeadlineBox> {


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(48),
          child: widget.child,
        ),
      ),
    );
  }
}
