import 'dart:async';

import 'package:dreamtravel/data/booking_data.dart';
import 'package:dreamtravel/data/flight_boarding_data.dart';
import 'package:dreamtravel/data/hotel_booking_data.dart';
import 'package:dreamtravel/data/sample_data/sample_booking_data.dart';
import 'package:dreamtravel/data/tour_booking_data.dart';
import 'package:dreamtravel/data/travel_data.dart';
import 'package:dreamtravel/logic/api/api_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/api_strings.dart';

final bookingDataRepositoryProvider = Provider<BookingDataRepository>((ref) {
  return BookingDataRepository();
});

class BookingDataRepository {
  late final ApiProvider apiProvider;

  List<BookingData> getAllSampleBookingData() {
    return sampleBookingDataList;
  }

  FutureOr<List<BookingData>> getAllBookingData() async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/bookings/",
    );
    return futureResponse.data;
  }

  FutureOr<BookingData> getBookingDataById(
    String bookingId,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/bookings/query=$bookingId",
    );
    return futureResponse.data;
  }

  FutureOr<BookingData> getBookingDataByFirstName(
    String bookingFirstName,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/bookings/query=$bookingFirstName",
    );
    return futureResponse.data;
  }

  FutureOr<BookingData> getBookingDataByLastName(
    String bookingLastName,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/bookings/query=$bookingLastName",
    );
    return futureResponse.data;
  }

  FutureOr<BookingData> getBookingDataByPassengers(
    int bookingPassengers,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/bookings/query=$bookingPassengers",
    );
    return futureResponse.data;
  }

  FutureOr<BookingData> getBookingDataByTotalCost(
    double bookingTotalCost,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/bookings/query=$bookingTotalCost",
    );
    return futureResponse.data;
  }

  FutureOr<BookingData> getBookingDataByTravelData(
    TravelData travelData,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/bookings/query=$travelData",
    );
    return futureResponse.data;
  }

  FutureOr<BookingData> getBookingDataByFlightBoardingData(
    FlightBoardingData flightBoardingData,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/bookings/query=$flightBoardingData",
    );
    return futureResponse.data;
  }

  FutureOr<BookingData> getBookingDataByHotelBookingData(
    HotelBookingData hotelBookingData,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/bookings/query=$hotelBookingData",
    );
    return futureResponse.data;
  }

  FutureOr<BookingData> getBookingDataByTourBookingData(
    TourBookingData tourBookingData,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/bookings/query=$tourBookingData",
    );
    return futureResponse.data;
  }
}
