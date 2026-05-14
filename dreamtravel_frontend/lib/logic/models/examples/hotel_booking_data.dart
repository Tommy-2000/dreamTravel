import 'package:flutter/material.dart';

import 'travel_data.dart';


class HotelBookingData {
  final int flightBoardingNumber;
  final String flightPassengerName;
  final DateTime flightDepartureTime;
  final TimeOfDay flightBoardingTime;
  final DateTime flightArrivalTime;
  final String flightGate;
  final int flightZone;
  final String flightPassengerSeat;
  final String flightPassengerClass;
  final String flightNumber;

  const HotelBookingData({
    required this.flightBoardingNumber,
    required this.flightPassengerName,
    required this.flightDepartureTime,
    required this.flightBoardingTime,
    required this.flightArrivalTime,
    required this.flightGate,
    required this.flightZone,
    required this.flightPassengerSeat,
    required this.flightPassengerClass,
    required this.flightNumber,
  });
}

