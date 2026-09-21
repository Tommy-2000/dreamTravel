import 'package:dreamtravel/data/booking_data.dart';
import 'package:dreamtravel/data/travel_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers/state_providers.dart';

mixin class BookingsState {
  // Listen to global changes in the travelDataList state and rerender where necessary
  AsyncValue<List<BookingData>> watchBookingDataList(WidgetRef ref) =>
      ref.watch(bookingDataProvider);

}
