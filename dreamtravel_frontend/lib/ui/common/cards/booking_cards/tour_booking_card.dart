import 'package:dreamtravel/data/tour_booking_data.dart';
import 'package:dreamtravel/ui/common/cards/text_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TourBookingCard extends StatelessWidget {
  final TourBookingData tourBookingData;
  final bool appIsLandscape;

  const TourBookingCard({
    super.key,
    required this.tourBookingData,
    required this.appIsLandscape,
  });

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Card(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextCard(
                    data: tourBookingData.tourBookingNumber.toString(),
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
                    data: tourBookingData.tourStartTime.toIso8601String(),
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
                    data: tourBookingData.tourEndTime.toIso8601String(),
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
              TextCard(
                data: tourBookingData.tourGroup.toString(),
                fontSize: appIsLandscape ? 15 : 10,
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
                data: tourBookingData.tourGuideFullName,
                fontSize: appIsLandscape ? 15 : 10,
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
                data: tourBookingData.tourLocation,
                fontSize: appIsLandscape ? 15 : 10,
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
                data: tourBookingData.tourDate,
                fontSize: appIsLandscape ? 15 : 10,
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
}
