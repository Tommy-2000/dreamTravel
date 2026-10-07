import 'dart:async';

import '../../logic/api/repositories/booking_data_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/booking_data.dart';

// Notifiers act as the view model between the repository and the UI
class BookingDataListNotifier extends AsyncNotifier<List<BookingData>> {
  BookingDataListNotifier();

  @override
  FutureOr<List<BookingData>> build() async {
    return ref.read(bookingDataRepositoryProvider).getAllSampleBookingData();
  }

  @override
  bool updateShouldNotify(AsyncValue previous, AsyncValue next) {
    return !identical(previous, next);
  }
}
