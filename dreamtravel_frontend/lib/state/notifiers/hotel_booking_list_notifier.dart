import 'dart:async';

import 'package:dreamtravel/data/hotel_booking_data.dart';
import 'package:dreamtravel/logic/api/repositories/hotel_booking_data_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Notifiers act as the view model between the repository and the UI
class HotelBookingListNotifier extends AsyncNotifier<List<HotelBookingData>> {
  HotelBookingListNotifier();

  @override
  FutureOr<List<HotelBookingData>> build() async {
    return ref.read(hotelBookingDataRepository).getAllSampleHotelBookingData();
  }

  @override
  bool updateShouldNotify(AsyncValue previous, AsyncValue next) {
    return !identical(previous, next);
  }
}
