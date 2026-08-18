import 'dart:math';

import 'package:flutter/material.dart';

class FoldingCard extends StatefulWidget {
  final List<FoldingChild> cardChildren;
  final bool cardIsOpen;
  static const double cardPadding = 16.0;
  final VoidCallback cardOnTap;
  final Duration? cardDuration;

  const FoldingCard({
    super.key,
    required this.cardChildren,
    required this.cardIsOpen,
    required this.cardOnTap,
    this.cardDuration,
  });

  @override
  State<FoldingCard> createState() => _FoldingCardState();
}

class _FoldingCardState extends State<FoldingCard>
    with SingleTickerProviderStateMixin {
  late List<FoldingChild> _foldingChildren = widget.cardChildren;
  late final AnimationController _animationController = AnimationController(
    vsync: this,
  );
  double _cardRatio = 0.0;

  double get openHeight =>
      _foldingChildren.fold<double>(
        0.0,
        (foldVal, foldChild) => foldVal + foldChild.childHeight,
      ) +
      FoldingCard.cardPadding * 2;

  double get closeHeight =>
      _foldingChildren[0].childHeight + FoldingCard.cardPadding * 2;

  bool get isCardOpen => widget.cardIsOpen;

  void _updateFromWidget() {
    // Update the children within the foldingCard
    _foldingChildren = widget.cardChildren;
    // Update the duration value in the animationController
    _animationController.duration =
        widget.cardDuration ??
        Duration(milliseconds: 400 * (_foldingChildren.length - 1));
    // Run the animation forwards if isCardOpen is true, otherwise run in reverse
    isCardOpen
        ? _animationController.forward()
        : _animationController.reverse();
  }

  // On animationTick, apply a curve transform based on the animationController value
  void _onAnimationTick() {
    setState(() {
      _cardRatio = Curves.easeInQuad.transform(_animationController.value);
    });
  }

  @override
  void initState() {
    super.initState();
    // Listen to changes to the animationController value and re-render accordingly
    _animationController.addListener(_onAnimationTick);
  }

  // Check if the FoldingCard was updated
  @override
  void didUpdateWidget(FoldingCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Update animation ticker if the state of the widget changes
    _updateFromWidget();
  }

  // Dispose of the animationController if the FoldingCard is removed from the tree
  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: .1),
              blurRadius: 10,
              spreadRadius: 1,
            ),
          ],
        ),
        child: _renderFoldingChild(0),
      ),
    );
  }

  // Render the children (FoldingChild widgets) of the FoldingCard
  Widget _renderFoldingChild(int childIndex) {
    FoldingChild foldingChild = _foldingChildren[childIndex];
    int childCount = _foldingChildren.length - 1;
    double childRatio = max(
      0.0,
      min(1.0, _cardRatio * childCount + 1.0 - childIndex * 1.0),
    );

    // Apply a transformation and rotation using a vector matrix
    Matrix4 matrix = Matrix4.identity()
      ..setEntry(3, 2, 0.001)
      ..setEntry(1, 2, 0.2)
      ..rotateX(pi * (childRatio - 1.0));

    Widget foldCard = SizedBox(
      height: foldingChild.childHeight,
      child: childRatio < 0.5
          ? foldingChild.childBack
          : foldingChild.childFront,
    );

    // Return the transformation using the vector matrix and gestureDetection
    return Transform(
      alignment: Alignment.topCenter,
      transform: matrix,
      child: GestureDetector(
        onTap: widget.cardOnTap,
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: (childIndex == childCount || childRatio <= 0.5)
              ? foldCard
              : Column(
                  children: [foldCard, _renderFoldingChild(childIndex + 1)],
                ),
        ),
      ),
    );
  }
}

// FoldingChild is the child widget that forms the FoldingCard
class FoldingChild {
  final Widget childFront;
  late Widget? childBack;
  final double childHeight;

  FoldingChild({
    required this.childFront,
    Widget? childBack,
    required this.childHeight,
  }) {
    this.childBack = Transform(
      alignment: FractionalOffset.topCenter,
      transform: Matrix4.identity()
        ..setEntry(2, 2, .001)
        ..rotateX(pi),
      child: childBack,
    );
  }
}
