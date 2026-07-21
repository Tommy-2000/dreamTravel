import 'package:dreamtravel/constants/app_values.dart';
import 'package:dreamtravel/state/providers.dart';
import 'package:dreamtravel/ui/common/cards/booking_cards/folding_booking_card.dart';
import 'package:dreamtravel/ui/common/slivers/sliver_header_delegate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../logic/sample_data/sample_booking_data.dart';
import '../common/slivers/sliver_root_appbar.dart';

class BookingsScreen extends ConsumerStatefulWidget {
  const BookingsScreen({super.key});

  @override
  ConsumerState<BookingsScreen> createState() => _BookingsScreenState();
}

class _BookingsScreenState extends ConsumerState<BookingsScreen> {
  bool landscapeWindow = false;
  bool foldableWindow = false;

  bool filterButtonToggled = false;

  bool showFlightBookings = false;
  bool showHotelBookings = false;
  bool showTourBookings = false;

  @override
  void initState() {
    super.initState();
    showFlightBookings = true;
    showHotelBookings = false;
    showTourBookings = false;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Check the width of the window using MediaQuery if greater than 800 in a state change
    final double windowWidth = MediaQuery.of(context).size.width;
    landscapeWindow = windowWidth > 800;
  }

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;
    SliverPersistentHeader paintSliverHeader(String sliverHeaderText) {
      return SliverPersistentHeader(
        pinned: true,
        delegate: SliverHeaderDelegate(
          minHeight: 50,
          maxHeight: 100,
          childWidget: Card(
            color: Colors.lightBlueAccent,
            shape: StadiumBorder(side: BorderSide.none),
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
        SliverRootAppBar(
          sliverRootTitle: "Bookings",
          sliverRootFilterButtonToggled: false,
        ),
        SliverToBoxAdapter(child: Gap(10)),
        renderBookingsGrid(),
      ],
    );
  }

  SliverReorderableList renderReorderableBookingList() {
    return SliverReorderableList(itemBuilder: (context, index) {
      return renderBookingCard(index);
    }, itemCount: 1, onReorderItem: (i, f) {

    });
  }

  SliverGrid renderBookingsGrid() {
    return SliverGrid(
      gridDelegate: landscapeWindow
          ? paintLandscapeQuiltedGridDelegate()
          : paintPortraitQuiltedGridDelegate(),
      delegate: SliverChildBuilderDelegate((context, index) {
        return renderBookingCard(index);
      }, childCount: 1),
    );
  }

  SliverQuiltedGridDelegate paintPortraitQuiltedGridDelegate() {
    return SliverQuiltedGridDelegate(
      crossAxisCount: 64,
      repeatPattern: QuiltedGridRepeatPattern.same,
      pattern: [QuiltedGridTile(64, 64), QuiltedGridTile(64, 64)],
    );
  }

  SliverQuiltedGridDelegate paintLandscapeQuiltedGridDelegate() {
    return SliverQuiltedGridDelegate(
      crossAxisCount: 48,
      repeatPattern: QuiltedGridRepeatPattern.same,
      pattern: [
        QuiltedGridTile(32, 16),
        QuiltedGridTile(32, 16),
        QuiltedGridTile(32, 16)
      ],
    );
  }
}

Widget renderBookingCard(int gridRenderIndex,
) {
  return FoldingBookingCard(
    bookingData: sampleBookingDataList[gridRenderIndex],
    bookingIndex: gridRenderIndex,
    bookingIncludesFlight: sampleBookingDataList[gridRenderIndex].travelData
        .travelBookingIncludesFlight,
    bookingIncludesHotel: sampleBookingDataList[gridRenderIndex].travelData
        .travelBookingIncludesHotel,
    bookingIncludesTour: sampleBookingDataList[gridRenderIndex].travelData
        .travelBookingIncludesTour,
    isAppLandscape: false,
  );
}

