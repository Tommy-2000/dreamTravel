import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../logic/providers.dart';

mixin class CommonEvent {

  // Calendar UI Events
  DateTime updateDay(WidgetRef ref, int dayOffset) {
    return ref.read(currentDayProvider.notifier).setDay(dayOffset);
  }

  DateTime updateMonth(WidgetRef ref, int monthOffset) {
    return ref.read(currentMonthProvider.notifier).setMonth(monthOffset);
  }

  DateTime updateYear(WidgetRef ref, int yearOffset) {
    return ref.read(currentYearProvider.notifier).setYear(yearOffset);
  }

  List<DateTime> updateMonthlyCalendar(WidgetRef ref, DateTime setMonth) {
    return ref.read(monthlyCalendarProvider.notifier).setMonthlyCalendar(setMonth);
  }

}
