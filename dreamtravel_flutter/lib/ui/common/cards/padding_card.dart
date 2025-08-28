import 'package:flutter/material.dart';

class PaddingCard extends StatefulWidget {
  final Widget child;

  const PaddingCard({super.key,
    required this.child
  });

  @override
  State<PaddingCard> createState() => _PaddingCardState();
}

class _PaddingCardState extends State<PaddingCard> {


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(48),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: widget.child,
      ),
    );
  }
}
