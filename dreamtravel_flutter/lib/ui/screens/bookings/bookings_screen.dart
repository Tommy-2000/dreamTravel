import 'package:dreamtravel/ui/common/slivers/sliver_header_delegate.dart';

import '../../common/buttons/filter_bookings_button.dart';
import '../../common/cards/image_card.dart';
import '../../common/grid/adaptive_quilted_grid_tiles.dart';
import '../../common/screen_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

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
    SliverPersistentHeader paintSliverHeader(String sliverHeaderText) {
      return SliverPersistentHeader(
        pinned: true,
        delegate: SliverHeaderDelegate(
          minHeight: 50,
          maxHeight: 100,
          childWidget: Card(
            color: Colors.lightBlueAccent,
            shadowColor: Colors.black,
            child: Center(child: Text(sliverHeaderText, style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),)),
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
                "Bookings"
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
          paintSliverHeader("Upcoming Bookings"),
          SliverGrid(
            gridDelegate: SliverQuiltedGridDelegate(
              crossAxisCount: 8,
              pattern: [
                if (landscapeWindow)
                  AdaptiveQuiltedGridTiles().buildMediumHorizontalGridTile(2)
                else
                  AdaptiveQuiltedGridTiles().buildMediumHorizontalGridTile(4),
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
          paintSliverHeader("Past Bookings"),
          SliverGrid(
            gridDelegate: SliverQuiltedGridDelegate(
              crossAxisCount: 8,
              pattern: [
                if (landscapeWindow)
                  AdaptiveQuiltedGridTiles().buildMediumHorizontalGridTile(2)
                else
                  AdaptiveQuiltedGridTiles().buildMediumHorizontalGridTile(4),
              ],
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) => ImageCard(
                contentTitle: "fsofjpwe",
                contentSubtitle: "dpfospdfs",
                contentImageUrl: "fpweofjpwe",
              ),
              childCount: 5
            ),
          ),
        ],
      ),
    );
  }
}
