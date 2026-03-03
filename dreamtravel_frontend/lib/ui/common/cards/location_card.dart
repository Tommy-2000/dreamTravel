import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:dreamtravel/ui/common/cards/text_card.dart';
import 'package:dreamtravel/ui/common/image_not_found.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../delegates/parallax_flow_delegate.dart';

class LocationCard extends StatefulWidget {
  final String locationCity;
  final String locationCountry;
  final String locationStartDate;
  final String locationEndDate;
  final String locationImageUrl;
  final bool locationCardIsLandscape;
  late bool locationCardIsFavourite = false;

  LocationCard({
    super.key,
    required this.locationCity,
    required this.locationCountry,
    required this.locationStartDate,
    required this.locationEndDate,
    required this.locationImageUrl,
    required this.locationCardIsLandscape,
    required bool locationCardIsFavourite,
  });

  @override
  State<LocationCard> createState() => _LocationCardState();
}

class _LocationCardState extends State<LocationCard> {
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
            cardFavouriteButton(colourScheme),
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
      top: 15,
      right: 15,
      child: Hero(
        tag: "LOCATION_CARD_HERO",
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
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
      ),
    );
  }

  Widget cardFavouriteButton(ColorScheme colourScheme) {
    return Positioned(
      bottom: 20,
      left: 20,
      child: FloatingActionButton(
        backgroundColor: colourScheme.primary,
        splashColor: colourScheme.primary,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Trip added to favourites")),
          );
          setState(() {
            widget.locationCardIsFavourite = true;
          });
        },
        child: Icon(
          widget.locationCardIsFavourite
              ? Icons.favorite_rounded
              : Icons.favorite_outline_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}

