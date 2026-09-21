import 'dart:math';
import 'booking_data.dart';

import 'travel_data.dart';

final sampleFlightBookingList = [
  BookingData(
    bookingId: Random().nextInt(10000),
    bookingFirstName: "flightBookingName",
    bookingLastName: "flightBookingLocation",
    bookingPrice: 340.00,
    bookingPassengers: 3,
    travelData: TravelData(
      travelId: Random().nextInt(10000),
      travelCity: "Naples",
      travelCountry: "Italy",
      travelStartDate: DateTime.parse("20260912"),
      travelEndDate: DateTime.parse("20261004"),
      travelImageUrl:
          "https://images.unsplash.com/photo-1715702803426-39aa0d4c39a9?&auto=format&fit=crop&q=100&w=1200",
      travelTotalCost: 200,
      travelBookingIncludesFlight: true,
      travelBookingIncludesHotel: true,
      travelBookingIncludesTour: true,
    ),
  ),
  BookingData(
    bookingId: Random().nextInt(10000),
    bookingFirstName: "flightBookingName",
    bookingLastName: "flightBookingLocation",
    bookingPrice: 340.00,
    bookingPassengers: 3,
    travelData: TravelData(
      travelId: Random().nextInt(10000),
      travelCity: "Naples",
      travelCountry: "Italy",
      travelStartDate: DateTime.parse("20260912"),
      travelEndDate: DateTime.parse("20261004"),
      travelImageUrl:
          "https://images.unsplash.com/photo-1715702803426-39aa0d4c39a9?&auto=format&fit=crop&q=100&w=1200",
      travelTotalCost: 200,
      travelBookingIncludesFlight: true,
      travelBookingIncludesHotel: true,
      travelBookingIncludesTour: true,
    ),
  ),
  BookingData(
    bookingId: Random().nextInt(10000),
    bookingFirstName: "flightBookingName",
    bookingLastName: "flightBookingLocation",
    bookingPrice: 340.00,
    bookingPassengers: 3,
    travelData: TravelData(
      travelId: Random().nextInt(10000),
      travelCity: "New York City",
      travelCountry: "USA",
      travelStartDate: DateTime.parse("20260912"),
      travelEndDate: DateTime.parse("20261004"),
      travelImageUrl:
          "https://images.unsplash.com/photo-1758967905380-f62a8c8fd373?&auto=format&fit=crop&q=100&w=1200",
      travelTotalCost: 200,
      travelBookingIncludesFlight: true,
      travelBookingIncludesHotel: true,
      travelBookingIncludesTour: true,
    ),
  ),
  BookingData(
    bookingId: Random().nextInt(10000),
    bookingFirstName: "flightBookingName",
    bookingLastName: "flightBookingLocation",
    bookingPrice: 340.00,
    bookingPassengers: 3,
    travelData: TravelData(
      travelId: Random().nextInt(10000),
      travelCity: "Amsterdam",
      travelCountry: "Netherlands",
      travelStartDate: DateTime.parse("20260912"),
      travelEndDate: DateTime.parse("20261004"),
      travelImageUrl:
      "https://images.unsplash.com/photo-1759512909680-aeb5e7c23671?&auto=format&fit=crop&q=100&w=1200",
      travelTotalCost: 200,
      travelBookingIncludesFlight: true,
      travelBookingIncludesHotel: true,
      travelBookingIncludesTour: true,
    ),
  ),
  BookingData(
    bookingId: Random().nextInt(10000),
    bookingFirstName: "flightBookingName",
    bookingLastName: "flightBookingLocation",
    bookingPrice: 340.00,
    bookingPassengers: 3,
    travelData: TravelData(
      travelId: Random().nextInt(10000),
      travelCity: "Gold Coast City",
      travelCountry: "Australia",
      travelStartDate: DateTime.parse("20260912"),
      travelEndDate: DateTime.parse("20261004"),
      travelImageUrl:
      "https://images.unsplash.com/photo-1759222977064-7a75dc2b83b1?&auto=format&fit=crop&q=100&w=1200",
      travelTotalCost: 200,
      travelBookingIncludesFlight: true,
      travelBookingIncludesHotel: true,
      travelBookingIncludesTour: true,
    ),
  ),
];
