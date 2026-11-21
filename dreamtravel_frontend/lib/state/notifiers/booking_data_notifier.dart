import 'dart:async';

import 'package:dreamtravel/data/booking_data.dart';
import 'package:dreamtravel/data/flight_boarding_data.dart';
import 'package:dreamtravel/data/hotel_booking_data.dart';
import 'package:dreamtravel/data/tour_booking_data.dart';
import 'package:dreamtravel/data/travel_data.dart';
import 'package:dreamtravel/logic/api/repositories/booking_data_repository.dart';
import 'package:dreamtravel/state/providers/argument_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Notifiers act as the view model between the repository and the UI
// Allowing for caching and UI side effects similar to Redux
class BookingDataNotifier extends AsyncNotifier<BookingData> {
  @override
  Future<BookingData> build() async {
    final bookingId = ref.read(
      bookingDetailsArgProvider,
    ); // Retrieve the argument from the argument provider
    return ref
        .read(bookingDataRepositoryProvider)
        .getBookingDataById(bookingId.toString());
  }

  FutureOr<BookingData> getBookingDataByFirstName(
    String bookingFirstName,
  ) async {
    return ref
        .read(bookingDataRepositoryProvider)
        .getBookingDataByFirstName(bookingFirstName);
  }

  FutureOr<BookingData> getBookingDataByLastName(String bookingLastName) async {
    return ref
        .read(bookingDataRepositoryProvider)
        .getBookingDataByLastName(bookingLastName);
  }

  FutureOr<BookingData> getBookingDataByPassengers(
    int bookingPassengers,
  ) async {
    return ref
        .read(bookingDataRepositoryProvider)
        .getBookingDataByPassengers(bookingPassengers);
  }

  FutureOr<BookingData> getBookingDataByTotalCost(
    double bookingTotalCost,
  ) async {
    return ref
        .read(bookingDataRepositoryProvider)
        .getBookingDataByTotalCost(bookingTotalCost);
  }

  FutureOr<BookingData> getBookingDataByTravelData(
    TravelData travelData,
  ) async {
    return ref
        .read(bookingDataRepositoryProvider)
        .getBookingDataByTravelData(travelData);
  }

  FutureOr<BookingData> getBookingDataByFlightBoardingData(
    FlightBoardingData flightBoardingData,
  ) async {
    return ref
        .read(bookingDataRepositoryProvider)
        .getBookingDataByFlightBoardingData(flightBoardingData);
  }

  FutureOr<BookingData> getBookingDataByHotelBookingData(
    HotelBookingData hotelBookingData,
  ) async {
    return ref
        .read(bookingDataRepositoryProvider)
        .getBookingDataByHotelBookingData(hotelBookingData);
  }

  FutureOr<BookingData> getBookingDataByTourBookingData(
    TourBookingData tourBookingData,
  ) async {
    return ref
        .read(bookingDataRepositoryProvider)
        .getBookingDataByTourBookingData(tourBookingData);
  }

  @override
  bool updateShouldNotify(AsyncValue previous, AsyncValue next) {
    return !identical(previous, next);
  }
}
