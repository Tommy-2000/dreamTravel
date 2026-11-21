import 'dart:async';

import 'package:dreamtravel/state/providers/state_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CampfireArgNotifier extends AsyncNotifier<String> {
  CampfireArgNotifier();

  @override
  FutureOr<String> build() {
    final campfireData = ref.read(campfireDataProvider);
    return campfireData.requireValue.campfireId;
  }
}
