import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../logic/providers.dart';

mixin class CommonState {
  String testText(WidgetRef ref) => ref.watch(testTextProvider);

  // Calendar State
  DateTime watchDay(WidgetRef ref) => ref.watch(currentDayProvider);
  DateTime watchMonth(WidgetRef ref) => ref.watch(currentMonthProvider);
  DateTime watchYear(WidgetRef ref) => ref.watch(currentYearProvider);
  List<DateTime> watchCalendarGrid(WidgetRef ref) =>
      ref.watch(monthlyCalendarProvider);

}