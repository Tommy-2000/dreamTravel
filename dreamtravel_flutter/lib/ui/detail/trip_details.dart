import 'package:cached_network_image/cached_network_image.dart';
import 'package:dreamtravel/ui/common/cards/padding_card.dart';
import 'package:flutter/material.dart';

import '../common/image_not_found.dart';

class TripDetails extends StatelessWidget {
  const TripDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingCard(child:
      Column(
        children: [

        ],
      )
    );
  }

  Widget cardBackground(BuildContext context) {
    return CachedNetworkImage(
      key: _getGlobalKey(),
      fit: BoxFit.scaleDown,
      imageUrl: "",
      // Load a progress placeholder while fetching image url
      placeholder: (context, url) =>
          Center(child: const CircularProgressIndicator()),
      errorWidget: (context, url, error) =>
          Center(child: SizedBox(child: ImageNotFound())),
    );
  }

  GlobalKey _getGlobalKey() {
    return GlobalKey();
  }

}




