import 'package:flutter/material.dart';



class FlightBoardingData {
  final int flightBoardingNumber;
  final String flightPassengerName;
  final Airport flightOrigin;
  final Airport flightDestination;
  final DateTime flightDepartureTime;
  final TimeOfDay flightBoardingTime;
  final DateTime flightArrivalTime;
  final String flightGate;
  final int flightZone;
  final String flightPassengerSeat;
  final String flightPassengerClass;
  final String flightNumber;
  final FlightDuration flightDuration;

  const FlightBoardingData({
    required this.flightBoardingNumber,
    required this.flightPassengerName,
    required this.flightOrigin,
    required this.flightDestination,
    required this.flightDepartureTime,
    required this.flightBoardingTime,
    required this.flightArrivalTime,
    required this.flightGate,
    required this.flightZone,
    required this.flightPassengerSeat,
    required this.flightPassengerClass,
    required this.flightNumber,
    required this.flightDuration,
  });
}

class Airport {
  final String airportCode;
  final String airportCity;

  const Airport({required this.airportCode, required this.airportCity});
}

class FlightDuration {
  final int flightHours;
  final int flightMinutes;

  const FlightDuration({
    required this.flightHours,
    required this.flightMinutes,
  });

  @override
  String toString() {
    return '\t${flightHours}H ${flightMinutes}M';
  }
}
