import 'flight_booking.dart';
import 'package:flutter/material.dart';

final sampleFlightBookingList = [
  FlightBooking(
    flightBookingId: 123,
    flightBookingName: "flightBookingName",
    flightBookingImageUrl: "flightBookingImageUrl",
    flightBoardingPassList: [
      FlightBoardingPass(
        passengerName: "",
        flightOrigin: Airport(
          airportCode: "airportCode",
          airportCity: "airportCity",
        ),
        flightDestination: Airport(
          airportCode: "airportCode",
          airportCity: "airportCity",
        ),
        flightDepartureTime: DateTime.parse("2026-06-12 - 11:32"),
        flightBoardingTime: TimeOfDay(hour: 11, minute: 03),
        flightArrivalTime: DateTime.parse("2026-06-13 - 04:23"),
        flightGate: "Aqua",
        flightZone: 1,
        passengerSeat: "A32",
        passengerClass: "Business",
        flightNumber: "20ng093r2np",
        flightDuration: FlightDuration(flightHours: 11, flightMinutes: 30),
      ),
    ],
  ),
];
