import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({super.key, required this.childWidget});

  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: childWidget,
        ),
      ),
    );
  }
}
