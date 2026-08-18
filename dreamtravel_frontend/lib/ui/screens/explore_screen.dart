import 'package:dreamtravel/data/travel_data.dart';
import 'package:dreamtravel/state/explore_state.dart';
import 'package:dreamtravel/ui/common/slivers/sliver_root_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';

import '../../constants/app_values.dart';
import '../common/cards/travel_card.dart';

class ExploreScreen extends ConsumerStatefulWidget with ExploreState {
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
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    return CustomScrollView(
      slivers: <Widget>[
        SliverRootAppBar(
          sliverRootTitle: "Go Explore!",
          sliverRootFilterButtonToggled: false,
        ),
        SliverToBoxAdapter(child: Gap(20)),
        // Pass the resulting list from the screen's state provider prior to rendering the grid
        renderExploreGrid(widget.watchTravelDataList(ref)),
      ],
    );
  }

  SliverGrid renderExploreGrid(List<TravelData> travelDataList) {
    return SliverGrid(
      gridDelegate: landscapeWindow
          ? paintLandscapeQuiltedGridDelegate() // If the device is landscape, switch the delegate method to render a landscape grid
          : paintPortraitQuiltedGridDelegate(),
      // Otherwise, render a portrait grid
      delegate: SliverChildBuilderDelegate(
        addAutomaticKeepAlives: false,
        addRepaintBoundaries: false,
        (context, index) {
          if (index >= travelDataList.length) {
            // Check the list length before rendering anything
            return null;
          }
          return TravelCard(
            travelCity: travelDataList[index].travelCity,
            travelCountry: travelDataList[index].travelCountry,
            travelImageUrl:
                travelDataList[index].travelImageUrl ?? imageUrlNullAddress,
            travelTotalCost: travelDataList[index].travelTotalCost,
            travelCardIsLandscape: landscapeWindow,
          );
        },
        childCount: travelDataList.length,
      ),
    );
  }

  SliverQuiltedGridDelegate paintPortraitQuiltedGridDelegate() {
    return SliverQuiltedGridDelegate(
      crossAxisCount: 32,
      // 32 wide with various height sizes
      repeatPattern: QuiltedGridRepeatPattern.same,
      // The following pattern is repeated if there is more data than there are pattern tiles
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
      // 32 wide with various height sizes
      repeatPattern: QuiltedGridRepeatPattern.same,
      // The following pattern is repeated if there is more data than there are pattern tiles
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
