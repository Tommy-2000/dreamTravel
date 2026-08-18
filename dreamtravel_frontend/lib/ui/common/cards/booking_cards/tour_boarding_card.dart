import 'package:dreamtravel/data/tour_booking_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class TourBookingCard extends StatefulWidget {
  final TourBookingData tourBookingData;
  final bool appIsLandscape;

  const TourBookingCard({
    super.key,
    required this.tourBookingData,
    required this.appIsLandscape,
  });

  @override
  State<TourBookingCard> createState() => _TourBookingCardState();
}

class _TourBookingCardState extends State<TourBookingCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Stack(
          children: [cardInkWell(), cardText(), cardFavouriteButton()],
        ),
      ),
    );
  }

  Widget cardInkWell() {
    return Positioned.fill(
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        mouseCursor: SystemMouseCursors.click,
        onTap: () {
          GoRouter.of(context).push('/location_details/:locationId');
        },
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.transparent, Colors.black.withValues(alpha: 0.7)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.6, 0.95],
            ),
          ),
        ),
      ),
    );
  }

  Widget cardText() {
    return Positioned(
      left: 20,
      bottom: 20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.tourBookingData.tourDate.toString(),
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            widget.tourBookingData.tourDate.toString(),
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget cardFavouriteButton() {
    return Positioned(
      right: 20,
      bottom: 20,
      child: IconButton(
        splashColor: Colors.yellow,
        mouseCursor: SystemMouseCursors.click,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Trip added to favourites")),
          );
        },
        icon: Icon(Icons.favorite_outline_rounded, color: Colors.white),
      ),
    );
  }
}
