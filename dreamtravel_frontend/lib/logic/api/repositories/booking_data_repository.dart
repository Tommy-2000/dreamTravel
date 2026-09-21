import 'dart:async';

import 'package:dreamtravel/data/booking_data.dart';
import 'package:dreamtravel/data/flight_boarding_data.dart';
import 'package:dreamtravel/data/sample_data/sample_booking_data.dart';
import 'package:dreamtravel/logic/api/api_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bookingDataRepository = FutureProvider<BookingDataRepository>((ref) {
  return BookingDataRepository();
});


class BookingDataRepository {
  late final ApiProvider apiProvider;

  List<BookingData> getAllSampleBookingData() {
    return sampleBookingDataList;
  }

  FutureOr<List<BookingData>> getAllBookingData(Uri responseUri) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: responseUri.host,
    );
    return futureResponse.data;
  }

  FutureOr<BookingData> getBookingDataById(
    Uri responseUri,
    String bookingId,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: responseUri.host,
    );
    return futureResponse.data;
  }

  FutureOr<BookingData> getBookingDataByCity(
    Uri responseUri,
    String bookingCity,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: responseUri.host,
    );
    return futureResponse.data;
  }

  FutureOr<BookingData> getBookingDataByCountry(
    Uri responseUri,
    String bookingCountry,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: responseUri.host,
    );
    return futureResponse.data;
  }

  FutureOr<BookingData> getBookingDataByStartDate(
    Uri responseUri,
    DateTime bookingStartDate,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: responseUri.host,
    );
    return futureResponse.data;
  }

  FutureOr<BookingData> getBookingDataByEndDate(
    Uri responseUri,
    DateTime bookingEndDate,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: responseUri.host,
    );
    return futureResponse.data;
  }

  FutureOr<BookingData> getBookingDataByTotalCost(
    Uri responseUri,
    double bookingTotalCost,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: responseUri.host,
    );
    return futureResponse.data;
  }

  FutureOr<BookingData> getFlightOnlyBookingData(
    Uri responseUri,
    bool bookingDataIncludesFlight,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: responseUri.host,
    );
    return futureResponse.data;
  }

  FutureOr<BookingData> getHotelOnlyBookingData(
    Uri responseUri,
    bool bookingDataIncludesHotel,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: responseUri.host,
    );
    return futureResponse.data;
  }

  FutureOr<BookingData> getTourOnlyBookingData(
    Uri responseUri,
    bool bookingDataIncludesTour,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: responseUri.host,
    );
    return futureResponse.data;
  }
}
