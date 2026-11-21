import 'dart:async';

import 'package:dreamtravel/data/travel_data.dart';
import 'package:dreamtravel/logic/api/repositories/travel_data_repository.dart';
import 'package:dreamtravel/state/providers/argument_providers.dart';
import 'package:dreamtravel/state/providers/state_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Notifiers act as the view model between the repository and the UI
class TravelDataNotifier extends AsyncNotifier<TravelData> {
  @override
  Future<TravelData> build() async {
    final travelId = ref.read(
      tripDetailsArgProvider,
    ); // Retrieve the argument from the argument provider
    return await ref
        .read(travelDataRepositoryProvider)
        .getTravelDataById(travelId.requireValue);
  }

  FutureOr<TravelData> getTravelDataByCity(String travelCity) async {
    return await ref
        .read(travelDataRepositoryProvider)
        .getTravelDataByCity(travelCity);
  }

  FutureOr<TravelData> getTravelDataByCountry(String travelCountry) async {
    return await ref
        .read(travelDataRepositoryProvider)
        .getTravelDataByCountry(travelCountry);
  }

  FutureOr<TravelData> getTravelDataByStartDate(
    DateTime travelStartDate,
  ) async {
    return await ref
        .read(travelDataRepositoryProvider)
        .getTravelDataByStartDate(travelStartDate);
  }

  FutureOr<TravelData> getTravelDataByEndDate(DateTime travelEndDate) async {
    return await ref
        .read(travelDataRepositoryProvider)
        .getTravelDataByEndDate(travelEndDate);
  }

  FutureOr<TravelData> getTravelDataByTotalCost(double travelTotalCost) async {
    return await ref
        .read(travelDataRepositoryProvider)
        .getTravelDataByTotalCost(travelTotalCost);
  }

  @override
  bool updateShouldNotify(AsyncValue previous, AsyncValue next) {
    return !identical(previous, next);
  }
}
