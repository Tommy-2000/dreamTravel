import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/travel_data.dart';
import 'providers/state_providers.dart';

mixin class GlobalState {
  // Authentication State
  bool watchAuthentication(WidgetRef ref) => ref.watch(authProvider);

  // Loyalty State
  bool watchLoyaltyMember(WidgetRef ref) => ref.watch(loyaltyProvider);

  // Calendar State
  DateTime watchDay(WidgetRef ref) => ref.watch(currentDayProvider);
  DateTime watchMonth(WidgetRef ref) => ref.watch(currentMonthProvider);
  DateTime watchYear(WidgetRef ref) => ref.watch(currentYearProvider);
  List<DateTime> watchCalendarGrid(WidgetRef ref) =>
      ref.watch(monthlyCalendarProvider);

  // Listen to global changes in the travelDataList state and rerender where necessary
  AsyncValue<List<TravelData>> watchTravelDataList(WidgetRef ref) =>
      ref.watch(travelDataListProvider);

}