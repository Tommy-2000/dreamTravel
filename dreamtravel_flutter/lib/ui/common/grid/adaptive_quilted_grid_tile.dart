import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class AdaptiveGridTiles {

  QuiltedGridTile buildPortraitGridTile(int mainAxisCount) {
    return QuiltedGridTile(mainAxisCount, 4);
  }

  QuiltedGridTile buildLandscapeGridTile(int mainAxisCount) {
    return QuiltedGridTile(mainAxisCount, 8);
  }

}