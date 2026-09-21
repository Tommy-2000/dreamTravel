import 'package:dreamtravel/constants/app_values.dart';
import 'package:dreamtravel/data/booking_data.dart';
import 'package:dreamtravel/data/placeholder_data.dart';
import 'package:dreamtravel/data/sample_data/faker_booking_data.dart';
import 'package:dreamtravel/state/providers/state_providers.dart';
import 'package:dreamtravel/ui/common/cards/booking_cards/booking_summary_card.dart';
import 'package:dreamtravel/ui/common/cards/booking_cards/flight_barcode_card.dart';
import 'package:dreamtravel/ui/common/cards/booking_cards/folding_card.dart';
import 'package:dreamtravel/ui/common/cards/booking_cards/hotel_barcode_card.dart';
import 'package:dreamtravel/ui/common/cards/booking_cards/hotel_booking_card.dart';
import 'package:dreamtravel/ui/common/cards/booking_cards/tour_booking_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'flight_boarding_card.dart';

class FoldingBookingCard extends ConsumerStatefulWidget {
  final int renderIndex;
  static const double bookingCardOpenHeight = 600;
  static const double bookingCardClosedHeight = 300;
  final bool bookingIncludesFlight;
  final bool bookingIncludesHotel;
  final bool bookingIncludesTour;
  final bool isAppLandscape;

  const FoldingBookingCard({
    super.key,
    required this.renderIndex,
    required this.bookingIncludesFlight,
    required this.bookingIncludesHotel,
    required this.bookingIncludesTour,
    required this.isAppLandscape,
  });

  @override
  ConsumerState<FoldingBookingCard> createState() => _FoldingBookingCardState();
}

class _FoldingBookingCardState extends ConsumerState<FoldingBookingCard> {
  // Initialise an empty list of FoldingChild widgets and render the children when cardOnTap is called
  late List<FoldingChild> _foldingChildren;

  Widget get _backCard => Card(color: Colors.white);

  bool _bookingCardToggled = false;

  // Navigate to the booking details screen passing the bookingRenderData and the BuildContext
  void _viewBookingOnTap(BookingData bookingRenderData, BuildContext context) {}

  // Triggers the folding animation when rerendering the widget
  void _foldBookingOnTap(BookingData bookingRenderData) {
    setState(() {
      _bookingCardToggled = !_bookingCardToggled;
      _foldingChildren = renderFoldingCardChildren(
        bookingRenderData,
        widget.renderIndex,
      );
    });
  }

  FoldingChild renderBookingSummaryChild(
    BookingData bookingRenderData,
    bool isAppLandscape,
  ) {
    return FoldingChild(
      childFront: BookingSummaryCard(
        bookingImageUrl: stringIsEmpty,
        appIsLandscape: isAppLandscape,
        // Show details of the booking in the BookingDetails screen passing the bookingRenderData
        viewBookingCallback: () =>
            _viewBookingOnTap(bookingRenderData, context),
      ),
      childBack: _backCard,
      // Render an empty card widget for the back of the FoldingChild while folding
      childHeight: 300.0,
    );
  }

  FoldingChild renderFlightBookingChild(
    BookingData bookingRenderData,
    int foldingChildIndex,
  ) {
    return FoldingChild(
      childFront: FlightBoardingCard(
        flightBoardingData: widget.bookingIncludesFlight
            ? bookingRenderData.flightBoardingData![foldingChildIndex]
            : sampleFlightBoardingDataList[foldingChildIndex],
        appIsLandscape: widget.isAppLandscape,
      ),
      childBack: _backCard,
      childHeight: 300.0,
    );
  }

  FoldingChild renderHotelBookingChild(
    BookingData bookingRenderData,
    int foldingChildIndex,
  ) {
    return FoldingChild(
      childFront: HotelBookingCard(
        hotelBookingData: widget.bookingIncludesHotel
            ? bookingRenderData.hotelBookingData![foldingChildIndex]
            : sampleHotelBookingDataList[foldingChildIndex],
        appIsLandscape: widget.isAppLandscape,
      ),
      childBack: _backCard,
      childHeight: 300.0,
    );
  }

  FoldingChild renderTourBookingChild(
    BookingData bookingRenderData,
    int foldingChildIndex,
  ) {
    return FoldingChild(
      childFront: TourBookingCard(
        tourBookingData: widget.bookingIncludesTour
            ? bookingRenderData.tourBookingData![foldingChildIndex]
            : sampleTourBookingDataList[foldingChildIndex],
        appIsLandscape: widget.isAppLandscape,
      ),
      childBack: _backCard,
      childHeight: 300.0,
    );
  }

  List<FoldingChild> renderFoldingCardChildren(
    BookingData bookingRenderData,
    int foldingChildIndex,
  ) {
    return [
      // Render the BookingSummaryChild first before the other foldingChildren
      // Each child component that folds requires its index
      renderBookingSummaryChild(bookingRenderData, widget.isAppLandscape),
      renderFlightBookingChild(bookingRenderData, foldingChildIndex),
      renderHotelBookingChild(bookingRenderData, foldingChildIndex),
      renderTourBookingChild(bookingRenderData, foldingChildIndex),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final bookingData = ref.watch(bookingDataProvider);

    return Column(
      children: [
        bookingData.when(
          data: (data) => FoldingCard(
            cardChildren: renderFoldingCardChildren(
              data.single,
              widget.renderIndex,
            ),
            cardIsOpen: _bookingCardToggled,
            cardOnTap: () => _foldBookingOnTap(
              data.single,
            ), // Navigates to the booking details screen
          ),
          error: (err, stack) => FoldingCard(
            cardChildren: [],
            cardIsOpen: _bookingCardToggled,
            cardOnTap: () => _foldBookingOnTap(bookingDataPlaceholder),
          ),
          loading: () => const CircularProgressIndicator(),
        ),
      ],
    );
  }
}
