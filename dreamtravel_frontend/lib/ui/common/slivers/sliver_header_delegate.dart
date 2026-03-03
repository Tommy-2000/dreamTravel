import 'dart:math' as Math;

import 'package:flutter/material.dart';

class SliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget childWidget;

  SliverHeaderDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.childWidget,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return SizedBox.expand(child: childWidget);
  }

  @override
  double get maxExtent => Math.max(maxHeight, minHeight);

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(SliverHeaderDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        childWidget != oldDelegate.childWidget;
  }
}
