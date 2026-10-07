import 'dart:async';

import 'package:dreamtravel/data/booking_data.dart';
import 'package:dreamtravel/data/flight_boarding_data.dart';
import 'package:dreamtravel/data/hotel_booking_data.dart';
import 'package:dreamtravel/data/campfire_data.dart';
import 'package:dreamtravel/data/travel_data.dart';
import 'package:dreamtravel/logic/api/repositories/flight_boarding_data_repository.dart';
import 'package:dreamtravel/logic/api/repositories/hotel_booking_data_repository.dart';
import 'package:dreamtravel/state/notifiers/booking_data_list_notifier.dart';
import 'package:dreamtravel/state/notifiers/booking_data_notifier.dart';
import 'package:dreamtravel/state/notifiers/campfire_data_list_notifier.dart';
import 'package:dreamtravel/state/notifiers/campfire_data_notifier.dart';
import 'package:dreamtravel/state/notifiers/flight_boarding_list_notifier.dart';
import 'package:dreamtravel/state/notifiers/search_travel_data_notifier.dart';
import 'package:dreamtravel/state/notifiers/travel_data_list_notifier.dart';
import 'package:dreamtravel/state/notifiers/travel_data_notifier.dart';
import 'package:dreamtravel/state/providers/argument_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../notifiers/auth_notifier.dart';
import '../notifiers/day_notifier.dart';
import '../notifiers/loyalty_notifier.dart';
import '../notifiers/month_notifier.dart';
import '../notifiers/monthly_calendar_notifier.dart';
import '../notifiers/theme_notifier.dart';
import '../notifiers/year_notifier.dart';

// Authentication providers
final authProvider = NotifierProvider<AuthNotifier, bool>(AuthNotifier.new);

// Loyalty providers
final loyaltyProvider = NotifierProvider<LoyaltyNotifier, bool>(
  LoyaltyNotifier.new,
);

// SearchDataProvider - For search functionality

final searchDataProvider = NotifierProvider<SearchDataNotifier, List>(
  SearchDataNotifier.new,
);

// TravelData providers - For fetching all travel data available

final travelDataListProvider =
    AsyncNotifierProvider.autoDispose<TravelDataListNotifier, List<TravelData>>(
      TravelDataListNotifier.new,
    );

final travelDataProvider =
    AsyncNotifierProvider.autoDispose<TravelDataNotifier, TravelData>(
      dependencies: [
        tripDetailsArgProvider,
      ], // This is an argument provider that returns the travelId in the notifier
      () => TravelDataNotifier(),
    );

// CampfireData providers = For fetching all campfire data available

final campfireDataListProvider =
    AsyncNotifierProvider.autoDispose<
      CampfireDataListNotifier,
      List<CampfireData>
    >(CampfireDataListNotifier.new);

final campfireDataProvider =
    AsyncNotifierProvider.autoDispose<CampfireDataNotifier, CampfireData>(
      dependencies: [campfireDetailsArgProvider],
      CampfireDataNotifier.new,
    );

// BookingData providers - For fetching all booking data available
final bookingDataListProvider =
    AsyncNotifierProvider.autoDispose<
      BookingDataListNotifier,
      List<BookingData>
    >(BookingDataListNotifier.new);

final bookingDataProvider =
    AsyncNotifierProvider.autoDispose<BookingDataNotifier, BookingData>(
      BookingDataNotifier.new,
    );

final flightBoardingDataListProvider =
    AsyncNotifierProvider.autoDispose<
      FlightBoardingListNotifier,
      List<FlightBoardingData>
    >(FlightBoardingListNotifier.new);

final sampleFlightBoardingDataProvider =
    FutureProvider.autoDispose<List<FlightBoardingData>>((ref) {
      return FlightBoardingDataRepository().getAllSampleFlightBoardingData();
    });

final sampleHotelBookingDataProvider =
    FutureProvider.autoDispose<List<HotelBookingData>>((ref) {
      return HotelBookingDataRepository().getAllSampleHotelBookingData();
    });


// UI util providers
final themeProvider = NotifierProvider<ThemeNotifier, bool>(ThemeNotifier.new);

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
