import 'flight_booking_data.dart';
import 'package:flutter/material.dart';

import 'location_data.dart';

final sampleFlightBookingList = [
  FlightBookingData(
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
        locationData: LocationData(
          locationCity: "Naples",
          locationCountry: "Italy",
          locationStartDate: "September 27th",
          locationEndDate: "October 20th",
          locationImageUrl:
          "https://images.unsplash.com/photo-1715702803426-39aa0d4c39a9?&auto=format&fit=crop&q=100&w=1200",
          locationTotalCost: 200,
          tripIncludesHotel: true,
          tripIncludesRental: true,
          tripIncludesTour: true,
        ),
      ),
    ],
  ),
];
