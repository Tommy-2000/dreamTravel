import 'package:dreamtravel/logic/navigation/go_branch.dart';
import 'package:dreamtravel/ui/common/buttons/filter_bookings_button.dart';
import 'package:dreamtravel/ui/common/screen_padding.dart';
import 'package:dreamtravel/ui/common/travel_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

import '../../common/cards/trip_card.dart';
import '../../common/slivers/travel_app_bar.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
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
        TravelAppBar(appBarTitle: "Go Explore!"),
        SliverToBoxAdapter(child: TravelSearchBar()),
        SliverGrid(
          gridDelegate: landscapeWindow
              ? buildLandscapeQuiltedGridDelegate()
              : buildPortraitQuiltedGridDelegate(),
          delegate: SliverChildBuilderDelegate(
            addAutomaticKeepAlives: false,
            addRepaintBoundaries: false,
            (context, index) {
              if (index >= 12) { // Check the list length
                return null;
              }
              return TripCard(
                contentTitle: "ijoewifw",
                contentSubtitle: "fwefwef",
                contentImageUrl:
                    "https://images.unsplash.com/photo-1526481280693-3bfa7568e0f3?&w=1200",
              );
            },
            childCount: 12,
          ),
        ),
      ],
    );
  }

  SliverQuiltedGridDelegate buildPortraitQuiltedGridDelegate() {
    return SliverQuiltedGridDelegate(
      crossAxisCount: 16,
      repeatPattern: QuiltedGridRepeatPattern.same,
      pattern: [
        if (landscapeWindow)
          QuiltedGridTile(8, 16)
        else
          QuiltedGridTile(10, 16),
        QuiltedGridTile(12, 8),
        QuiltedGridTile(8, 8),
        QuiltedGridTile(12, 8),
        QuiltedGridTile(8, 8),
      ],
    );
  }

  SliverQuiltedGridDelegate buildLandscapeQuiltedGridDelegate() {
    return SliverQuiltedGridDelegate(
      crossAxisCount: 16,
      repeatPattern: QuiltedGridRepeatPattern.same,
      pattern: [
        QuiltedGridTile(6, 4),
        QuiltedGridTile(6, 4),
        QuiltedGridTile(6, 8),
        QuiltedGridTile(6, 4),
        QuiltedGridTile(6, 4),
        QuiltedGridTile(6, 8),
      ],
    );
  }
}
