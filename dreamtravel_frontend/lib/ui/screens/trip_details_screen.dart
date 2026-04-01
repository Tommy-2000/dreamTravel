import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/cards/booking_cards/flight/flight_booking_card.dart';
import '../common/cards/text_card.dart';
import '../common/delegates/parallax_flow_delegate.dart';
import '../common/image_not_found.dart';

class TripDetailsScreen extends StatefulWidget {
  TripDetailsScreen({
    super.key,
    required this.tripId,
    required this.heroTag,
    required this.tripCity,
    required this.tripCountry,
    required this.tripStartDate,
    required this.tripEndDate,
    required this.tripImageUrl,
    required this.tripCardIsLandscape,
    required this.tripCardIsFavourite,
  });

  final String tripId;
  final String heroTag;
  final String tripCity;
  final String tripCountry;
  final String tripStartDate;
  final String tripEndDate;
  final String tripImageUrl;
  final bool tripCardIsLandscape;
  late bool tripCardIsFavourite = false;

  @override
  State<TripDetailsScreen> createState() => _TripDetailsScreenState();
}

class _TripDetailsScreenState extends State<TripDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;
    final GlobalKey tripCardBackgroundKey = GlobalKey();

    return Card(child: Column(children: [cardText(colourScheme)]));
  }

  Widget cardText(ColorScheme colourScheme) {
    return Hero(
      tag: "TRIP_CARD_HERO",
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextCard(
                data: widget.tripCity!,
                fontSize: widget.tripCardIsLandscape ? 20 : 15,
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
                data: widget.tripCountry!,
                fontSize: widget.tripCardIsLandscape ? 20 : 15,
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
                data: widget.tripStartDate!,
                fontSize: widget.tripCardIsLandscape ? 15 : 10,
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
                data: widget.tripEndDate!,
                fontSize: widget.tripCardIsLandscape ? 15 : 10,
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
          imageUrl: widget.tripImageUrl,
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
