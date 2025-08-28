import 'package:auto_size_text/auto_size_text.dart';
import 'package:dreamtravel/ui/common/cards/padding_card.dart';
import 'package:dreamtravel/ui/common/cards/top_bar_card.dart';
import 'package:dreamtravel/ui/common/cards/image_cards/portrait_image_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/grid/adaptive_quilted_grid_tile.dart';

class TripsScreen extends StatefulWidget {
  const TripsScreen({super.key});

  @override
  State<TripsScreen> createState() => _TripsScreenState();
}

class _TripsScreenState extends State<TripsScreen> {
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
              AdaptiveGridTiles().buildPortraitGridTile(4)
            else
              AdaptiveGridTiles().buildPortraitGridTile(4),
            if (landscapeWindow)
              AdaptiveGridTiles().buildPortraitGridTile(6)
            else
              AdaptiveGridTiles().buildPortraitGridTile(6),
            if (landscapeWindow)
              AdaptiveGridTiles().buildPortraitGridTile(6)
            else
              AdaptiveGridTiles().buildPortraitGridTile(6),
            if (landscapeWindow)
              AdaptiveGridTiles().buildPortraitGridTile(4)
            else
              AdaptiveGridTiles().buildPortraitGridTile(4),
            if (landscapeWindow)
              AdaptiveGridTiles().buildPortraitGridTile(4)
            else
              AdaptiveGridTiles().buildPortraitGridTile(4),
            if (landscapeWindow)
              AdaptiveGridTiles().buildPortraitGridTile(6)
            else
              AdaptiveGridTiles().buildPortraitGridTile(6),
            if (landscapeWindow)
              AdaptiveGridTiles().buildPortraitGridTile(6)
            else
              AdaptiveGridTiles().buildPortraitGridTile(6),
            if (landscapeWindow)
              AdaptiveGridTiles().buildPortraitGridTile(4)
            else
              AdaptiveGridTiles().buildPortraitGridTile(4),
          ],
        ),
        childrenDelegate: SliverChildListDelegate([
          TopBarCard(child: Text(
              "Your Trips",
              style: GoogleFonts.montserrat(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.blue
                )
            ),),
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
          PortraitImageCard(
            contentTitle: "contentTitle",
            contentSubtitle: "contentSubtitle",
            contentImageUrl:
                "https://images.unsplash.com/photo-1743656619909-cf3584e22367?&w=1200",
          ),
          PortraitImageCard(
            contentTitle: "contentTitle",
            contentSubtitle: "contentSubtitle",
            contentImageUrl:
                "https://images.unsplash.com/photo-1753789412747-0f3c2dffb49b?&w=1200",
          ),
          PortraitImageCard(
            contentTitle: "contentTitle",
            contentSubtitle: "contentSubtitle",
            contentImageUrl:
                "https://images.unsplash.com/photo-1750247400011-1effe6b427a8?&w=1200",
          ),
          PortraitImageCard(
            contentTitle: "contentTitle",
            contentSubtitle: "contentSubtitle",
            contentImageUrl:
                "https://images.unsplash.com/photo-1753272379232-18de1237b795?&w=1200",
          )
        ]),
      ),
    );
  }
}
