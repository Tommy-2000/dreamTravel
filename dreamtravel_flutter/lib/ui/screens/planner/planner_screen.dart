import 'package:dreamtravel/ui/common/screen_padding.dart';
import 'package:dreamtravel/ui/common/travel_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/cards/trip_card.dart';
import '../../common/slivers/sliver_header_delegate.dart';
import '../../common/slivers/travel_app_bar.dart';

class PlannerScreen extends StatefulWidget {
  const PlannerScreen({super.key});

  @override
  State<PlannerScreen> createState() => _PlannerScreenState();
}

class _PlannerScreenState extends State<PlannerScreen> {
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
    SliverPersistentHeader paintSliverHeader(String sliverHeaderText) {
      return SliverPersistentHeader(
        pinned: true,
        delegate: SliverHeaderDelegate(
          minHeight: 50,
          maxHeight: 100,
          childWidget: Card(
            color: Colors.lightBlueAccent,
            shadowColor: Colors.black,
            child: Center(
              child: Text(
                sliverHeaderText,
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      );
    }

    return CustomScrollView(
      slivers: <Widget>[
        TravelAppBar(appBarTitle: "Trip Planner"),
        paintSliverHeader("My Trip Plan"),
        SliverGrid(
          gridDelegate: SliverQuiltedGridDelegate(
            crossAxisCount: 16,
            pattern: [
              if (landscapeWindow)
                QuiltedGridTile(12, 8)
              else
                QuiltedGridTile(12, 8),
              if (landscapeWindow)
                QuiltedGridTile(8, 8)
              else
                QuiltedGridTile(8, 8),
              if (landscapeWindow)
                QuiltedGridTile(12, 8)
              else
                QuiltedGridTile(12, 8),
              if (landscapeWindow)
                QuiltedGridTile(8, 8)
              else
                QuiltedGridTile(8, 8),
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
            childCount: 8,
          ),
        ),
      ],
    );
  }
}
