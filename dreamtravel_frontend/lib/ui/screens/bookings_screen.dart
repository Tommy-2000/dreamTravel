import 'package:dreamtravel/ui/common/cards/booking_cards/booking_card.dart';
import 'package:dreamtravel/ui/common/slivers/sliver_header_delegate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../logic/models/examples/sample_flight_booking_list.dart';
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

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverRootAppBar(
            sliverRootTitle: "Bookings",
            sliverRootFilterButtonToggled: false,
          ),
          SliverToBoxAdapter(child: Gap(10)),
          renderBookingsGrid(),
        ],
      ),
    );
  }

  SliverGrid renderBookingsGrid() {
    return SliverGrid(
      gridDelegate: landscapeWindow
          ? paintLandscapeQuiltedGridDelegate()
          : paintPortraitQuiltedGridDelegate(),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          if (showFlightBookings) {
            return renderFlightBookingCard(index, index);
          } else if (showHotelBookings) {
            return renderHotelBookingCard(index, index);
          } else if (showTourBookings) {
            return renderTourBookingCard(index, index);
          }
        },
        childCount: 1,
      ),
    );
  }

  SliverQuiltedGridDelegate paintPortraitQuiltedGridDelegate() {
    return SliverQuiltedGridDelegate(
      crossAxisCount: 32,
      repeatPattern: QuiltedGridRepeatPattern.same,
      pattern: [QuiltedGridTile(32, 32), QuiltedGridTile(32, 32)],
    );
  }

  SliverQuiltedGridDelegate paintLandscapeQuiltedGridDelegate() {
    return SliverQuiltedGridDelegate(
      crossAxisCount: 32,
      repeatPattern: QuiltedGridRepeatPattern.same,
      pattern: [QuiltedGridTile(16, 16), QuiltedGridTile(16, 16)],
    );
  }
}

Widget renderFlightBookingCard(
  int bookingRenderIndex,
  int flightBoardingPassRenderIndex,
) {
  return BookingCard(
    bookingData: sampleFlightBookingList[bookingRenderIndex],
    bookingIndex: bookingRenderIndex,
    bookingIncludesFlight: true,
    bookingIncludesHotel: false,
    bookingIncludesTour: false,
    onClick: () {},
    appIsLandscape: false,
  );
}


Widget renderHotelBookingCard(
    int bookingRenderIndex,
    int hotelBookingPassRenderIndex,
    ) {
  return BookingCard(
    bookingData: sampleFlightBookingList[bookingRenderIndex],
    bookingIndex: bookingRenderIndex,
    bookingIncludesFlight: false,
    bookingIncludesHotel: true,
    bookingIncludesTour: false,
    onClick: () {},
    appIsLandscape: false,
  );
}


Widget renderTourBookingCard(
    int bookingRenderIndex,
    int tourBookingPassRenderIndex,
    ) {
  return BookingCard(
    bookingData: sampleFlightBookingList[bookingRenderIndex],
    bookingIndex: bookingRenderIndex,
    bookingIncludesFlight: false,
    bookingIncludesHotel: false,
    bookingIncludesTour: true,
    onClick: () {},
    appIsLandscape: false,
  );
}
