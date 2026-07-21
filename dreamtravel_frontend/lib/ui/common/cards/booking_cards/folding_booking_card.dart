import 'package:dreamtravel/constants/app_values.dart';
import 'package:dreamtravel/data/booking_data.dart';
import 'package:dreamtravel/logic/sample_data/sample_booking_data.dart';
import 'package:dreamtravel/ui/common/cards/booking_cards/booking_summary_card.dart';
import 'package:dreamtravel/ui/common/cards/booking_cards/flight_barcode_card.dart';
import 'package:dreamtravel/ui/common/cards/booking_cards/folding_card.dart';
import 'package:dreamtravel/ui/common/cards/booking_cards/hotel_barcode_card.dart';
import 'package:dreamtravel/ui/common/cards/booking_cards/hotel_booking_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'flight_boarding_card.dart';

class FoldingBookingCard extends StatefulWidget {
  final BookingData bookingData;
  final int bookingIndex;
  static const double bookingCardOpenHeight = 600;
  static const double bookingCardClosedHeight = 300;
  final bool bookingIncludesFlight;
  final bool bookingIncludesHotel;
  final bool bookingIncludesTour;
  final bool isAppLandscape;

  const FoldingBookingCard({
    super.key,
    required this.bookingData,
    required this.bookingIndex,
    required this.bookingIncludesFlight,
    required this.bookingIncludesHotel,
    required this.bookingIncludesTour,
    required this.isAppLandscape,
  });

  @override
  State<FoldingBookingCard> createState() => _FoldingBookingCardState();
}

class _FoldingBookingCardState extends State<FoldingBookingCard> {
  // Initialise an empty list of FoldingChild widgets and render the children when cardOnTap is called
  late List<FoldingChild> _foldingChildren;

  Widget get _backCard => Card(color: Colors.white);

  bool _bookingCardToggled = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FoldingCard(
          cardChildren: renderFoldingCardChildren(
            widget.bookingData,
            widget.bookingIndex,
          ),
          cardIsOpen: _bookingCardToggled,
          cardOnTap: () =>
              _handleOnTap(widget.bookingData, widget.isAppLandscape),
        ),
      ],
    );
  }

  void _handleOnTap(BookingData bookingRenderData, bool isAppLandscape) {
    setState(() {
      _bookingCardToggled = !_bookingCardToggled;
      _foldingChildren = renderFoldingCardChildren(
        bookingRenderData,
        widget.bookingIndex,
      );
    });
  }

  FoldingChild renderBookingSummaryChild(
    BookingData bookingRenderData,
    bool isAppLandscape,
  ) {
    return FoldingChild(
      childFront: BookingSummaryCard(
        bookingData: bookingRenderData,
        bookingIncludesImage: bookingRenderData.travelData.travelDataHasImage,
        bookingIncludesFlight:
            bookingRenderData.travelData.travelBookingIncludesFlight,
        bookingIncludesHotel:
            bookingRenderData.travelData.travelBookingIncludesHotel,
        bookingIncludesTour:
            bookingRenderData.travelData.travelBookingIncludesTour,
        bookingImageUrl:
            bookingRenderData.travelData.travelImageUrl ?? stringIsEmpty,
        appIsLandscape: isAppLandscape,
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
      renderBookingSummaryChild(widget.bookingData, widget.isAppLandscape),
      FoldingChild(
        childFront: FlightBoardingCard(
          flightBoardingData: widget.bookingIncludesFlight
              ? bookingRenderData.flightBoardingData![foldingChildIndex]
              : sampleFlightBoardingDataList[foldingChildIndex],
          appIsLandscape: widget.isAppLandscape,
        ),
        childBack: _backCard,
        childHeight: 300.0,
      ),
      FoldingChild(
        childFront: FlightBarcodeCard(
          flightBoardingData: widget.bookingIncludesFlight
              ? bookingRenderData.flightBoardingData![foldingChildIndex]
              : sampleFlightBoardingDataList[foldingChildIndex],
          appIsLandscape: widget.isAppLandscape,
        ),
        childBack: _backCard,
        childHeight: 300.0,
      ),
      FoldingChild(
        childFront: HotelBookingCard(
          hotelBookingData: widget.bookingIncludesHotel
              ? bookingRenderData.hotelBookingData![foldingChildIndex]
              : sampleHotelBookingDataList[foldingChildIndex],
          appIsLandscape: widget.isAppLandscape,
        ),
        childBack: _backCard,
        childHeight: 300.0,
      ),
      FoldingChild(
        childFront: HotelBarcodeCard(
          hotelBookingData: widget.bookingIncludesHotel
              ? bookingRenderData.hotelBookingData![foldingChildIndex]
              : sampleHotelBookingDataList[foldingChildIndex],
          appIsLandscape: widget.isAppLandscape,
        ),
        childBack: _backCard,
        childHeight: 300.0,
      ),
    ];
  }
}
