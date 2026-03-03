import 'package:flutter/material.dart';

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

    // Paint the background with the following matrix transform
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