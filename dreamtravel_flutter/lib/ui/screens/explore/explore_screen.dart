import 'package:auto_size_text/auto_size_text.dart';
import 'package:dreamtravel/logic/navigation/go_branch.dart';
import 'package:dreamtravel/ui/common/buttons/filter_bookings_button.dart';
import 'package:dreamtravel/ui/common/grid/adaptive_quilted_grid_tiles.dart';
import 'package:dreamtravel/ui/common/screen_padding.dart';
import 'package:dreamtravel/ui/common/travel_search_bar.dart';
import 'package:dreamtravel/ui/root/root_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/cards/image_card.dart';

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
    // Check the width of the window using MediaQuery if greater than 600 in a state change
    final double windowWidth = MediaQuery.of(context).size.width;
    landscapeWindow = windowWidth > 900;
  }

  @override
  Widget build(BuildContext context) {
    return ScreenPadding(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            centerTitle: true,
            expandedHeight: 60,
            floating: true,
            snap: true,
            stretch: true,
            backgroundColor: Colors.lightBlue,
            title: Text(
              "Go Explore!"
            ),
            titleTextStyle: GoogleFonts.montserrat(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            leading: IconButton(
              onPressed: () => {},
              icon: Icon(Icons.search_rounded, color: Colors.white,),
            ),
            automaticallyImplyLeading: true,
          ),
          SliverGrid(
            gridDelegate: SliverQuiltedGridDelegate(
              crossAxisCount: 8,
              repeatPattern: QuiltedGridRepeatPattern.same,
              pattern: [
                if (landscapeWindow)
                  AdaptiveQuiltedGridTiles().buildMediumHorizontalGridTile(3)
                else
                  AdaptiveQuiltedGridTiles().buildMediumHorizontalGridTile(5),
                if (landscapeWindow)
                  AdaptiveQuiltedGridTiles().buildMediumVerticalGridTile(6)
                else
                  AdaptiveQuiltedGridTiles().buildMediumVerticalGridTile(6),
                if (landscapeWindow)
                  AdaptiveQuiltedGridTiles().buildMediumVerticalGridTile(4)
                else
                  AdaptiveQuiltedGridTiles().buildMediumVerticalGridTile(4),
                if (landscapeWindow)
                  AdaptiveQuiltedGridTiles().buildMediumVerticalGridTile(6)
                else
                  AdaptiveQuiltedGridTiles().buildMediumVerticalGridTile(6),
                if (landscapeWindow)
                  AdaptiveQuiltedGridTiles().buildMediumVerticalGridTile(4)
                else
                  AdaptiveQuiltedGridTiles().buildMediumVerticalGridTile(4),
              ],
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) => ImageCard(
                contentTitle: "ijoewifw",
                contentSubtitle: "fwefwef",
                contentImageUrl:
                    "https://images.unsplash.com/photo-1526481280693-3bfa7568e0f3?&w=1200",
              ),
              childCount: 12,
            ),
          ),
        ],
      ),
    );
  }
}
