// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_booking_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HotelBookingData _$HotelBookingDataFromJson(Map<String, dynamic> json) =>
    _HotelBookingData(
      hotelBookingNumber: (json['hotelBookingNumber'] as num).toInt(),
      guestFullName: json['guestFullName'] as String,
      hotelCheckInTime: json['hotelCheckInTime'] as String,
      hotelCheckInDay: DateTime.parse(json['hotelCheckInDay'] as String),
      hotelCheckOutTime: json['hotelCheckOutTime'] as String,
      hotelCheckOutDay: DateTime.parse(json['hotelCheckOutDay'] as String),
      hotelName: json['hotelName'] as String,
      hotelManager: json['hotelManager'] as String,
      hotelFloor: json['hotelFloor'] as String,
      hotelRoomNumber: (json['hotelRoomNumber'] as num).toInt(),
    );

Map<String, dynamic> _$HotelBookingDataToJson(_HotelBookingData instance) =>
    <String, dynamic>{
      'hotelBookingNumber': instance.hotelBookingNumber,
      'guestFullName': instance.guestFullName,
      'hotelCheckInTime': instance.hotelCheckInTime,
      'hotelCheckInDay': instance.hotelCheckInDay.toIso8601String(),
      'hotelCheckOutTime': instance.hotelCheckOutTime,
      'hotelCheckOutDay': instance.hotelCheckOutDay.toIso8601String(),
      'hotelName': instance.hotelName,
      'hotelManager': instance.hotelManager,
      'hotelFloor': instance.hotelFloor,
      'hotelRoomNumber': instance.hotelRoomNumber,
    };
