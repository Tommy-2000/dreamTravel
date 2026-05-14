import 'package:dreamtravel/ui/state/common_event.dart';
import 'package:dreamtravel/ui/state/common_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class MonthlyCalendarCard extends StatelessWidget
    with CommonState, CommonEvent {
  const MonthlyCalendarCard({super.key});

  String _monthName(int monthNumber) {
    return [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ][monthNumber - 1];
  }

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    return Card(
      color: colourScheme.primaryContainer,
      child: Padding(
        padding: EdgeInsets.all(3),
        child: Column(
          children: [
            Flexible(
              child: Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  var currentMonth = watchMonth(ref);
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () => {
                          currentMonth = updateMonth(ref, -1),
                          updateMonthlyCalendar(ref, currentMonth),
                        },
                        icon: Icon(Icons.arrow_back_rounded),
                      ),
                      Gap(5),
                      Text(
                        '${_monthName(currentMonth.month)} ${currentMonth.year}',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Gap(5),
                      IconButton(
                        onPressed: () => {
                          currentMonth = updateMonth(ref, 1),
                          updateMonthlyCalendar(ref, currentMonth),
                        },
                        icon: Icon(Icons.arrow_forward_rounded),
                      ),
                    ],
                  );
                },
              ),
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  7,
                  (index) => Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        [
                          'Sun',
                          'Mon',
                          'Tues',
                          'Wed',
                          'Thurs',
                          'Fri',
                          'Sat',
                        ][index],
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: colourScheme.primary,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
                return renderCalendarGrid(context, ref, watchCalendarGrid(ref), watchMonth(ref).month, watchDay(ref).day, colourScheme);
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget renderCalendarGrid(BuildContext context, WidgetRef ref, List<DateTime> calendarGrid, int month, int day, ColorScheme colourScheme) {
  return Expanded(
    flex: 12,
    child: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 7,
      ),
      itemCount: calendarGrid.length,
      itemBuilder: (context, index) {
        bool isCurrentMonth = calendarGrid[index].month == month;
        bool isCurrentDay = calendarGrid[index].day == day;
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Card(
            color: isCurrentMonth ? colourScheme.primary : Colors.transparent,
            elevation: 3.0,
            child: Center(
              child: Text(
                calendarGrid[index].day.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: isCurrentMonth ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        );
      },
    ),
  );

}
