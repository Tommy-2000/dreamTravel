import 'package:dreamtravel/data/sample_data/sample_travel_data.dart';
import 'package:dreamtravel/data/travel_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers/state_providers.dart';

mixin class ExploreState {
  // Listen to global changes in the travelDataList state and rerender where necessary
  AsyncValue<List<TravelData>> watchTravelDataList(WidgetRef ref) =>
      ref.watch(travelDataListProvider);

  // Listen to global changes in the travelData state and rerender where necessary
  // AsyncValue<TravelData> watchTravelData(WidgetRef ref) => ref.watch(travelDataListProvider.select((travelData) => travelData.first));
}
