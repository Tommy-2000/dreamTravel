import 'package:flutter_riverpod/flutter_riverpod.dart';

class YearNotifier extends Notifier<DateTime> {
  @override
  DateTime build() => DateTime.now();

  DateTime setYear(int yearOffset) {
    state = DateTime(state.year + yearOffset);
    return state;
  }
}
