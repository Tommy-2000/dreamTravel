import 'package:cached_network_image/cached_network_image.dart';
import 'package:dreamtravel/ui/common/image_not_found.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class HotelBookingCard extends StatefulWidget {
  final String? locationTitle;
  final String? locationSubtitle;
  final String locationImageUrl;

  const HotelBookingCard({
    super.key,
    this.locationTitle,
    this.locationSubtitle,
    required this.locationImageUrl,
  });

  @override
  State<HotelBookingCard> createState() => _HotelBookingCardState();
}

class _HotelBookingCardState extends State<HotelBookingCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Stack(
          children: [
            cardBackground(context),
            cardInkWell(),
            cardText(),
            cardFavouriteButton(),
          ],
        ),
      ),
    );
  }

  Widget cardBackground(BuildContext context) {
    return Positioned.fill(
      child: CachedNetworkImage(
        key: GlobalKey(),
        fit: BoxFit.cover,
        imageUrl: widget.locationImageUrl,
        // Load a progress placeholder while fetching image url
        placeholder: (context, url) =>
            Center(child: const CircularProgressIndicator()),
        errorWidget: (context, url, error) =>
            Center(child: SizedBox(child: ImageNotFound())),
      ),
    );
  }

  Widget cardInkWell() {
    bool cardOnHover = false;
    return Positioned.fill(
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        mouseCursor: SystemMouseCursors.click,
        onTap: () {
          GoRouter.of(context).push('/location_details/:locationId');
        },
        onHover: (hoverValue) {
          setState(() {
            cardOnHover = hoverValue;
          });
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
            widget.locationTitle!,
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            widget.locationSubtitle!,
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
