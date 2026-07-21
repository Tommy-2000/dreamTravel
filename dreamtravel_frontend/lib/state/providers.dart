import 'package:dreamtravel/data/booking_data.dart';
import 'package:dreamtravel/data/flight_boarding_data.dart';
import 'package:dreamtravel/data/hotel_booking_data.dart';
import 'package:dreamtravel/data/travel_data.dart';
import 'package:dreamtravel/logic/sample_data/sample_booking_data.dart';
import 'package:dreamtravel/logic/sample_data/sample_travel_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'notifiers/auth_notifier.dart';
import 'notifiers/day_notifier.dart';
import 'notifiers/loyalty_notifier.dart';
import 'notifiers/month_notifier.dart';
import 'notifiers/monthly_calendar_notifier.dart';
import 'notifiers/theme_notifier.dart';
import 'notifiers/year_notifier.dart';

// Authentication providers
final authProvider = NotifierProvider<AuthNotifier, bool>(AuthNotifier.new);

// Loyalty providers
final loyaltyProvider = NotifierProvider<LoyaltyNotifier, bool>(
  LoyaltyNotifier.new,
);

// UI providers
final themeProvider = NotifierProvider<ThemeNotifier, bool>(ThemeNotifier.new);

// Test providers
final testTextProvider = Provider(isAutoDispose: true, (_) => 'Test text');

// Weekly and Monthly Calendar providers
final currentDayProvider = NotifierProvider<DayNotifier, DateTime>(
  isAutoDispose: false,
  DayNotifier.new,
);

final currentMonthProvider = NotifierProvider<MonthNotifier, DateTime>(
  isAutoDispose: false,
  MonthNotifier.new,
);

final currentYearProvider = NotifierProvider<YearNotifier, DateTime>(
  isAutoDispose: false,
  YearNotifier.new,
);

final monthlyCalendarProvider =
    NotifierProvider<MonthlyCalendarNotifier, List<DateTime>>(
      isAutoDispose: false,
      MonthlyCalendarNotifier.new,
    );

// Api providers

final travelDataListProvider = Provider.autoDispose<List<TravelData>>((ref) {
  return sampleTravelDataList;
});

// final travelDataProvider = Provider.autoDispose.family<TravelData, int>((ref, index) {
//   return travelDataListProvider.select((travelData) => travelData[index]);
// });

final bookingDataProvider = Provider.autoDispose<List<BookingData>>((ref) {
  return sampleBookingDataList;
});

final flightDataProvider = Provider.autoDispose<List<FlightBoardingData>>((
  ref,
) {
  return sampleFlightBoardingDataList;
});

final hotelDataProvider = Provider.autoDispose<List<HotelBookingData>>((ref) {
  return sampleHotelBookingDataList;
});

//
