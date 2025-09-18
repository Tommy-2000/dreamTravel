import '../common/buttons/filter_bookings_button.dart';
import '../common/cards/image_cards/portrait_image_card.dart';
import '../common/screen_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/headline_box.dart';
import '../common/grid/adaptive_quilted_grid_tiles.dart';

class BookingsScreen extends StatefulWidget {
  const BookingsScreen({super.key});

  @override
  State<BookingsScreen> createState() => _BookingsScreenState();
}

class _BookingsScreenState extends State<BookingsScreen> {
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
              "Bookings",
              style: GoogleFonts.montserrat(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
              )
          ),),
          FilterBookingsButton(),
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
                        AdaptiveQuiltedGridTiles().buildPortraitGridTile(4)
                      else
                        AdaptiveQuiltedGridTiles().buildPortraitGridTile(4),
                      if (landscapeWindow)
                        AdaptiveQuiltedGridTiles().buildPortraitGridTile(6)
                      else
                        AdaptiveQuiltedGridTiles().buildPortraitGridTile(6),
                      if (landscapeWindow)
                        AdaptiveQuiltedGridTiles().buildPortraitGridTile(6)
                      else
                        AdaptiveQuiltedGridTiles().buildPortraitGridTile(6),
                      if (landscapeWindow)
                        AdaptiveQuiltedGridTiles().buildPortraitGridTile(4)
                      else
                        AdaptiveQuiltedGridTiles().buildPortraitGridTile(4),
                    ],
                  ),
                  childrenDelegate: SliverChildListDelegate([
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
