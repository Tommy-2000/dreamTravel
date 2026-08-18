import 'package:flutter/material.dart';

class TripFavouriteButton extends StatefulWidget {
  final ColorScheme colourScheme;
  final bool tripIsFavourite;

  const TripFavouriteButton({
    super.key,
    required this.colourScheme,
    required this.tripIsFavourite,
  });

  @override
  State<TripFavouriteButton> createState() => _TripFavouriteButtonState();
}

class _TripFavouriteButtonState extends State<TripFavouriteButton> {
  late bool locationCardIsFavourite = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.colourScheme.primary,
        padding: EdgeInsets.all(15),
        shape: StadiumBorder(),
        enabledMouseCursor: SystemMouseCursors.click,
      ),
      child: Icon(
        locationCardIsFavourite
            ? Icons.favorite_rounded
            : Icons.favorite_outline_rounded,
        color: widget.colourScheme.surface,
      ),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Trip added to favourites")),
        );
        setState(() {
          locationCardIsFavourite = true;
        });
      },
    );
  }
}
