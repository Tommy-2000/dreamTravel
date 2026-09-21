import 'package:flutter/material.dart';

class TripInfoButton extends StatefulWidget {
  final ColorScheme colourScheme;
  final VoidCallback buttonCallback;

  const TripInfoButton({
    super.key,
    required this.colourScheme,
    required this.buttonCallback,
  });

  @override
  State<TripInfoButton> createState() => _TripInfoButtonState();
}

class _TripInfoButtonState extends State<TripInfoButton> {
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
