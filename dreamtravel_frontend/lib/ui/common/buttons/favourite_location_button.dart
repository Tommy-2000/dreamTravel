import 'package:flutter/material.dart';

class FavouriteTripButton extends StatefulWidget {
  final ColorScheme colourScheme;
  late bool locationCardIsFavourite = false;

  FavouriteTripButton({super.key, required this.colourScheme});

  @override
  State<FavouriteTripButton> createState() => _FavouriteTripButtonState();
}

class _FavouriteTripButtonState extends State<FavouriteTripButton> {

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.colourScheme.primary,
        padding: EdgeInsets.all(15),
        shape: RoundedSuperellipseBorder(borderRadius: BorderRadius.circular(35)),
        enabledMouseCursor: SystemMouseCursors.click,
      ),
      child: Icon(
        widget.locationCardIsFavourite
            ? Icons.favorite_rounded
            : Icons.favorite_outline_rounded,
        color: widget.colourScheme.surface,
      ),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Trip added to favourites")),
        );
        setState(() {
          widget.locationCardIsFavourite;
        });
      },
    );
  }
}
