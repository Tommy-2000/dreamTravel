import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class AdaptiveQuiltedGridTiles {

  QuiltedGridTile buildSmallVerticalGridTile(int mainAxisCount) {
    return QuiltedGridTile(mainAxisCount, 2);
  }

  QuiltedGridTile buildSmallHorizontalGridTile(int mainAxisCount) {
    return QuiltedGridTile(mainAxisCount, 8);
  }

  QuiltedGridTile buildMediumVerticalGridTile(int mainAxisCount) {
    return QuiltedGridTile(mainAxisCount, 4);
  }

  QuiltedGridTile buildMediumHorizontalGridTile(int mainAxisCount) {
    return QuiltedGridTile(mainAxisCount, 8);
  }

  QuiltedGridTile buildLargeVerticalGridTile(int mainAxisCount) {
    return QuiltedGridTile(mainAxisCount, 8);
  }

  QuiltedGridTile buildLargeHorizontalGridTile(int mainAxisCount) {
    return QuiltedGridTile(mainAxisCount, 8);
  }

}