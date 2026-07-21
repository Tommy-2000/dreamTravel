import 'package:flutter/material.dart';

class TripInfoButton extends StatefulWidget {
  final ColorScheme colourScheme;

  const TripInfoButton({super.key, required this.colourScheme});

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
      onPressed: () {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text("Go To Trip #123")));
        setState(() {});
      },
    );
  }
}
