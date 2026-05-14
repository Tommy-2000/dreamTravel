
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'notifiers/day_notifier.dart';
import 'notifiers/month_notifiers.dart';
import 'notifiers/monthly_calendar_notifier.dart';
import 'notifiers/theme_notifier.dart';
import 'notifiers/year_notifiers.dart';

final themeProvider = NotifierProvider<ThemeNotifier, bool>(
    ThemeNotifier.new
);

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

