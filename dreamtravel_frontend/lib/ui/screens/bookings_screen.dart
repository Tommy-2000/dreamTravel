import 'package:dreamtravel/constants/app_values.dart';
import 'package:dreamtravel/data/booking_data.dart';
import 'package:dreamtravel/state/bookings_event.dart';
import 'package:dreamtravel/state/bookings_state.dart';
import 'package:dreamtravel/state/providers/state_providers.dart';
import 'package:dreamtravel/ui/common/cards/booking_cards/folding_booking_card.dart';
import 'package:dreamtravel/ui/common/cards/create_booking_card.dart';
import 'package:dreamtravel/ui/common/slivers/sliver_header_delegate.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/slivers/sliver_root_appbar.dart';

class BookingsScreen extends ConsumerStatefulWidget
    with BookingsState, BookingsEvent {
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

  @override
  Widget build(BuildContext context) {
    // Listen in to state changes in the bookingDataList before rendering or rerendering any components
    final asyncBookingDataList = widget.watchBookingDataList(ref);

    // paintSliverHeader("Recent Bookings");

    return CustomScrollView(
      // Should improve rendering performance
    scrollCacheExtent: ScrollCacheExtent.viewport(100),
      slivers: <Widget>[
        SliverRootAppBar(
          sliverRootTitle: "Bookings",
          sliverRootFilterButtonToggled: false,
        ),
        SliverToBoxAdapter(child: Gap(10)),
        SliverToBoxAdapter(
          child: CreateBookingCard(appIsLandscape: landscapeWindow),
        ),
        // Pass the async list from the screen's state future provider prior to rendering the grid
        renderBookingsGrid(asyncBookingDataList),
      ],
    );
  }

  RenderObjectWidget renderBookingsGrid(
    AsyncValue<List<BookingData>> asyncBookingDataList,
  ) {
    return switch (asyncBookingDataList) {
      AsyncData(:final value) => SliverGrid(
        gridDelegate: landscapeWindow
            ? paintLandscapeQuiltedGridDelegate() // If the device is landscape, switch the delegate method to render a landscape grid
            : paintPortraitQuiltedGridDelegate(),
        // Otherwise, render a portrait grid
        delegate: renderSliverChildrenBuilder(
          value,
        ), // Render the children components as Sliver widgets within the SliverGrid
      ),
      AsyncLoading() => SliverToBoxAdapter(
        child: const Center(child: CircularProgressIndicator()),
      ),
      AsyncError() => SliverToBoxAdapter(
        child: Card(
          child: Column(
            children: [
              Text(
                "Error rendering booking data, see StackTrace below",
                style: GoogleFonts.montserrat(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("${StackTrace.current}"),
            ],
          ),
        ),
      ),
    };
  }

  SliverChildBuilderDelegate renderSliverChildrenBuilder(
    List<BookingData> bookingDataList,
  ) {
    return SliverChildBuilderDelegate(
      addAutomaticKeepAlives: false,
      addRepaintBoundaries: false,
      (context, index) {
        return renderBookingCard(bookingDataList, index);
      },
      childCount: bookingDataList.length,
    );
  }

  Widget renderBookingCard(List<BookingData> bookingDataList, int renderIndex) {
    return FoldingBookingCard(
      renderIndex: renderIndex,
      bookingIncludesFlight:
          bookingDataList[renderIndex].travelData.travelDataIncludesFlight,
      bookingIncludesHotel:
          bookingDataList[renderIndex].travelData.travelDataIncludesHotel,
      bookingIncludesTour:
          bookingDataList[renderIndex].travelData.travelDataIncludesTour,
      isAppLandscape: false,
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
        QuiltedGridTile(32, 16),
      ],
    );
  }
}
