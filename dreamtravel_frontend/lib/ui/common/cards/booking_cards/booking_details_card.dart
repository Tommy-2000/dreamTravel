import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:dreamtravel/logic/models/examples/flight_boarding_data.dart';
import 'package:dreamtravel/ui/common/cards/text_card.dart';
import 'package:dreamtravel/ui/common/image_not_found.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../logic/models/examples/booking_data.dart';

class BookingDetailsCard extends StatelessWidget {
  final BookingData bookingData;
  final String bookingImageUrl;
  final bool appIsLandscape;

  const BookingDetailsCard({
    super.key,
    required this.bookingData,
    required this.bookingImageUrl,
    required this.appIsLandscape,
  });

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;
    final GlobalKey locationCardBackgroundKey = GlobalKey();

    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Column(
          children: [
            cardText(colourScheme),
            cardImage(context, locationCardBackgroundKey),
          ],
        ),
      ),
    );
  }

  Widget cardImage(BuildContext context, GlobalKey cardBackgroundKey) {
    return CachedNetworkImage(
      key: cardBackgroundKey,
      height: 500,
      width: 750,
      fit: BoxFit.cover,
      imageUrl: bookingImageUrl,
      // Load a progress placeholder while fetching image url
      placeholder: (context, url) =>
          Center(child: const CircularProgressIndicator()),
      errorWidget: (context, url, error) =>
          Center(child: SizedBox(child: ImageNotFound())),
      imageRenderMethodForWeb: ImageRenderMethodForWeb.HtmlImage,
    );
  }

  Widget cardText(ColorScheme colourScheme) {
    return Card(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextCard(
                data: bookingData.bookingId.toString(),
                fontSize: appIsLandscape ? 20 : 15,
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
                data: bookingData.bookingFirstName,
                fontSize: appIsLandscape ? 20 : 15,
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
                data: bookingData.bookingLastName,
                fontSize: appIsLandscape ? 20 : 15,
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
                data: bookingData.bookingPassengers.toString(),
                fontSize: appIsLandscape ? 20 : 15,
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
                data: bookingData.bookingPrice.toString(),
                fontSize: appIsLandscape ? 20 : 15,
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
        ],
      ),
    );
  }
}
