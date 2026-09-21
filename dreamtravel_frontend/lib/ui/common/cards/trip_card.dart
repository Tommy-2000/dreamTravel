import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:dreamtravel/ui/common/buttons/favourite_location_button.dart';
import 'package:dreamtravel/ui/common/cards/text_card.dart';
import 'package:dreamtravel/ui/common/image_not_found.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../delegates/parallax_flow_delegate.dart';

class TripCard extends StatelessWidget {
  final String tripCity;
  final String tripCountry;
  final double tripTotalCost;
  final String tripImageUrl;
  final bool tripCardIsLandscape;
  late bool tripCardIsFavourite = false;

  TripCard({
    super.key,
    required this.tripCity,
    required this.tripCountry,
    required this.tripTotalCost,
    required this.tripImageUrl,
    required this.tripCardIsLandscape,
    required bool tripCardIsFavourite,
  });

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme
        .of(context)
        .colorScheme;
    final GlobalKey tripCardBackgroundKey = GlobalKey();

    return Padding(
      padding: const EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Stack(
          children: [
            cardImage(context, tripCardBackgroundKey),
            cardInkWell(colourScheme),
            cardText(colourScheme),
            Positioned(
              right: 20,
              bottom: 20,
              child: FavouriteTripButton(colourScheme: colourScheme),
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
          imageUrl: tripImageUrl,
          // Load a progress placeholder while fetching image url
          placeholder: (context, url) =>
              Center(child: const CircularProgressIndicator()),
          errorWidget: (context, url, error) =>
              Center(child: SizedBox(child: ImageNotFound())),
          imageRenderMethodForWeb: ImageRenderMethodForWeb
              .HtmlImage, // When rendering on web, it should use HTML
        ),
      ],
    );
  }

  Widget cardInkWell(ColorScheme colourScheme) {
    bool cardOnHover = false;
    return Positioned.fill(
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        mouseCursor: SystemMouseCursors.click,
        onTap: () {},
        onHover: (hoverValue) {},
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
                  data: tripCity,
                  fontSize: tripCardIsLandscape ? 25 : 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: GoogleFonts
                      .montserrat()
                      .fontStyle,
                  fontColour: colourScheme.primary,
                  minFontSize: 10,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.start,
                  textOverflow: TextOverflow.fade,
                ),
                TextCard(
                  data: tripCountry,
                  fontSize: tripCardIsLandscape ? 15 : 10,
                  fontWeight: FontWeight.bold,
                  fontStyle: GoogleFonts
                      .montserrat()
                      .fontStyle,
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
                      data: "Total Cost: £$tripTotalCost",
                      fontSize: tripCardIsLandscape ? 15 : 10,
                      fontWeight: FontWeight.bold,
                      fontStyle: GoogleFonts
                          .montserrat()
                          .fontStyle,
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
