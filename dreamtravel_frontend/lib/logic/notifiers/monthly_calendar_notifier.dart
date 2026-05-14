import 'package:flutter_riverpod/flutter_riverpod.dart';

class MonthlyCalendarNotifier extends Notifier<List<DateTime>> {

  @override
  List<DateTime> build() => _createCalendarGrid(DateTime.now());


  List<DateTime> setMonthlyCalendar(DateTime setMonth) {
    // Resolve a Future function to set the state and return it
    state = _createCalendarGrid(setMonth);
    return state;
  }

}

List<DateTime> _createCalendarGrid(DateTime inputMonth) {

  // Get the number of days from the inputMonth
  int numDays = DateTime(inputMonth.year, inputMonth.month + 1, 0).day;
  // Get the first weekday from the inputMonth
  int firstWeekday = DateTime(inputMonth.year, inputMonth.month, 1).weekday % 7;

  List<DateTime> dateGrid = [];

  // Fill in the dates for the previous month
  DateTime previousMonth = DateTime(inputMonth.year, inputMonth.month - 1);

  int previousMonthLastDay = DateTime(previousMonth.year, previousMonth.month + 1, 0).day;
  for (int i = firstWeekday; i > 0; i--) {
    dateGrid.add(DateTime(previousMonth.year, previousMonth.month, previousMonthLastDay - i + 1));
  }

  // Fill in the dates for the current month
  for (int day = 1; day <= numDays; day++) {
    dateGrid.add(DateTime(inputMonth.year, inputMonth.month, day));
  }

  // Fill in the dates for the next month
  int remainingBoxes = 42 - dateGrid.length; // 6 weeks * 7 days
  for (int day = 1; day <= remainingBoxes; day++) {
    dateGrid.add(DateTime(inputMonth.year, inputMonth.month + 1, day));
  }

  return dateGrid;

}
