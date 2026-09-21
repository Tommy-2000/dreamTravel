import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:dreamtravel/constants/app_values.dart';
import 'package:dreamtravel/ui/common/cards/text_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../image_not_found.dart';

class CreateBookingCard extends StatefulWidget {
  final bool appIsLandscape;

  const CreateBookingCard({super.key, required this.appIsLandscape});

  @override
  State<CreateBookingCard> createState() => _CreateBookingCardState();
}

Widget cardImage(
  BuildContext context,
  GlobalKey cardBackgroundKey,
  bool isAppLandscape,
) {
  return CachedNetworkImage(
    key: cardBackgroundKey,
    height: 250,
    width: 1500,
    fit: BoxFit.cover,
    imageUrl: createBookingImageUrl,
    // Load a progress placeholder while fetching image url
    placeholder: (context, url) =>
        Center(child: const CircularProgressIndicator()),
    errorWidget: (context, url, error) =>
        Center(child: SizedBox(child: ImageNotFound())),
    imageRenderMethodForWeb: ImageRenderMethodForWeb
        .HtmlImage, // When rendering on web, it should use the default web caching method
  );
}

Widget cardText(ColorScheme colourScheme, bool isAppLandscape) {
  return Positioned(
    bottom: 15,
    right: 15,
    child: Card(
      color: colourScheme.primaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextCard(
              data: "Start A New Adventure!",
              fontSize: isAppLandscape ? 25 : 20,
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
      ),
    ),
  );
}

class _CreateBookingCardState extends State<CreateBookingCard> {
  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: InkWell(
          onTap: () => {},
          child: Stack(
            children: [
              cardImage(context, GlobalKey(), widget.appIsLandscape),
              cardText(colourScheme, widget.appIsLandscape),
            ],
          ),
        ),
      ),
    );
  }
}
