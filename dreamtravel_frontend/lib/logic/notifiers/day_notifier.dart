import 'package:flutter_riverpod/flutter_riverpod.dart';

class DayNotifier extends Notifier<DateTime> {

  @override
  DateTime build() => DateTime.now();

  DateTime setDay(int dayOffset) {
    state = DateTime(state.month, state.day + dayOffset);
    return state;
  }
}
