import 'package:dreamtravel/data/travel_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers.dart';

mixin class ExploreState {
  // Travel Data
  List<TravelData> watchTravelDataList(WidgetRef ref) =>
      ref.watch(travelDataListProvider);

  // TravelData watchTravelData(WidgetRef ref) => ref.watch(travelDataListProvider.select((travelData) => travelData));
}
