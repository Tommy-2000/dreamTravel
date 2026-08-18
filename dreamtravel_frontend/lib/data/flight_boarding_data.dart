import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flight_boarding_data.freezed.dart';

part 'flight_boarding_data.g.dart';

@freezed
abstract class FlightBoardingData with _$FlightBoardingData {
  const factory FlightBoardingData({
    required int flightBoardingNumber,
    required String flightPassengerName,
    required Airport flightOrigin,
    required Airport flightDestination,
    required DateTime flightDepartureTime,
    required DateTime flightBoardingTime,
    required String flightBoardingDay,
    required DateTime flightArrivalTime,
    required String flightGate,
    required int flightZone,
    required String flightPassengerSeat,
    required String flightPassengerClass,
    required int flightPassengers,
    required String flightNumber,
    required FlightDuration flightDuration,
  }) = _FlightBoardingData;

  factory FlightBoardingData.fromJson(Map<String, Object?> json) =>
      _$FlightBoardingDataFromJson(json);
}

@freezed
abstract class Airport with _$Airport {
  const factory Airport({
    required String airportCode,
    required String airportCity,
  }) = _Airport;

  factory Airport.fromJson(Map<String, Object?> json) =>
      _$AirportFromJson(json);
}

@freezed
abstract class FlightDuration with _$FlightDuration {
  const factory FlightDuration({
    required int flightHours,
    required int flightMinutes,
  }) = _FlightDuration;

  factory FlightDuration.fromJson(Map<String, Object?> json) =>
      _$FlightDurationFromJson(json);
}
