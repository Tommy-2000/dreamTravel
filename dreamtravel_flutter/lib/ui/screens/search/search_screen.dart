import 'package:dreamtravel/ui/common/cards/title_card.dart';
import 'package:dreamtravel/ui/common/grid/adaptive_quilted_grid_tiles.dart';
import 'package:dreamtravel/ui/common/screen_padding.dart';
import 'package:dreamtravel/ui/common/travel_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/cards/image_card.dart';
import '../../common/slivers/sliver_header_delegate.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
                "Search"
            ),
            titleTextStyle: GoogleFonts.montserrat(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            automaticallyImplyLeading: true,
          ),
          SliverToBoxAdapter(child: TravelSearchBar()),
          paintSliverHeader("Past searches"),
          SliverGrid(
            gridDelegate: SliverQuiltedGridDelegate(
              crossAxisCount: 8,
              pattern: [
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
                contentImageUrl: "fwewfef",
              ),
              childCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
