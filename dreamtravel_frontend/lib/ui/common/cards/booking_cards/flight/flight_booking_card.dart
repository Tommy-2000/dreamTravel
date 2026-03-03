import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:dreamtravel/ui/common/cards/text_card.dart';
import 'package:dreamtravel/ui/common/image_not_found.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlightBookingCard extends StatefulWidget {
  final String? flightBookingCity;
  final String? flightBookingCountry;
  final String? flightBookingStartDate;
  final String? flightBookingEndDate;
  final String flightBookingImageUrl;
  final bool flightBookingCardIsLandscape;
  late bool flightBookingCardIsFavourite = false;

  FlightBookingCard({
    super.key,
    this.flightBookingCity,
    this.flightBookingCountry,
    this.flightBookingStartDate,
    this.flightBookingEndDate,
    required this.flightBookingImageUrl,
    required this.flightBookingCardIsLandscape,
    required bool flightBookingCardIsFavourite,
  });

  @override
  State<FlightBookingCard> createState() => _FlightBookingCardState();
}

class _FlightBookingCardState extends State<FlightBookingCard> {
  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;
    final GlobalKey locationCardBackgroundKey = GlobalKey();

    return Padding(
      padding: const EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Stack(
          children: [
            cardImage(context, locationCardBackgroundKey),
            cardInkWell(colourScheme),
            cardText(colourScheme),
            cardFavouriteButton(),
          ],
        ),
      ),
    );
  }

  Widget cardImage(BuildContext context, GlobalKey cardBackgroundKey) {
    return CachedNetworkImage(
      key: cardBackgroundKey,
      height: 1500,
      width: 1000,
      fit: BoxFit.cover,
      imageUrl: widget.flightBookingImageUrl,
      // Load a progress placeholder while fetching image url
      placeholder: (context, url) =>
          Center(child: const CircularProgressIndicator()),
      errorWidget: (context, url, error) =>
          Center(child: SizedBox(child: ImageNotFound())),
      imageRenderMethodForWeb: ImageRenderMethodForWeb.HtmlImage,
    );
  }

  Widget cardInkWell(ColorScheme colourScheme) {
    bool cardOnHover = false;
    return Positioned.fill(
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        mouseCursor: SystemMouseCursors.click,
        onTap: () {},
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

  Widget cardText(ColorScheme colourScheme) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  TextCard(
                    data: widget.flightBookingCity!,
                    fontSize: widget.flightBookingCardIsLandscape ? 20 : 15,
                    fontWeight: FontWeight.bold,
                    fontStyle: GoogleFonts.montserrat().fontStyle,
                    fontColour: colourScheme.primary,
                    minFontSize: 10,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.start,
                    textOverflow: TextOverflow.fade,
                  ),
                  TextCard(
                    data: widget.flightBookingCountry!,
                    fontSize: widget.flightBookingCardIsLandscape ? 20 : 15,
                    fontWeight: FontWeight.bold,
                    fontStyle: GoogleFonts.montserrat().fontStyle,
                    fontColour: colourScheme.primary,
                    minFontSize: 10,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.start,
                    textOverflow: TextOverflow.fade,
                  ),
                ],
              ),
              TextCard(
                data: widget.flightBookingStartDate!,
                fontSize: widget.flightBookingCardIsLandscape ? 15 : 10,
                fontWeight: FontWeight.normal,
                fontStyle: GoogleFonts.montserrat().fontStyle,
                fontColour: colourScheme.primary,
                minFontSize: 10,
                maxLines: 1,
                softWrap: true,
                textAlign: TextAlign.start,
                textOverflow: TextOverflow.fade,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget cardFavouriteButton() {
    return Positioned(
      bottom: 10,
      left: 10,
      child: IconButton(
        color: Colors.red,
        splashColor: Colors.redAccent,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Trip added to favourites")),
          );
          setState(() {
            widget.flightBookingCardIsFavourite = true;
          });
        },
        icon: Icon(widget.flightBookingCardIsFavourite ? Icons.favorite_rounded : Icons.favorite_outline_rounded, color: Colors.white),
      ),
    );
  }
}
