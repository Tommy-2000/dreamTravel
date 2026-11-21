import 'package:flutter/material.dart';

class TripDetailsButton extends StatefulWidget {
  final ColorScheme colourScheme;
  final VoidCallback buttonCallback;

  const TripDetailsButton({
    super.key,
    required this.colourScheme,
    required this.buttonCallback,
  });

  @override
  State<TripDetailsButton> createState() => _TripDetailsButtonState();
}

class _TripDetailsButtonState extends State<TripDetailsButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.colourScheme.primary,
        padding: EdgeInsets.all(15),
        shape: StadiumBorder(),
        enabledMouseCursor: SystemMouseCursors.click,
      ),
      child: Icon(Icons.info_rounded, color: widget.colourScheme.surface),
      onPressed: () => widget.buttonCallback,
    );
  }
}
