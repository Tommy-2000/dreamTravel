import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../common/cards/location_card.dart';
import '../common/slivers/sliver_title_bar.dart';

class UserScreen extends ConsumerStatefulWidget {
  const UserScreen({super.key});

  @override
  ConsumerState<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends ConsumerState<UserScreen> {
  bool landscapeWindow = false;
  bool foldableWindow = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Check the width of the window using MediaQuery if greater than 800 in a state change
    final double windowWidth = MediaQuery.of(context).size.width;
    landscapeWindow = windowWidth > 800;
  }

  @override
  Widget build(BuildContext context) {

    final colourScheme = Theme.of(context).colorScheme;

    return CustomScrollView(
      slivers: <Widget>[
        SliverTitleBar(data: "User"),
        SliverGrid(
          gridDelegate: landscapeWindow
              ? buildLandscapeQuiltedGridDelegate()
              : buildPortraitQuiltedGridDelegate(),
          delegate: SliverChildBuilderDelegate(
            addAutomaticKeepAlives: false,
            addRepaintBoundaries: true,
            (context, index) => Container(
                color: Colors.red,
              ),
            childCount: 1,
          ),
        ),
      ],
    );
  }

  SliverQuiltedGridDelegate buildPortraitQuiltedGridDelegate() {
    return SliverQuiltedGridDelegate(
      crossAxisCount: 32,
      repeatPattern: QuiltedGridRepeatPattern.same,
      pattern: [
        QuiltedGridTile(25, 32),
        QuiltedGridTile(25, 16),
        QuiltedGridTile(25, 16),
        QuiltedGridTile(25, 16),
        QuiltedGridTile(25, 16),
      ],
    );
  }

  SliverQuiltedGridDelegate buildLandscapeQuiltedGridDelegate() {
    return SliverQuiltedGridDelegate(
      crossAxisCount: 32,
      repeatPattern: QuiltedGridRepeatPattern.same,
      pattern: [
        QuiltedGridTile(8, 16),
        QuiltedGridTile(8, 16),
        QuiltedGridTile(8, 16),
        QuiltedGridTile(8, 16),
      ],
    );
  }

}
