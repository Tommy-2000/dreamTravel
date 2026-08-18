// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flight_boarding_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FlightBoardingData _$FlightBoardingDataFromJson(
  Map<String, dynamic> json,
) => _FlightBoardingData(
  flightBoardingNumber: (json['flightBoardingNumber'] as num).toInt(),
  flightPassengerName: json['flightPassengerName'] as String,
  flightOrigin: Airport.fromJson(json['flightOrigin'] as Map<String, dynamic>),
  flightDestination: Airport.fromJson(
    json['flightDestination'] as Map<String, dynamic>,
  ),
  flightDepartureTime: DateTime.parse(json['flightDepartureTime'] as String),
  flightBoardingTime: DateTime.parse(json['flightBoardingTime'] as String),
  flightBoardingDay: json['flightBoardingDay'] as String,
  flightArrivalTime: DateTime.parse(json['flightArrivalTime'] as String),
  flightGate: json['flightGate'] as String,
  flightZone: (json['flightZone'] as num).toInt(),
  flightPassengerSeat: json['flightPassengerSeat'] as String,
  flightPassengerClass: json['flightPassengerClass'] as String,
  flightPassengers: (json['flightPassengers'] as num).toInt(),
  flightNumber: json['flightNumber'] as String,
  flightDuration: FlightDuration.fromJson(
    json['flightDuration'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$FlightBoardingDataToJson(_FlightBoardingData instance) =>
    <String, dynamic>{
      'flightBoardingNumber': instance.flightBoardingNumber,
      'flightPassengerName': instance.flightPassengerName,
      'flightOrigin': instance.flightOrigin,
      'flightDestination': instance.flightDestination,
      'flightDepartureTime': instance.flightDepartureTime.toIso8601String(),
      'flightBoardingTime': instance.flightBoardingTime.toIso8601String(),
      'flightBoardingDay': instance.flightBoardingDay,
      'flightArrivalTime': instance.flightArrivalTime.toIso8601String(),
      'flightGate': instance.flightGate,
      'flightZone': instance.flightZone,
      'flightPassengerSeat': instance.flightPassengerSeat,
      'flightPassengerClass': instance.flightPassengerClass,
      'flightPassengers': instance.flightPassengers,
      'flightNumber': instance.flightNumber,
      'flightDuration': instance.flightDuration,
    };

_Airport _$AirportFromJson(Map<String, dynamic> json) => _Airport(
  airportCode: json['airportCode'] as String,
  airportCity: json['airportCity'] as String,
);

Map<String, dynamic> _$AirportToJson(_Airport instance) => <String, dynamic>{
  'airportCode': instance.airportCode,
  'airportCity': instance.airportCity,
};

_FlightDuration _$FlightDurationFromJson(Map<String, dynamic> json) =>
    _FlightDuration(
      flightHours: (json['flightHours'] as num).toInt(),
      flightMinutes: (json['flightMinutes'] as num).toInt(),
    );

Map<String, dynamic> _$FlightDurationToJson(_FlightDuration instance) =>
    <String, dynamic>{
      'flightHours': instance.flightHours,
      'flightMinutes': instance.flightMinutes,
    };
