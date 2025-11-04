import 'package:dreamtravel/ui/common/slivers/sliver_header_delegate.dart';
import 'package:dreamtravel/ui/common/slivers/travel_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../common/buttons/filter_bookings_button.dart';
import '../common/cards/trip_card.dart';
import '../common/screen_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingsScreen extends ConsumerStatefulWidget {
  const BookingsScreen({super.key});

  @override
  ConsumerState<BookingsScreen> createState() => _BookingsScreenState();
}

class _BookingsScreenState extends ConsumerState<BookingsScreen> {
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
        TravelBar(appBarTitle: "Bookings"),
        paintSliverHeader("Upcoming Bookings"),
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
            childCount: 5,
          ),
        ),
        paintSliverHeader("Past Bookings"),
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
            (context, index) => TripCard(
              contentTitle: "fsofjpwe",
              contentSubtitle: "dpfospdfs",
              contentImageUrl: "fpweofjpwe",
            ),
            childCount: 5,
          ),
        ),
      ],
    );
  }
}
