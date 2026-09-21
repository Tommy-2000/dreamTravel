import 'package:dreamtravel/logic/models/examples/travel_data.dart';

import 'flight_boarding_data.dart';
import 'hotel_booking_data.dart';
import 'tour_booking_data.dart';

class BookingData {
  final int bookingId;
  final String bookingFirstName;
  final String bookingLastName;
  final int bookingPassengers;
  final double bookingPrice;
  final TravelData travelData;
  final List<FlightBoardingData>? flightBoardingData;
  final List<HotelBookingData>? hotelBookingData;
  final List<TourBookingData>? tourBookingData;

  const BookingData({
    required this.bookingId,
    required this.bookingFirstName,
    required this.bookingLastName,
    required this.bookingPassengers,
    required this.bookingPrice,
    required this.travelData,
    this.flightBoardingData,
    this.hotelBookingData,
    this.tourBookingData,
  });
}