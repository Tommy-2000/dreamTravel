import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour_booking_data.freezed.dart';

part 'tour_booking_data.g.dart';

@freezed
abstract class TourBookingData with _$TourBookingData {
  const factory TourBookingData({
    required int tourBookingNumber,
    required String fullName,
    required DateTime tourStartTime,
    required String tourDate,
    required DateTime tourEndTime,
    required String tourGuideFullName,
    required int tourGroup,
    required String tourLocation,
    required bool languageInterpreterIncluded,
  }) = _TourBookingData;

  factory TourBookingData.fromJson(Map<String, Object?> json) =>
      _$TourBookingDataFromJson(json);
}
