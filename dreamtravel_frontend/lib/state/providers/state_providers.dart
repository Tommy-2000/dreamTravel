import 'package:dreamtravel/data/booking_data.dart';
import 'package:dreamtravel/data/campfire_post_type.dart';
import 'package:dreamtravel/data/flight_boarding_data.dart';
import 'package:dreamtravel/data/hotel_booking_data.dart';
import 'package:dreamtravel/data/campfire_data.dart';
import 'package:dreamtravel/data/sample_data/sample_campfire_social_data.dart';
import 'package:dreamtravel/data/tour_booking_data.dart';
import 'package:dreamtravel/data/travel_data.dart';
import 'package:dreamtravel/logic/api/repositories/booking_data_repository.dart';
import 'package:dreamtravel/logic/api/repositories/campfire_data_repository.dart';
import 'package:dreamtravel/logic/api/repositories/travel_data_repository.dart';
import 'package:dreamtravel/state/notifiers/search_travel_data_notifier.dart';
import 'package:dreamtravel/state/providers/argument_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/sample_data/sample_booking_data.dart';
import '../../data/sample_data/sample_travel_data.dart';
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

final travelDataListProvider = FutureProvider.autoDispose<List<TravelData>>((
  ref,
) {
  return TravelDataRepository().getAllSampleTravelData();
});

final travelDataProvider = FutureProvider.autoDispose
    .family<TravelData, String>((ref, travelId) {
      String travelId = ref.read(travelDetailsArgProvider);
      TravelDataRepository travelDataRepository = ref.read(
        travelDataRepositoryProvider,
      );
      return travelDataRepository.getTravelDataById(Uri.parse("uri"), travelId);
    });

// final travelDataFamilyProvider = FutureProvider.autoDispose.family<TravelData, String>((ref, travelId) {
//   AsyncData<List<TravelData>> travelDataRepository = ref.watch(travelDataListProvider);
// });

// CampfireData providers = For fetching all campfire data available

final campfireDataListProvider = FutureProvider.autoDispose<List<CampfireData>>(
  (ref) {
    return CampfireDataRepository().getAllSampleCampfireData();
  },
);

// final campfirePostDataProvider = AsyncNotifierProvider.autoDispose.family<Campfire, CampfireData>((ref) {
//   if (CampfirePostType.socialCampfirePost) {
//
// };
// });

// BookingData providers - For fetching all booking data available
final bookingDataProvider = FutureProvider.autoDispose<List<BookingData>>((
  ref,
) {
  return BookingDataRepository().getAllSampleBookingData();
});

final sampleFlightBoardingDataProvider =
    FutureProvider.autoDispose<List<FlightBoardingData>>((ref) {
      return sampleFlightBoardingDataList;
    });

final sampleHotelBookingDataProvider =
    FutureProvider.autoDispose<List<HotelBookingData>>((ref) {
      return sampleHotelBookingDataList;
    });

final sampleTourBookingDataProvider =
    FutureProvider.autoDispose<List<TourBookingData>>((ref) {
      return sampleTourBookingDataList;
    });

// UI providers
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
