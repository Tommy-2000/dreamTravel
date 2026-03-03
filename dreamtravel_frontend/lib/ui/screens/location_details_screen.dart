import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/cards/booking_cards/flight/flight_booking_card.dart';
import '../common/cards/text_card.dart';
import '../common/delegates/parallax_flow_delegate.dart';
import '../common/image_not_found.dart';

class LocationDetailsScreen extends StatefulWidget {
  LocationDetailsScreen({
    super.key,
    required this.locationId,
    required this.heroTag,
    required this.locationCity,
    required this.locationCountry,
    required this.locationStartDate,
    required this.locationEndDate,
    required this.locationImageUrl,
    required this.locationCardIsLandscape,
    required this.locationCardIsFavourite,
  });

  final String locationId;
  final String heroTag;
  final String locationCity;
  final String locationCountry;
  final String locationStartDate;
  final String locationEndDate;
  final String locationImageUrl;
  final bool locationCardIsLandscape;
  late bool locationCardIsFavourite = false;

  @override
  State<LocationDetailsScreen> createState() => _LocationDetailsScreenState();
}

class _LocationDetailsScreenState extends State<LocationDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;
    final GlobalKey locationCardBackgroundKey = GlobalKey();

    return Card(child: Column(children: [cardText(colourScheme)]));
  }

  Widget cardText(ColorScheme colourScheme) {
    return Hero(
      tag: "LOCATION_CARD_HERO",
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextCard(
                data: widget.locationCity!,
                fontSize: widget.locationCardIsLandscape ? 20 : 15,
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
                data: widget.locationCountry!,
                fontSize: widget.locationCardIsLandscape ? 20 : 15,
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
                data: widget.locationStartDate!,
                fontSize: widget.locationCardIsLandscape ? 15 : 10,
                fontWeight: FontWeight.normal,
                fontStyle: GoogleFonts.montserrat().fontStyle,
                fontColour: colourScheme.primary,
                minFontSize: 10,
                maxLines: 1,
                softWrap: true,
                textAlign: TextAlign.start,
                textOverflow: TextOverflow.fade,
              ),
              TextCard(
                data: widget.locationEndDate!,
                fontSize: widget.locationCardIsLandscape ? 15 : 10,
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
          imageUrl: widget.locationImageUrl,
          // Load a progress placeholder while fetching image url
          placeholder: (context, url) =>
              Center(child: const CircularProgressIndicator()),
          errorWidget: (context, url, error) =>
              Center(child: SizedBox(child: ImageNotFound())),
          imageRenderMethodForWeb: ImageRenderMethodForWeb.HtmlImage,
        ),
      ],
    );
  }
}
