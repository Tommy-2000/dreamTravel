// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_booking_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TourBookingData _$TourBookingDataFromJson(Map<String, dynamic> json) =>
    _TourBookingData(
      tourBookingNumber: (json['tourBookingNumber'] as num).toInt(),
      fullName: json['fullName'] as String,
      tourStartTime: DateTime.parse(json['tourStartTime'] as String),
      tourDate: json['tourDate'] as String,
      tourEndTime: DateTime.parse(json['tourEndTime'] as String),
      tourGuideFullName: json['tourGuideFullName'] as String,
      tourGroup: (json['tourGroup'] as num).toInt(),
      tourLocation: json['tourLocation'] as String,
      languageInterpreterIncluded: json['languageInterpreterIncluded'] as bool,
    );

Map<String, dynamic> _$TourBookingDataToJson(_TourBookingData instance) =>
    <String, dynamic>{
      'tourBookingNumber': instance.tourBookingNumber,
      'fullName': instance.fullName,
      'tourStartTime': instance.tourStartTime.toIso8601String(),
      'tourDate': instance.tourDate,
      'tourEndTime': instance.tourEndTime.toIso8601String(),
      'tourGuideFullName': instance.tourGuideFullName,
      'tourGroup': instance.tourGroup,
      'tourLocation': instance.tourLocation,
      'languageInterpreterIncluded': instance.languageInterpreterIncluded,
    };
