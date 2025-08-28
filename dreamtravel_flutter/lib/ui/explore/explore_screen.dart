import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:dreamtravel/ui/common/cards/top_bar_card.dart';
import 'package:dreamtravel/ui/common/cards/image_cards/portrait_image_card.dart';
import 'package:dreamtravel/ui/common/grid/adaptive_quilted_grid_tile.dart';
import 'package:dreamtravel/ui/common/cards/image_cards/landscape_image_card.dart';
import 'package:dreamtravel/ui/common/search_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return Directionality(
      textDirection: TextDirection.ltr,
      child: GridView.custom(
        clipBehavior: Clip.antiAlias,
        gridDelegate: SliverQuiltedGridDelegate(
          crossAxisCount: 8,
          pattern: [
            AdaptiveGridTiles().buildLandscapeGridTile(2),
            if (landscapeWindow)
              AdaptiveGridTiles().buildLandscapeGridTile(3)
            else
              AdaptiveGridTiles().buildLandscapeGridTile(5),
            if (landscapeWindow)
              AdaptiveGridTiles().buildLandscapeGridTile(1)
            else
              AdaptiveGridTiles().buildLandscapeGridTile(3), // Search Box
            if (landscapeWindow)
              AdaptiveGridTiles().buildPortraitGridTile(3)
            else
              AdaptiveGridTiles().buildPortraitGridTile(5),
            if (landscapeWindow)
              AdaptiveGridTiles().buildPortraitGridTile(3)
            else
              AdaptiveGridTiles().buildPortraitGridTile(5),
            if (landscapeWindow)
              AdaptiveGridTiles().buildPortraitGridTile(3)
            else
              AdaptiveGridTiles().buildPortraitGridTile(5),
            if (landscapeWindow)
              AdaptiveGridTiles().buildPortraitGridTile(3)
            else
              AdaptiveGridTiles().buildPortraitGridTile(5),
          ],
        ),
        childrenDelegate: SliverChildListDelegate([
          TopBarCard(
            child: Text(
              "Go explore!",
              style: GoogleFonts.montserrat(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.blue
                )
            ),
          ),
          LandscapeImageCard(
            contentTitle: "contentTitle",
            contentSubtitle: "contentSubtitle",
            contentImageUrl:
                "https://images.unsplash.com/photo-1526481280693-3bfa7568e0f3?&w=1200",
          ),
          SearchBox(),
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
    );
  }
}
