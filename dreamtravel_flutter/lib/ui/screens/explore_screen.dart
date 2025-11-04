import 'package:dreamtravel/logic/api/sample_data.dart';
import 'package:dreamtravel/logic/navigation/nav_branch.dart';
import 'package:dreamtravel/ui/common/buttons/filter_bookings_button.dart';
import 'package:dreamtravel/ui/common/screen_padding.dart';
import 'package:dreamtravel/ui/common/travel_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

import '../common/cards/trip_card.dart';
import '../common/slivers/travel_bar.dart';

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
    return CustomScrollView(
      slivers: <Widget>[
        TravelBar(appBarTitle: "Go Explore!"),
        SliverToBoxAdapter(child: TravelSearchBar()),
        SliverGrid(
          gridDelegate: landscapeWindow
              ? buildLandscapeQuiltedGridDelegate()
              : buildPortraitQuiltedGridDelegate(),
          delegate: SliverChildBuilderDelegate(
            addAutomaticKeepAlives: false,
            addRepaintBoundaries: false,
            (context, index) {
              if (index >= sampleDataList.length) { // Check the list length
                return null;
              }
              return TripCard(
                contentTitle: sampleDataList[index].sampleTitle,
                contentSubtitle: sampleDataList[index].sampleSubtitle,
                contentImageUrl:
                    sampleDataList[index].sampleImageUrl,
              );
            },
            childCount: 20,
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
        QuiltedGridTile(8, 8),
        QuiltedGridTile(8, 8),
        QuiltedGridTile(8, 8),
        QuiltedGridTile(8, 8),
        QuiltedGridTile(8, 16),
        QuiltedGridTile(8, 16),
        QuiltedGridTile(8, 8),
        QuiltedGridTile(8, 8),
        QuiltedGridTile(8, 8),
        QuiltedGridTile(8, 8),
      ],
    );
  }
}
