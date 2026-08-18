import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:dreamtravel/ui/common/buttons/trip_favourite_button.dart';
import 'package:dreamtravel/ui/common/buttons/trip_info_button.dart';
import 'package:dreamtravel/ui/common/cards/text_card.dart';
import 'package:dreamtravel/ui/common/image_not_found.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../delegates/parallax_flow_delegate.dart';

class TravelCard extends StatelessWidget {
  final String travelCity;
  final String travelCountry;
  final double travelTotalCost;
  final String travelImageUrl;
  final bool travelCardIsLandscape;

  const TravelCard({
    super.key,
    required this.travelCity,
    required this.travelCountry,
    required this.travelTotalCost,
    required this.travelImageUrl,
    required this.travelCardIsLandscape,
  });

  @override
  Widget build(BuildContext context) {
    late bool tripIsFavourite = false;

    final colourScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Stack(
          children: [
            cardImage(context, GlobalKey()),
            cardGradient(colourScheme),
            cardText(colourScheme),
            Positioned(
              right: 20,
              bottom: 60,
              child: TripInfoButton(colourScheme: colourScheme),
            ),
            Positioned(
              right: 20,
              bottom: 20,
              child: TripFavouriteButton(
                colourScheme: colourScheme,
                tripIsFavourite: tripIsFavourite,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cardImage(BuildContext context, GlobalKey cardBackgroundKey) {
    return Flow(
      delegate: ParallaxFlowDelegate(
        scrollableState: Scrollable.of(context),
        listItemContext: context,
        backgroundImageKey: cardBackgroundKey,
      ),
      children: [
        CachedNetworkImage(
          key: cardBackgroundKey,
          height: 1500,
          width: 1000,
          fit: BoxFit.cover,
          imageUrl: travelImageUrl,
          // Load a progress placeholder while fetching image url
          placeholder: (context, url) =>
              Center(child: const CircularProgressIndicator()),
          errorWidget: (context, url, error) =>
              Center(child: SizedBox(child: ImageNotFound())),
          imageRenderMethodForWeb: ImageRenderMethodForWeb
              .HtmlImage, // When rendering on web, it should use the default web caching method
        ),
      ],
    );
  }

  Widget cardGradient(ColorScheme colourScheme) {
    bool cardOnHover = false;
    return Positioned.fill(
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
    );
  }

  Widget cardText(ColorScheme colourScheme) {
    return Positioned(
      top: 15,
      right: 15,
      child: Hero(
        tag: "trip_CARD_HERO",
        child: Card(
          color: colourScheme.primaryContainer,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextCard(
                  data: travelCity,
                  fontSize: travelCardIsLandscape ? 25 : 20,
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
                  data: travelCountry,
                  fontSize: travelCardIsLandscape ? 15 : 10,
                  fontWeight: FontWeight.bold,
                  fontStyle: GoogleFonts.montserrat().fontStyle,
                  fontColour: colourScheme.primary,
                  minFontSize: 10,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.start,
                  textOverflow: TextOverflow.fade,
                ),
                Card(
                  color: colourScheme.primaryContainer,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextCard(
                      data: "Total Cost: £$travelTotalCost",
                      fontSize: travelCardIsLandscape ? 15 : 10,
                      fontWeight: FontWeight.bold,
                      fontStyle: GoogleFonts.montserrat().fontStyle,
                      fontColour: colourScheme.primary,
                      minFontSize: 10,
                      maxLines: 1,
                      softWrap: true,
                      textAlign: TextAlign.start,
                      textOverflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
