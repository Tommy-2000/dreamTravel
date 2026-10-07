import 'dart:async';

import 'package:dreamtravel/data/campfire_data.dart';
import 'package:dreamtravel/logic/api/repositories/campfire_data_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Notifiers act as the view model between the repository and the UI
class CampfireDataListNotifier extends AsyncNotifier<List<CampfireData>> {
  CampfireDataListNotifier();

  @override
  FutureOr<List<CampfireData>> build() async {
    return ref.read(campfireDataRepositoryProvider).getAllSampleCampfireData();
  }

  @override
  bool updateShouldNotify(AsyncValue previous, AsyncValue next) {
    return !identical(previous, next);
  }
}
