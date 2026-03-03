import 'package:dreamtravel/ui/common/cards/campfire_adventure_card.dart';
import 'package:dreamtravel/ui/common/cards/campfire_social_card.dart';
import 'package:dreamtravel/ui/common/cards/location_card.dart';
import 'package:dreamtravel/ui/common/cards/stateful_hero_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class CardPreviews extends StatelessWidget {
  const CardPreviews({super.key});

  @override
  Widget build(BuildContext context) {
    final platformBrightness = MediaQuery.platformBrightnessOf(context);
    return Column(
      children: [
        LocationCard(
          locationCity: "Naples",
          locationCountry: "Italy",
          locationStartDate: "Starts: September 27th",
          locationEndDate: "Ends: October 20th",
          locationImageUrl:
              "https://images.unsplash.com/photo-1715702803426-39aa0d4c39a9?&auto=format&fit=crop&q=100&w=1200",
          locationCardIsLandscape: false,
          locationCardIsFavourite: false,
        ),
        LocationCard(
          locationCity: "Naples",
          locationCountry: "Italy",
          locationStartDate: "Starts: September 27th",
          locationEndDate: "Ends: October 20th",
          locationImageUrl:
              "https://images.unsplash.com/photo-1715702803426-39aa0d4c39a9?&auto=format&fit=crop&q=100&w=1200",
          locationCardIsLandscape: true,
          locationCardIsFavourite: false,
        ),
      ],
    );
  }
}

