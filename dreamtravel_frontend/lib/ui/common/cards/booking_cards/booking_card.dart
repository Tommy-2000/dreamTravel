
import 'package:dreamtravel/ui/common/cards/booking_cards/booking_details_card.dart';
import 'package:dreamtravel/ui/common/cards/booking_cards/hotel_booking_pass.dart';
import 'package:flutter/material.dart';

import '../../../../logic/models/examples/booking_data.dart';
import 'flight_boarding_pass.dart';

class BookingCard extends StatefulWidget {
  final BookingData bookingData;
  final int bookingIndex;
  static const double bookingCardOpenHeight = 400;
  static const double bookingCardClosedHeight = 150;
  final bool bookingIncludesFlight;
  final bool bookingIncludesHotel;
  final bool bookingIncludesTour;
  final VoidCallback onClick;
  final bool appIsLandscape;

  const BookingCard({
    super.key,
    required this.bookingData,
    required this.bookingIndex,
    required this.bookingIncludesFlight,
    required this.bookingIncludesHotel,
    required this.bookingIncludesTour,
    required this.onClick,
    required this.appIsLandscape,
  });

  @override
  State<BookingCard> createState() => _BookingCardState();
}

class _BookingCardState extends State<BookingCard> {
  late BookingDetailsCard bookingDetailsCard = BookingDetailsCard(
    bookingData: widget.bookingData,
    bookingImageUrl: widget.bookingData.travelData.travelImageUrl,
    appIsLandscape: widget.appIsLandscape,
  );
  late FlightBoardingPass flightBoardingPass = FlightBoardingPass(
    flightBoardingData:
        widget.bookingData.flightBoardingData![widget.bookingIndex],
    appIsLandscape: widget.appIsLandscape,
  );

  late HotelBookingCard hotelBookingCard = HotelBookingCard(
    locationImageUrl: widget.bookingData.travelData.travelImageUrl,
  );

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
