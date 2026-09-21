import 'package:dreamtravel/data/campfire_data.dart';
import 'package:dreamtravel/data/travel_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers/state_providers.dart';

mixin class CampfireState {
  // Listen to global changes in the campfireDataList state and rerender where necessary
  AsyncValue<List<CampfireData>> watchCampfireDataList(WidgetRef ref) =>
      ref.watch(campfireDataListProvider);

}
