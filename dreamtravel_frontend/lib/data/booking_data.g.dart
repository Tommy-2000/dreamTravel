// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookingData _$BookingDataFromJson(Map<String, dynamic> json) => _BookingData(
  bookingId: (json['bookingId'] as num).toInt(),
  bookingFirstName: json['bookingFirstName'] as String,
  bookingLastName: json['bookingLastName'] as String,
  bookingPassengers: (json['bookingPassengers'] as num).toInt(),
  bookingPrice: (json['bookingPrice'] as num).toDouble(),
  travelData: TravelData.fromJson(json['travelData'] as Map<String, dynamic>),
  flightBoardingData: (json['flightBoardingData'] as List<dynamic>?)
      ?.map((e) => FlightBoardingData.fromJson(e as Map<String, dynamic>))
      .toList(),
  hotelBookingData: (json['hotelBookingData'] as List<dynamic>?)
      ?.map((e) => HotelBookingData.fromJson(e as Map<String, dynamic>))
      .toList(),
  tourBookingData: (json['tourBookingData'] as List<dynamic>?)
      ?.map((e) => TourBookingData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$BookingDataToJson(_BookingData instance) =>
    <String, dynamic>{
      'bookingId': instance.bookingId,
      'bookingFirstName': instance.bookingFirstName,
      'bookingLastName': instance.bookingLastName,
      'bookingPassengers': instance.bookingPassengers,
      'bookingPrice': instance.bookingPrice,
      'travelData': instance.travelData,
      'flightBoardingData': instance.flightBoardingData,
      'hotelBookingData': instance.hotelBookingData,
      'tourBookingData': instance.tourBookingData,
    };
