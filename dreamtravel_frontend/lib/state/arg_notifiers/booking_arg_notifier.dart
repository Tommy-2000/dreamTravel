import 'dart:async';

import 'package:dreamtravel/state/providers/state_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookingArgNotifier extends AsyncNotifier<String> {
  BookingArgNotifier();

  @override
  FutureOr<String> build() {
    final bookingData = ref.read(bookingDataProvider);
    return bookingData.requireValue.bookingId;
  }
}
