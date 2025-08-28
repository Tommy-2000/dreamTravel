import 'package:cached_network_image/cached_network_image.dart';
import 'package:dreamtravel/ui/common/image_not_found.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PortraitImageCard extends StatefulWidget {
  final String? contentTitle;
  final String? contentSubtitle;
  final String contentImageUrl;

  const PortraitImageCard({
    super.key,
    this.contentTitle,
    this.contentSubtitle,
    required this.contentImageUrl,
  });

  @override
  State<PortraitImageCard> createState() => _PortraitImageCardState();
}

class _PortraitImageCardState extends State<PortraitImageCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: AspectRatio(
        aspectRatio: 3 / 2,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Stack(
            children: [
              cardBackground(context),
              cardGradient(),
              cardText(),
              cardFavouriteButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget cardBackground(BuildContext context) {
    return Positioned.fill(
      child: CachedNetworkImage(
        key: _getGlobalKey(),
        fit: BoxFit.fill,
        imageUrl: widget.contentImageUrl,
        // Load a progress placeholder while fetching image url
        placeholder: (context, url) =>
            Center(child: const CircularProgressIndicator()),
        errorWidget: (context, url, error) =>
            Center(child: SizedBox(child: ImageNotFound())),
      ),
    );
  }

  Widget cardGradient() {
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.contentTitle!,
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            widget.contentSubtitle!,
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget cardFavouriteButton() {
    return Positioned(
      right: 20,
      bottom: 20,
      child: IconButton(
        splashColor: Colors.yellow,
        mouseCursor: SystemMouseCursors.click,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Trip added to favourites")),
          );
        },
        icon: Icon(Icons.star_border_rounded, color: Colors.white)
      ),
    );
  }

  GlobalKey _getGlobalKey() {
    return GlobalKey();
  }
}

class ParallaxFlowDelegate extends FlowDelegate {
  ParallaxFlowDelegate({
    required this.scrollableState,
    required this.listItemContext,
    required this.backgroundImageKey,
  }) : super(
         repaint: scrollableState.position,
       ); // Repaint when the scrolling position changes

  final ScrollableState scrollableState;
  final BuildContext listItemContext;
  final GlobalKey backgroundImageKey;

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    return BoxConstraints.loose(constraints.biggest);
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    // Within the ancestor Scrollable, find the pixel position
    final scrollableBox =
        scrollableState.context.findRenderObject() as RenderBox;
    final listItemBox = listItemContext.findRenderObject() as RenderBox;
    final listItemOffset = listItemBox.localToGlobal(
      listItemBox.size.centerLeft(Offset.zero),
      ancestor: scrollableBox,
    );

    // Find the precise position within the the scrollable area
    final viewportDimension = scrollableState.position.viewportDimension;
    final scrollFraction = (listItemOffset.dy / viewportDimension).clamp(
      0.0,
      1.0,
    ); // Clamp the range between 0 and 1
    // Change the equation if necessary

    // Set the alignment of the background within the viewport
    final verticalChildAlignment = Alignment(0.0, scrollFraction * 2 - 1);

    // Before painting the background image, convert it's alignment to a pixel offset
    final backgroundImageSize =
        (backgroundImageKey.currentContext!.findRenderObject() as RenderBox)
            .size;
    final listItemSize = context.size;
    final childRect = verticalChildAlignment.inscribe(
      backgroundImageSize,
      Offset.zero & listItemSize,
    ); // childRect creates the parallax effect

    // Paint the background
    context.paintChild(
      0,
      transform: Transform.translate(
        offset: Offset(0.0, childRect.top),
      ).transform,
    );
  }

  @override
  bool shouldRepaint(covariant ParallaxFlowDelegate oldDelegate) {
    return scrollableState != oldDelegate.scrollableState ||
        listItemContext != oldDelegate.listItemContext ||
        backgroundImageKey != oldDelegate.backgroundImageKey;
  }
}
