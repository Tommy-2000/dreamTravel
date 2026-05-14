import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:dreamtravel/ui/common/cards/text_card.dart';
import 'package:dreamtravel/ui/common/image_not_found.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../logic/models/examples/flight_boarding_data.dart';

class FlightBoardingPass extends StatelessWidget {
  final FlightBoardingData flightBoardingData;
  final bool appIsLandscape;


  const FlightBoardingPass({
    super.key,
    required this.flightBoardingData,
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
          ],
        ),
      ),
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
                data: flightBoardingData.flightNumber,
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
                data: flightBoardingData.flightDepartureTime.toIso8601String(),
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
                data: flightBoardingData.flightArrivalTime.toIso8601String(),
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
            data: flightBoardingData.flightBoardingTime.period.name,
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
            data: flightBoardingData.flightGate,
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
            data: flightBoardingData.flightZone.toString(),
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
    );
  }
}
