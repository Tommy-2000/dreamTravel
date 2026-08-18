import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel_booking_data.freezed.dart';

part 'hotel_booking_data.g.dart';

@freezed
abstract class HotelBookingData with _$HotelBookingData {
  const factory HotelBookingData({
    required int hotelBookingNumber,
    required String guestFullName,
    required String hotelCheckInTime,
    required DateTime hotelCheckInDay,
    required String hotelCheckOutTime,
    required DateTime hotelCheckOutDay,
    required String hotelName,
    required String hotelManager,
    required String hotelFloor,
    required int hotelRoomNumber,
  }) = _HotelBookingData;

  factory HotelBookingData.fromJson(Map<String, Object?> json) =>
      _$HotelBookingDataFromJson(json);
}
