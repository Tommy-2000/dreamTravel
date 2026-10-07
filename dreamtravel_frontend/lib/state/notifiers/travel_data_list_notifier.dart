import 'dart:async';

import '../../data/travel_data.dart';
import '../../logic/api/repositories/travel_data_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Notifiers act as the view model between the repository and the UI
class TravelDataListNotifier extends AsyncNotifier<List<TravelData>> {
  TravelDataListNotifier();

  @override
  FutureOr<List<TravelData>> build() async {
    return ref.read(travelDataRepositoryProvider).getAllSampleTravelData();
  }

  @override
  bool updateShouldNotify(AsyncValue previous, AsyncValue next) {
    return !identical(previous, next);
  }
}
