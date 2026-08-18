import 'package:dreamtravel/data/travel_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'flight_boarding_data.dart';
import 'hotel_booking_data.dart';
import 'tour_booking_data.dart';

part 'booking_data.freezed.dart';

part 'booking_data.g.dart';

@freezed
abstract class BookingData with _$BookingData {
  const factory BookingData({
    required int bookingId,
    required String bookingFirstName,
    required String bookingLastName,
    required int bookingPassengers,
    required double bookingPrice,
    required TravelData travelData,
    required List<FlightBoardingData>? flightBoardingData,
    required List<HotelBookingData>? hotelBookingData,
    required List<TourBookingData>? tourBookingData,
  }) = _BookingData;

  factory BookingData.fromJson(Map<String, Object?> json) =>
      _$BookingDataFromJson(json);
}
