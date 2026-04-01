import 'package:dreamtravel/logic/api/models/sample_flight_booking_list.dart';
import 'package:dreamtravel/ui/common/bookings_search_bar.dart';
import 'package:dreamtravel/ui/common/cards/booking_cards/flight/flight_booking_card.dart';
import 'package:dreamtravel/ui/common/slivers/sliver_header_delegate.dart';
import 'package:dreamtravel/ui/common/slivers/sliver_title_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

// import '../common/buttons/filter_bookings_button.dart';
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
          SliverTitleBar(data: "Bookings"),
          SliverToBoxAdapter(child: Gap(10)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: BookingsSearchBar(),
            ),
          ),
          SliverToBoxAdapter(child: Gap(10)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(child: Text("Flights"), onPressed: () {}),
                  MaterialButton(child: Text("Hotels"), onPressed: () {}),
                  MaterialButton(child: Text("Travel Experiences"), onPressed: () {}),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(child: Gap(10)),
          SliverGrid(
            gridDelegate: landscapeWindow
                ? paintLandscapeQuiltedGridDelegate()
                : paintPortraitQuiltedGridDelegate(),
            delegate: SliverChildBuilderDelegate(
              (context, index) => paintFlightBookingCard(index, 0),
              childCount: 5,
            ),
          ),
        ],
      ),
    );
  }

  SliverQuiltedGridDelegate paintPortraitQuiltedGridDelegate() {
    return SliverQuiltedGridDelegate(
      crossAxisCount: 32,
      repeatPattern: QuiltedGridRepeatPattern.same,
      pattern: [QuiltedGridTile(25, 32)],
    );
  }

  SliverQuiltedGridDelegate paintLandscapeQuiltedGridDelegate() {
    return SliverQuiltedGridDelegate(
      crossAxisCount: 32,
      repeatPattern: QuiltedGridRepeatPattern.same,
      pattern: [
        QuiltedGridTile(8, 16),
        QuiltedGridTile(8, 16),
        QuiltedGridTile(8, 16),
        QuiltedGridTile(8, 16),
      ],
    );
  }
}


Widget paintFlightBookingCard(int flightBookingIndex, int flightBoardingPassIndex) {
  return FlightBookingCard(
    flightBookingCity: sampleFlightBookingList[flightBookingIndex].flightBoardingPassList[flightBoardingPassIndex].flightDestination.airportCity,
    flightBookingCountry: sampleFlightBookingList[flightBookingIndex].flightBoardingPassList[flightBoardingPassIndex].flightDestination.airportCode,
    flightBookingStartDate:
    "Starts: ${sampleFlightBookingList[flightBookingIndex].flightBoardingPassList[flightBoardingPassIndex].flightDepartureTime}",
    flightBookingEndDate:
    "Ends: ${sampleFlightBookingList[flightBookingIndex].flightBoardingPassList[flightBoardingPassIndex].flightArrivalTime}",
    flightBookingImageUrl: sampleFlightBookingList[flightBookingIndex].flightBookingImageUrl,
    flightBookingCardIsLandscape: false,
    flightBookingCardIsFavourite: false,
  );
}
