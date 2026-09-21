import 'package:dreamtravel/data/flight_boarding_data.dart';
import 'package:dreamtravel/ui/common/cards/text_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:dreamtravel/constants/app_values.dart';
import 'package:intl/intl.dart';

class FlightBoardingCard extends StatelessWidget {
  final FlightBoardingData? flightBoardingData;
  final bool appIsLandscape;

  const FlightBoardingCard({
    super.key,
    this.flightBoardingData,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextCard(
                    data:
                        'Flight Number: ${flightBoardingData?.flightNumber ?? stringIsEmpty}',
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
                    data:
                        'Departure: ${DateFormat.Hm().format(flightBoardingData?.flightDepartureTime ?? DateTime.now())}',
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
                    data:
                    'Arrival: ${DateFormat.Hm().format(flightBoardingData?.flightArrivalTime ?? DateTime.now())}',
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
                    data:
                        'Boarding Day: ${DateFormat.d().format(flightBoardingData?.flightBoardingTime ?? DateTime.now())}',
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
                    data: 'Flight Gate: ${flightBoardingData?.flightGate ?? stringIsEmpty}',
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
                    data:
                        'Flight Zone: ${flightBoardingData?.flightZone.toString() ?? stringIsEmpty}',
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
            ],
          ),
        ),
      ),
    );
  }
}
