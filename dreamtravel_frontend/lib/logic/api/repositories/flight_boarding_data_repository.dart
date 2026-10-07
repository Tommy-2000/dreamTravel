import 'dart:async';

import 'package:dreamtravel/data/flight_boarding_data.dart';
import 'package:dreamtravel/data/sample_data/sample_booking_data.dart';
import 'package:dreamtravel/logic/api/api_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/api_strings.dart';

final flightBoardingDataRepository = Provider<FlightBoardingDataRepository>((
  ref,
) {
  return FlightBoardingDataRepository();
});

class FlightBoardingDataRepository {
  late final ApiProvider apiProvider;

  List<FlightBoardingData> getAllSampleFlightBoardingData() {
    return sampleFlightBoardingDataList;
  }

  FutureOr<List<FlightBoardingData>> getAllFlightBoardingData() async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/bookings/flights/",
    );
    return futureResponse.data;
  }

  FutureOr<FlightBoardingData> getFlightBoardingDataById(
    String bookingId,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/bookings/flights/query=$bookingId",
    );
    return futureResponse.data;
  }

  FutureOr<FlightBoardingData> getFlightBoardingDataByCity(
    String bookingCity,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/bookings/flights/query=$bookingCity",
    );
    return futureResponse.data;
  }

  FutureOr<FlightBoardingData> getFlightBoardingDataByCountry(
    String bookingCountry,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/bookings/flights/query=$bookingCountry",
    );
    return futureResponse.data;
  }

  FutureOr<FlightBoardingData> getFlightBoardingDataByStartDate(
    DateTime bookingStartDate,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/bookings/flights/query=$bookingStartDate",
    );
    return futureResponse.data;
  }

  FutureOr<FlightBoardingData> getFlightBoardingDataByEndDate(
    DateTime bookingEndDate,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/bookings/flights/query=$bookingEndDate",
    );
    return futureResponse.data;
  }

  FutureOr<FlightBoardingData> getFlightBoardingDataByTotalCost(
    double bookingTotalCost,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/bookings/flights/query=$bookingTotalCost",
    );
    return futureResponse.data;
  }
}
