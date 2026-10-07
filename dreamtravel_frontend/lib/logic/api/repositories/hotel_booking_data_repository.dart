import 'dart:async';

import 'package:dreamtravel/data/hotel_booking_data.dart';
import 'package:dreamtravel/data/sample_data/sample_booking_data.dart';
import 'package:dreamtravel/logic/api/api_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/api_strings.dart';

final hotelBookingDataRepository = Provider<HotelBookingDataRepository>((ref) {
  return HotelBookingDataRepository();
});

class HotelBookingDataRepository {
  late final ApiProvider apiProvider;

  List<HotelBookingData> getAllSampleHotelBookingData() {
    return sampleHotelBookingDataList;
  }

  FutureOr<List<HotelBookingData>> getAllHotelBookingData() async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/bookings/hotel/",
    );
    return futureResponse.data;
  }

  FutureOr<HotelBookingData> getHotelBookingDataByBookingNumber(
    String hotelBookingNumber,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/bookings/hotel/query=$hotelBookingNumber",
    );
    return futureResponse.data;
  }

  FutureOr<HotelBookingData> getHotelBookingDataByCheckInTime(
    String hotelCheckInTime,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/bookings/hotel/query=$hotelCheckInTime",
    );
    return futureResponse.data;
  }

  FutureOr<HotelBookingData> getHotelBookingDataByCheckInDay(
    DateTime hotelCheckInDay,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/bookings/hotel/query=$hotelCheckInDay",
    );
    return futureResponse.data;
  }

  FutureOr<HotelBookingData> getHotelBookingDataByCheckOutTime(
    String hotelCheckOutTime,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/bookings/hotel/query=$hotelCheckOutTime",
    );
    return futureResponse.data;
  }

  FutureOr<HotelBookingData> getHotelBookingDataByCheckOutDay(
    DateTime hotelCheckOutDay,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/bookings/hotel/query=$hotelCheckOutDay",
    );
    return futureResponse.data;
  }

  FutureOr<HotelBookingData> getHotelBookingDataByHotelName(
    String hotelName,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/bookings/hotel/query=$hotelName",
    );
    return futureResponse.data;
  }

  FutureOr<HotelBookingData> getHotelBookingDataByHotelAddress(
    String guestFullName,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/bookings/hotel/query=$guestFullName",
    );
    return futureResponse.data;
  }
}
