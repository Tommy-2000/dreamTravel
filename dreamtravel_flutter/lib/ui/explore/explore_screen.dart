import 'package:auto_size_text/auto_size_text.dart';
import 'package:dreamtravel/ui/common/cards/image_cards/portrait_image_card.dart';
import 'package:dreamtravel/ui/common/grid/adaptive_quilted_grid_tiles.dart';
import 'package:dreamtravel/ui/common/cards/image_cards/landscape_image_card.dart';
import 'package:dreamtravel/ui/common/screen_padding.dart';
import 'package:dreamtravel/ui/common/travel_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/headline_box.dart';
import '../common/cards/padding_card.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(extendBody: true, body: ExploreGrid());
  }
}

class ExploreGrid extends StatefulWidget {
  const ExploreGrid({super.key});

  @override
  State<ExploreGrid> createState() => _ExploreGridState();
}

class _ExploreGridState extends State<ExploreGrid> {
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
          HeadlineBox(
            child: Text(
              "Go explore!",
              style: GoogleFonts.montserrat(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
          TravelSearchBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: GridView.custom(
                  clipBehavior: Clip.antiAlias,
                  shrinkWrap: true,
                  gridDelegate: SliverQuiltedGridDelegate(
                    crossAxisCount: 8,
                    pattern: [
                      if (landscapeWindow)
                        AdaptiveQuiltedGridTiles().buildLandscapeGridTile(3)
                      else
                        AdaptiveQuiltedGridTiles().buildLandscapeGridTile(5), // Image carousel
                      if (landscapeWindow)
                        AdaptiveQuiltedGridTiles().buildPortraitGridTile(3)
                      else
                        AdaptiveQuiltedGridTiles().buildPortraitGridTile(5),
                      if (landscapeWindow)
                        AdaptiveQuiltedGridTiles().buildPortraitGridTile(3)
                      else
                        AdaptiveQuiltedGridTiles().buildPortraitGridTile(5),
                      if (landscapeWindow)
                        AdaptiveQuiltedGridTiles().buildPortraitGridTile(3)
                      else
                        AdaptiveQuiltedGridTiles().buildPortraitGridTile(5),
                      if (landscapeWindow)
                        AdaptiveQuiltedGridTiles().buildPortraitGridTile(3)
                      else
                        AdaptiveQuiltedGridTiles().buildPortraitGridTile(5),
                    ],
                  ),
                  childrenDelegate: SliverChildListDelegate([
                    LandscapeImageCard(
                      contentTitle: "contentTitle",
                      contentSubtitle: "contentSubtitle",
                      contentImageUrl:
                          "https://images.unsplash.com/photo-1526481280693-3bfa7568e0f3?&w=1200",
                    ),
                    PortraitImageCard(
                      contentTitle: "contentTitle",
                      contentSubtitle: "contentSubtitle",
                      contentImageUrl:
                          "https://images.unsplash.com/photo-1750801321932-3d3e3fcdfdcd?&w=1200",
                    ),
                    PortraitImageCard(
                      contentTitle: "contentTitle",
                      contentSubtitle: "contentSubtitle",
                      contentImageUrl:
                          "https://images.unsplash.com/photo-1750779941284-09ee2d6a619c?&w=1200",
                    ),
                    PortraitImageCard(
                      contentTitle: "contentTitle",
                      contentSubtitle: "contentSubtitle",
                      contentImageUrl:
                          "https://images.unsplash.com/photo-1750688650387-48fbdc7399b3?&w=1200",
                    ),
                    PortraitImageCard(
                      contentTitle: "contentTitle",
                      contentSubtitle: "contentSubtitle",
                      contentImageUrl:
                          "https://images.unsplash.com/photo-1752035680950-79d735be5499?&w=1200",
                    ),
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
