import 'package:dreamtravel/ui/common/cards/text_card.dart';
import 'package:dreamtravel/ui/common/cards/travel_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:google_fonts/google_fonts.dart';


@Preview(name: "UI Preview")
class UIPreview extends StatelessWidget {
  const UIPreview({super.key});

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;
    final previewBrightness = MediaQuery.platformBrightnessOf(context);
    return Column(
      children: [
        TextCard(
          data: 'Current Brightness: $previewBrightness',
          fontSize: 20,
          fontWeight: FontWeight.normal,
          fontStyle: GoogleFonts.aboreto().fontStyle,
          fontColour: colourScheme.primary,
          minFontSize: 10,
          maxLines: 2,
          softWrap: true,
          textAlign: TextAlign.center,
          textOverflow: TextOverflow.ellipsis,
        ),
        TravelCard(
          travelCity: "Naples",
          travelCountry: "Italy",
          travelImageUrl:
              "https://images.unsplash.com/photo-1715702803426-39aa0d4c39a9?&auto=format&fit=crop&q=100&w=1200",
          travelTotalCost: 200,
          travelCardIsLandscape: false,
        ),
        TravelCard(
          travelCity: "Naples",
          travelCountry: "Italy",
          travelImageUrl:
              "https://images.unsplash.com/photo-1715702803426-39aa0d4c39a9?&auto=format&fit=crop&q=100&w=1200",
          travelTotalCost: 200,
          travelCardIsLandscape: false,
        ),
      ],
    );
  }
}
