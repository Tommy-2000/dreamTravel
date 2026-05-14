import 'package:cached_network_image/cached_network_image.dart';
import 'package:dreamtravel/ui/common/buttons/campfire_reaction_button.dart';
import 'package:dreamtravel/ui/common/buttons/campfire_share_button.dart';
import 'package:dreamtravel/ui/common/image_not_found.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CampfireAdventureCard extends StatefulWidget {
  final String? cardMessage;
  final List<String> cardContentList;
  final double cardContentHeight;
  final double cardContentWidth;

  const CampfireAdventureCard({
    super.key,
    this.cardMessage,
    required this.cardContentList,
    required this.cardContentHeight,
    required this.cardContentWidth,
  });

  @override
  State<CampfireAdventureCard> createState() => _CampfireAdventureCardState();
}

class _CampfireAdventureCardState extends State<CampfireAdventureCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Stack(
          children: [
            cardBackground(context),
            cardInkWell(),
            cardText(),
            Positioned(right: 20, bottom: 50, child: CampfireReactionButton()),
            Positioned(right: 20, bottom: 10, child: CampfireShareButton()),
          ],
        ),
      ),
    );
  }

  Widget cardBackground(BuildContext context) {
    return Positioned.fill(
      child: Row(
        children: [
          Column(
            children: [
              CachedNetworkImage(
                fit: BoxFit.cover,
                height: widget.cardContentHeight,
                width: widget.cardContentWidth,
                imageUrl: widget.cardContentList[0],
                // Load a progress placeholder while fetching image url
                placeholder: (context, url) =>
                    Center(child: const CircularProgressIndicator()),
                errorWidget: (context, url, error) =>
                    Center(child: SizedBox(child: ImageNotFound())),
              ),
              CachedNetworkImage(
                fit: BoxFit.cover,
                height: widget.cardContentHeight,
                width: widget.cardContentWidth,
                imageUrl: widget.cardContentList[1],
                // Load a progress placeholder while fetching image url
                placeholder: (context, url) =>
                    Center(child: const CircularProgressIndicator()),
                errorWidget: (context, url, error) =>
                    Center(child: SizedBox(child: ImageNotFound())),
              ),
              CachedNetworkImage(
                fit: BoxFit.cover,
                height: widget.cardContentHeight,
                width: widget.cardContentWidth,
                imageUrl: widget.cardContentList[2],
                // Load a progress placeholder while fetching image url
                placeholder: (context, url) =>
                    Center(child: const CircularProgressIndicator()),
                errorWidget: (context, url, error) =>
                    Center(child: SizedBox(child: ImageNotFound())),
              ),
            ],
          ),
          Column(
            children: [
              CachedNetworkImage(
                fit: BoxFit.cover,
                height: widget.cardContentHeight,
                width: widget.cardContentWidth,
                imageUrl: widget.cardContentList[3],
                // Load a progress placeholder while fetching image url
                placeholder: (context, url) =>
                    Center(child: const CircularProgressIndicator()),
                errorWidget: (context, url, error) =>
                    Center(child: SizedBox(child: ImageNotFound())),
              ),
              CachedNetworkImage(
                fit: BoxFit.cover,
                height: widget.cardContentHeight,
                width: widget.cardContentWidth,
                imageUrl: widget.cardContentList[4],
                // Load a progress placeholder while fetching image url
                placeholder: (context, url) =>
                    Center(child: const CircularProgressIndicator()),
                errorWidget: (context, url, error) =>
                    Center(child: SizedBox(child: ImageNotFound())),
              ),
              CachedNetworkImage(
                fit: BoxFit.cover,
                height: widget.cardContentHeight,
                width: widget.cardContentWidth,
                imageUrl: widget.cardContentList[5],
                // Load a progress placeholder while fetching image url
                placeholder: (context, url) =>
                    Center(child: const CircularProgressIndicator()),
                errorWidget: (context, url, error) =>
                    Center(child: SizedBox(child: ImageNotFound())),
              ),
            ],
          ),
        ],
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
      height: 110,
      width: 250,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          widget.cardMessage!,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          maxLines: 5,
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
