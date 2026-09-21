import 'dart:async';

import 'package:dreamtravel/data/travel_data.dart';
import 'package:dreamtravel/logic/api/repositories/travel_data_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TravelDataNotifier extends AsyncNotifier<TravelData> {
  final String travelId;

  TravelDataNotifier(this.travelId);

  @override
  FutureOr<TravelData> build() {
    return TravelDataRepository().getTravelDataById(Uri.parse('uri'), travelId);
  }

  @override
  bool updateShouldNotify(AsyncValue previous, AsyncValue next) {
    return !identical(previous, next);
  }

}
