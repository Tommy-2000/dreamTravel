// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TravelData _$TravelDataFromJson(Map<String, dynamic> json) => _TravelData(
  travelId: (json['travelId'] as num).toInt(),
  travelCity: json['travelCity'] as String,
  travelCountry: json['travelCountry'] as String,
  travelStartDate: DateTime.parse(json['travelStartDate'] as String),
  travelEndDate: DateTime.parse(json['travelEndDate'] as String),
  travelImageUrl: json['travelImageUrl'] as String?,
  travelDataHasImage: json['travelDataHasImage'] as bool,
  travelTotalCost: (json['travelTotalCost'] as num).toDouble(),
  travelBookingIncludesFlight: json['travelBookingIncludesFlight'] as bool,
  travelBookingIncludesHotel: json['travelBookingIncludesHotel'] as bool,
  travelBookingIncludesTour: json['travelBookingIncludesTour'] as bool,
);

Map<String, dynamic> _$TravelDataToJson(_TravelData instance) =>
    <String, dynamic>{
      'travelId': instance.travelId,
      'travelCity': instance.travelCity,
      'travelCountry': instance.travelCountry,
      'travelStartDate': instance.travelStartDate.toIso8601String(),
      'travelEndDate': instance.travelEndDate.toIso8601String(),
      'travelImageUrl': instance.travelImageUrl,
      'travelDataHasImage': instance.travelDataHasImage,
      'travelTotalCost': instance.travelTotalCost,
      'travelBookingIncludesFlight': instance.travelBookingIncludesFlight,
      'travelBookingIncludesHotel': instance.travelBookingIncludesHotel,
      'travelBookingIncludesTour': instance.travelBookingIncludesTour,
    };
