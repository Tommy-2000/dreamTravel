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
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: widget.child,
      ),
    );
  }
}
