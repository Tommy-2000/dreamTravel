import 'package:dreamtravel/ui/common/slivers/sliver_root_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';

import '../../logic/models/examples/sample_travel_data_list.dart';
import '../common/cards/trip_card.dart';

class ExploreScreen extends ConsumerStatefulWidget {
  const ExploreScreen({super.key});

  @override
  ConsumerState<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends ConsumerState<ExploreScreen> {
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

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverRootAppBar(
            sliverRootTitle: "Go Explore!",
            sliverRootFilterButtonToggled: false,
          ),
          SliverToBoxAdapter(child: Gap(10)),
          renderExploreGrid(),
        ],
      ),
    );
  }

  SliverGrid renderExploreGrid() {
    return SliverGrid(
      gridDelegate: landscapeWindow
          ? paintLandscapeQuiltedGridDelegate()
          : paintPortraitQuiltedGridDelegate(),
      delegate: SliverChildBuilderDelegate(
        addAutomaticKeepAlives: false,
        addRepaintBoundaries: false,
        (context, index) {
          if (index >= sampleTravelDataList.length) {
            // Check the list length
            return null;
          }
          return TripCard(
            tripCity: sampleTravelDataList[index].travelCity,
            tripCountry: sampleTravelDataList[index].travelCountry,
            tripImageUrl: sampleTravelDataList[index].travelImageUrl,
            tripTotalCost: sampleTravelDataList[index].travelTotalCost,
            tripCardIsLandscape: landscapeWindow,
            tripCardIsFavourite: false,
          );
        },
        childCount: sampleTravelDataList.length,
      ),
    );
  }

  SliverQuiltedGridDelegate paintPortraitQuiltedGridDelegate() {
    return SliverQuiltedGridDelegate(
      crossAxisCount: 32,
      repeatPattern: QuiltedGridRepeatPattern.same,
      pattern: [
        QuiltedGridTile(45, 32),
        QuiltedGridTile(45, 16),
        QuiltedGridTile(30, 16),
        QuiltedGridTile(45, 16),
        QuiltedGridTile(30, 16),
      ],
    );
  }

  SliverQuiltedGridDelegate paintLandscapeQuiltedGridDelegate() {
    return SliverQuiltedGridDelegate(
      crossAxisCount: 32,
      repeatPattern: QuiltedGridRepeatPattern.same,
      pattern: [
        QuiltedGridTile(16, 8),
        QuiltedGridTile(8, 8),
        QuiltedGridTile(16, 8),
        QuiltedGridTile(8, 8),
        QuiltedGridTile(16, 8),
        QuiltedGridTile(16, 8),
        QuiltedGridTile(8, 8),
        QuiltedGridTile(8, 8),
        QuiltedGridTile(8, 16),
        QuiltedGridTile(8, 16),
      ],
    );
  }
}
