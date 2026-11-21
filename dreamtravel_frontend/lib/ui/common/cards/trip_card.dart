import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:dreamtravel/ui/common/buttons/trip_favourite_button.dart';
import 'package:dreamtravel/ui/common/cards/rounded_card.dart';
import 'package:dreamtravel/ui/common/cards/text_card.dart';
import 'package:dreamtravel/ui/common/image_not_found.dart';
import 'package:dreamtravel/ui/common/responsive_render.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../buttons/trip_details_button.dart';
import '../delegates/parallax_flow_delegate.dart';

class TripCard extends StatefulWidget {
  final ResponsiveRender responsiveRender;
  final String tripCardHeroTag;
  final String travelCity;
  final String travelCountry;
  final double travelTotalCost;
  final String travelImageUrl;
  final VoidCallback tripCardOnTap;

  const TripCard({
    super.key,
    required this.responsiveRender,
    required this.tripCardHeroTag,
    required this.travelCity,
    required this.travelCountry,
    required this.travelTotalCost,
    required this.travelImageUrl,
    required this.tripCardOnTap,
  });

  @override
  State<TripCard> createState() => _TripCardState();
}

class _TripCardState extends State<TripCard> {
  late ResponsiveRender responsiveRender;
  late bool tripIsFavourite = false;

  Widget cardImage(BuildContext context, GlobalKey cardBackgroundKey) {
    return Hero(
      tag: widget.tripCardHeroTag,
      child: CachedNetworkImage(
        key: cardBackgroundKey,
        height: 1500,
        width: 1000,
        memCacheHeight: 1500,
        memCacheWidth: 1000,
        fit: BoxFit.cover,
        imageUrl: widget.travelImageUrl,
        // Load a progress placeholder while fetching image url
        placeholder: (context, url) =>
            Center(child: const CircularProgressIndicator()),
        errorWidget: (context, url, error) =>
            Center(child: SizedBox(child: ImageNotFound())),
        imageRenderMethodForWeb: ImageRenderMethodForWeb
            .HtmlImage, // When rendering on web, it should use the default web caching method
      ),
    );
  }

  Widget cardGradient(ColorScheme colourScheme) {
    bool cardOnHover = false;
    return RoundedCard(
      child: Positioned.fill(
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

  Widget cardText(ResponsiveRender responsive, ColorScheme colourScheme) {
    return Positioned(
      top: 3,
      right: 3,
      child: RoundedCard(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextCard(
                data: widget.travelCity,
                fontSize: responsive.screenIsExtraLarge ? 25 : 20,
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
                data: widget.travelCountry,
                fontSize: responsive.screenIsExtraLarge ? 15 : 10,
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
                    data: "£${widget.travelTotalCost} per person",
                    fontSize: responsive.screenIsExtraLarge ? 15 : 10,
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
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // ResponsiveRender notifies this screen if any responsive screen changes are detected
    responsiveRender = ResponsiveRender(context);
  }

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Stack(
          children: [
            cardImage(context, GlobalKey()),
            cardGradient(colourScheme),
            cardText(responsiveRender, colourScheme),
            Positioned(
              right: 20,
              bottom: 60,
              child: TripDetailsButton(
                colourScheme: colourScheme,
                buttonCallback: () => widget.tripCardOnTap,
              ),
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
}
