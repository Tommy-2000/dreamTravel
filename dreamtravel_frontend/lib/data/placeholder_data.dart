import 'package:dreamtravel/data/booking_data.dart';
import 'package:dreamtravel/data/travel_data.dart';

final travelDataPlaceholder = TravelData(travelId: "123",
    travelCity: "travelCity",
    travelCountry: "travelCountry",
    travelLatitude: 0.12122123,
    travelLongitude: 0.123123123,
    travelStartDate: DateTime.utc(2026, 12, 31),
    travelEndDate: DateTime.utc(2026, 12, 31),
    travelDataHasImage: false,
    travelTotalCost: 1000.0,
    travelDataIncludesFlight: false,
    travelDataIncludesHotel: false,
    travelDataIncludesTour: false);


final bookingDataPlaceholder = BookingData(bookingId: "321",
    bookingFirstName: "bookingFirstName",
    bookingLastName: "bookingLastName",
    bookingPassengers: 5,
    bookingPrice: 1000.0,
    travelData: travelDataPlaceholder,
    flightBoardingData: [],
    hotelBookingData: [],
    tourBookingData: []);
