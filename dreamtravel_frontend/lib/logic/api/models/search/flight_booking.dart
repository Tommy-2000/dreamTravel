import 'package:flutter/material.dart';

class FlightBooking {
  final int flightBookingId;
  final String flightBookingName;
  final String flightBookingImageUrl;
  final List<FlightBoardingPass> flightBoardingPassList;

  const FlightBooking({
    required this.flightBookingId,
    required this.flightBookingName,
    required this.flightBookingImageUrl,
    required this.flightBoardingPassList,
  });
}

class FlightBoardingPass {
  final String passengerName;
  final Airport flightOrigin;
  final Airport flightDestination;
  final DateTime flightDepartureTime;
  final TimeOfDay flightBoardingTime;
  final DateTime flightArrivalTime;
  final String flightGate;
  final int flightZone;
  final String passengerSeat;
  final String passengerClass;
  final String flightNumber;
  final FlightDuration flightDuration;

  const FlightBoardingPass({
    required this.passengerName,
    required this.flightOrigin,
    required this.flightDestination,
    required this.flightDepartureTime,
    required this.flightBoardingTime,
    required this.flightArrivalTime,
    required this.flightGate,
    required this.flightZone,
    required this.passengerSeat,
    required this.passengerClass,
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
