import 'package:cached_network_image/cached_network_image.dart';
import 'package:dreamtravel/ui/common/image_not_found.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialCard extends StatefulWidget {
  final String? contentMessage;
  final String contentUrl;
  final double cardContentHeight;
  final double cardContentWidth;

  const SocialCard({
    super.key,
    this.contentMessage,
    required this.contentUrl,
    required this.cardContentHeight,
    required this.cardContentWidth,
  });

  @override
  State<SocialCard> createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Stack(
          children: [
            cardBackground(context),
            cardInkWell(),
            cardText(),
            cardReactionButton(),
            cardShareButton(),
          ],
        ),
      ),
    );
  }

  Widget cardBackground(BuildContext context) {
    return Positioned.fill(
      child: CachedNetworkImage(
        key: _getGlobalKey(),
        fit: BoxFit.cover,
        imageUrl: widget.contentUrl,
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
      left: 20,
      bottom: 20,
      height: 100,
      width: 250,
      child: Text(
        widget.contentMessage!,
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

  Widget cardShareButton() {
    return Positioned(
      right: 20,
      bottom: 20,
      child: IconButton(
        splashColor: Colors.green,
        mouseCursor: SystemMouseCursors.click,
        onPressed: () {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text("Post has been shared")));
        },
        icon: Icon(Icons.share_rounded, color: Colors.white),
      ),
    );
  }

  Widget cardReactionButton() {
    return Positioned(
      right: 20,
      bottom: 60,
      child: IconButton(
        splashColor: Colors.green,
        mouseCursor: SystemMouseCursors.click,
        onPressed: () {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text("Post has been shared")));
        },
        icon: Icon(Icons.map_rounded, color: Colors.white),
      ),
    );
  }

  GlobalKey _getGlobalKey() {
    return GlobalKey();
  }
}
