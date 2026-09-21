import 'package:dreamtravel/data/travel_data.dart';
import 'package:dreamtravel/state/providers/argument_providers.dart';
import 'package:dreamtravel/state/providers/state_providers.dart';
import 'package:dreamtravel/state/travel_details_event.dart';
import 'package:dreamtravel/state/travel_details_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/cards/text_card.dart';

class TravelDetailsScreen extends StatefulWidget with TravelDetailsState, TravelDetailsEvent {

  final bool appIsLandscape;
  final String travelId;

  const TravelDetailsScreen({super.key, required this.appIsLandscape, required this.travelId});

  @override
  State<TravelDetailsScreen> createState() => _TravelDetailsScreenState();
}

class _TravelDetailsScreenState extends State<TravelDetailsScreen> {

  Widget textCard(ColorScheme colourScheme, bool isLandscape) {

    return Positioned(
      top: 15,
      right: 15,
      child: Hero(
        tag: "TRAVEL_CARD_HERO",
        child: Card(
          color: colourScheme.primaryContainer,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextCard(
                  data: "travelCity",
                  fontSize: isLandscape ? 25 : 20,
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
                  data: "travelCountry",
                  fontSize: isLandscape ? 15 : 10,
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
                      data: "Total Cost: £500.00",
                      fontSize: isLandscape ? 15 : 10,
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
      ),
    );
  }


  @override
  Widget build(BuildContext context) {

    final colourScheme = Theme.of(context).colorScheme;

    return ProviderScope(overrides: [
      // travelDataProvider.overrideWith((ref) => TravelData(travelId: , travelCity: travelCity, travelCountry: travelCountry, travelLatitude: travelLatitude, travelLongitude: travelLongitude, travelStartDate: travelStartDate, travelEndDate: travelEndDate, travelDataHasImage: travelDataHasImage, travelTotalCost: travelTotalCost, travelDataIncludesFlight: travelDataIncludesFlight, travelDataIncludesHotel: travelDataIncludesHotel, travelDataIncludesTour: travelDataIncludesTour))
    ], child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(20.0),
        child: Stack(
          children: [
            textCard(colourScheme, widget.appIsLandscape)
          ],
        ),
      ),
    ));
  }
}
