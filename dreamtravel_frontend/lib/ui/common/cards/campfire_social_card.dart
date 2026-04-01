import 'package:cached_network_image/cached_network_image.dart';
import 'package:dreamtravel/ui/common/image_not_found.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../buttons/campfire_reaction_button.dart';
import '../buttons/campfire_share_button.dart';

class CampfireSocialCard extends StatefulWidget {
  final String? cardMessage;
  final String cardContent;
  final double cardContentHeight;
  final double cardContentWidth;

  const CampfireSocialCard({
    super.key,
    this.cardMessage,
    required this.cardContent,
    required this.cardContentHeight,
    required this.cardContentWidth,
  });

  @override
  State<CampfireSocialCard> createState() => _CampfireSocialCardState();
}

class _CampfireSocialCardState extends State<CampfireSocialCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Stack(
          children: [
            cardBackground(context),
            cardInkWell(),
            cardText(),
            Positioned(right: 5, bottom: 50, child: CampfireReactionButton()),
            Positioned(right: 5, bottom: 10, child: CampfireShareButton()),
          ],
        ),
      ),
    );
  }

  Widget cardBackground(BuildContext context) {
    return Positioned.fill(
      child: CachedNetworkImage(
        key: GlobalKey(),
        fit: BoxFit.cover,
        imageUrl: widget.cardContent,
        // Load a progress placeholder while fetching image url
        placeholder: (context, url) =>
            Center(child: const CircularProgressIndicator()),
        errorWidget: (context, url, error) =>
            Center(child: SizedBox(child: ImageNotFound())),
      ),
    );
  }

  Widget cardInkWell() {
    bool cardOnHover = false;
    return Positioned.fill(
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        mouseCursor: SystemMouseCursors.click,
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Image card has been tapped")),
          );
        },
        onHover: (hoverValue) {
          setState(() {
            cardOnHover = hoverValue;
          });
        },
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.transparent, Colors.black.withValues(alpha: 0.7)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.6, 0.95],
            ),
          ),
        ),
      ),
    );
  }

  Widget cardText() {
    return Positioned(
      left: 15,
      bottom: 15,
      height: 85,
      width: 110,
      child: Text(
        widget.cardMessage!,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
        maxLines: 4,
        style: GoogleFonts.montserrat(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
