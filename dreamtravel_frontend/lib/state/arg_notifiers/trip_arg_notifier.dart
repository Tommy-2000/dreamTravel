import 'dart:async';

import 'package:dreamtravel/state/providers/state_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TripArgNotifier extends AsyncNotifier<String> {
  TripArgNotifier();

  @override
  FutureOr<String> build() {
    final travelData = ref.read(travelDataProvider);
    return travelData.requireValue.travelId;
  }
}
