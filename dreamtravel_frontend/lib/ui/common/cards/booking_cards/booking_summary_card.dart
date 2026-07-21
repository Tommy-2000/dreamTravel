import 'package:dreamtravel/constants/app_values.dart';
import 'package:dreamtravel/data/booking_data.dart';
import 'package:dreamtravel/ui/common/cards/text_card.dart';
import 'package:dreamtravel/ui/common/image_not_found.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'booking_image_card.dart';

class BookingSummaryCard extends StatelessWidget {
  final BookingData bookingData;
  final bool bookingIncludesImage;
  final bool bookingIncludesFlight;
  final bool bookingIncludesHotel;
  final bool bookingIncludesTour;
  final String? bookingImageUrl;
  final bool appIsLandscape;

  const BookingSummaryCard({
    super.key,
    required this.bookingData,
    required this.bookingIncludesImage,
    required this.bookingIncludesFlight,
    required this.bookingIncludesHotel,
    required this.bookingIncludesTour,
    this.bookingImageUrl,
    required this.appIsLandscape,
  });

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Row(
          spacing: 0,
          children: <Widget>[
            bookingIncludesImage
                ? BookingImageCard(
                    bookingImageUrl: bookingImageUrl ?? imageUrlNullAddress,
                    context: context,
                  )
                : const ImageNotFound(),
            bookingDetails(colourScheme),
          ],
        ),
      ),
    );
  }

  Widget bookingDetails(ColorScheme colourScheme) {
    return Card(
      key: GlobalKey(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          spacing: 0,
          children: [
            TextCard(
              data: "#${bookingData.bookingId}",
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
              data: "${bookingData.bookingPassengers}",
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
              data: "£${bookingData.bookingPrice}",
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
            Row(
              children: [
                bookingIncludesFlight
                    ? Icon(Icons.flight_rounded)
                    : const Placeholder(),
                bookingIncludesHotel
                    ? Icon(Icons.hotel_rounded)
                    : const Placeholder(),
                bookingIncludesTour
                    ? Icon(Icons.tour_rounded)
                    : const Placeholder(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
