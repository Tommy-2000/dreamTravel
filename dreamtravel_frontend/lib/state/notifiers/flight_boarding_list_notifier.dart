import 'dart:async';

import 'package:dreamtravel/data/flight_boarding_data.dart';
import 'package:dreamtravel/logic/api/repositories/flight_boarding_data_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Notifiers act as the view model between the repository and the UI
class FlightBoardingListNotifier
    extends AsyncNotifier<List<FlightBoardingData>> {
  FlightBoardingListNotifier();

  @override
  FutureOr<List<FlightBoardingData>> build() async {
    return ref
        .read(flightBoardingDataRepository)
        .getAllFlightBoardingData();
  }

  @override
  bool updateShouldNotify(AsyncValue previous, AsyncValue next) {
    return !identical(previous, next);
  }
}
