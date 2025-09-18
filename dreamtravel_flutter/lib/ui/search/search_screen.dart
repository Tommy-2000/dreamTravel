import 'package:dreamtravel/ui/common/grid/adaptive_quilted_grid_tiles.dart';
import 'package:dreamtravel/ui/common/screen_padding.dart';
import 'package:dreamtravel/ui/common/travel_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/headline_box.dart';

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
    return ScreenPadding(
      child: Column(
        children: [
          HeadlineBox(child: Text(
              "Search",
              style: GoogleFonts.montserrat(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
              )
          ),),
          Expanded(
            child: SingleChildScrollView(
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: GridView.custom(
                  clipBehavior: Clip.antiAlias,
                  shrinkWrap: true,
                  semanticChildCount: 8,
                  gridDelegate: SliverQuiltedGridDelegate(
                    crossAxisCount: 8,
                    pattern: [
                      if (landscapeWindow)
                        AdaptiveQuiltedGridTiles().buildLandscapeGridTile(3)
                      else
                        AdaptiveQuiltedGridTiles().buildLandscapeGridTile(3), // Search Box
                    ],
                  ),
                  childrenDelegate: SliverChildListDelegate([
                    TravelSearchBar(),
                  ]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}