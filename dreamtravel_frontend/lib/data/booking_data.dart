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
    required String bookingId,
    required String bookingFirstName,
    required String bookingLastName,
    required int bookingPassengers,
    required double bookingTotalCost,
    required TravelData travelData,
    @Default([]) List<FlightBoardingData>? flightBoardingData,
    @Default([]) List<HotelBookingData>? hotelBookingData,
    @Default([]) List<TourBookingData>? tourBookingData,
  }) = _BookingData;


  factory BookingData.fromJson(Map<String, dynamic> json) => _$BookingDataFromJson(json);


}
