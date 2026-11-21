import 'package:dreamtravel/data/travel_data.dart';
import 'package:dreamtravel/state/providers/state_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/booking_data.dart';
import '../data/campfire_data.dart';

mixin class DetailsScreenState {
  AsyncValue<TravelData> watchTravelData(WidgetRef ref) {
    return ref.watch(travelDataProvider);
  }

  AsyncValue<CampfireData> watchCampfireData(WidgetRef ref) {
    return ref.watch(campfireDataProvider);
  }

  AsyncValue<BookingData> watchBookingData(WidgetRef ref) {
    return ref.watch(bookingDataProvider);
  }
}
