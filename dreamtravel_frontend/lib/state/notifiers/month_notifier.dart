import 'package:flutter_riverpod/flutter_riverpod.dart';

class MonthNotifier extends Notifier<DateTime> {
  @override
  DateTime build() => DateTime.now();

  DateTime setMonth(int monthOffset) {
    state = DateTime(state.year, state.month + monthOffset);
    return state;
  }
}
