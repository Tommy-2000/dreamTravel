import 'package:dreamtravel/ui/common/screen_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../common/cards/trip_card.dart';
import '../common/slivers/travel_bar.dart';

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
    return CustomScrollView(
      slivers: <Widget>[
        TravelBar(appBarTitle: "User"),
        SliverGrid(
          gridDelegate: SliverQuiltedGridDelegate(
            crossAxisCount: 32,
            pattern: [
              if (landscapeWindow)
                QuiltedGridTile(20, 32)
              else
                QuiltedGridTile(20, 32),
            ],
          ),
          delegate: SliverChildBuilderDelegate(
            addAutomaticKeepAlives: false,
            addRepaintBoundaries: true,
            (context, index) {
              if (index >= 12) { // Check the list length
                return null;
              }
              return TripCard(
                contentTitle: "ijoewifw",
                contentSubtitle: "fwefwef",
                contentImageUrl: "fwewfef",
              );
            },
            childCount: 1,
          ),
        ),
      ],
    );
  }
}
