// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TravelData _$TravelDataFromJson(Map<String, dynamic> json) => _TravelData(
  travelId: json['travelId'] as String,
  travelCity: json['travelCity'] as String,
  travelCountry: json['travelCountry'] as String,
  travelLatitude: (json['travelLatitude'] as num).toDouble(),
  travelLongitude: (json['travelLongitude'] as num).toDouble(),
  travelStartDate: DateTime.parse(json['travelStartDate'] as String),
  travelEndDate: DateTime.parse(json['travelEndDate'] as String),
  travelImageUrl: json['travelImageUrl'] as String? ?? '',
  travelDataHasImage: json['travelDataHasImage'] as bool,
  travelTotalCost: (json['travelTotalCost'] as num).toDouble(),
  travelDataIncludesFlight: json['travelDataIncludesFlight'] as bool,
  travelDataIncludesHotel: json['travelDataIncludesHotel'] as bool,
  travelDataIncludesTour: json['travelDataIncludesTour'] as bool,
);

Map<String, dynamic> _$TravelDataToJson(_TravelData instance) =>
    <String, dynamic>{
      'travelId': instance.travelId,
      'travelCity': instance.travelCity,
      'travelCountry': instance.travelCountry,
      'travelLatitude': instance.travelLatitude,
      'travelLongitude': instance.travelLongitude,
      'travelStartDate': instance.travelStartDate.toIso8601String(),
      'travelEndDate': instance.travelEndDate.toIso8601String(),
      'travelImageUrl': instance.travelImageUrl,
      'travelDataHasImage': instance.travelDataHasImage,
      'travelTotalCost': instance.travelTotalCost,
      'travelDataIncludesFlight': instance.travelDataIncludesFlight,
      'travelDataIncludesHotel': instance.travelDataIncludesHotel,
      'travelDataIncludesTour': instance.travelDataIncludesTour,
    };
