import 'dart:async';

import 'package:dreamtravel/data/travel_data.dart';
import 'package:dreamtravel/logic/api/api_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/api_strings.dart';
import '../../../data/sample_data/sample_travel_data.dart';

final travelDataRepositoryProvider = Provider<TravelDataRepository>((ref) {
  return TravelDataRepository();
});

class TravelDataRepository {
  late final ApiProvider apiProvider;

  List<TravelData> getAllSampleTravelData() {
    return sampleTravelDataList;
  }

  FutureOr<List<TravelData>> getAllTravelData() async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/travel/",
    );
    return futureResponse.data;
  }

  FutureOr<TravelData> getTravelDataById(String travelId) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/travel/query=$travelId",
    );
    return futureResponse.data;
  }

  FutureOr<TravelData> getTravelDataByCity(String travelCity) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/travel/query=$travelCity",
    );
    return futureResponse.data;
  }

  FutureOr<TravelData> getTravelDataByCountry(String travelCountry) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/travel/query=$travelCountry",
    );
    return futureResponse.data;
  }

  FutureOr<TravelData> getTravelDataByStartDate(
    DateTime travelStartDate,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/travel/query=$travelStartDate",
    );
    return futureResponse.data;
  }

  FutureOr<TravelData> getTravelDataByEndDate(DateTime travelEndDate) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/travel/query=$travelEndDate",
    );
    return futureResponse.data;
  }

  FutureOr<TravelData> getTravelDataByTotalCost(double travelTotalCost) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/travel/query=$travelTotalCost",
    );
    return futureResponse.data;
  }

  FutureOr<TravelData> getFlightOnlyTravelData(
    bool travelDataIncludesFlight,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/travel/query=$travelDataIncludesFlight",
    );
    return futureResponse.data;
  }

  FutureOr<TravelData> getHotelOnlyTravelData(
    bool travelDataIncludesHotel,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/travel/query=$travelDataIncludesHotel",
    );
    return futureResponse.data;
  }

  FutureOr<TravelData> getTourOnlyTravelData(
    bool travelDataIncludesTour,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/travel/query=$travelDataIncludesTour",
    );
    return futureResponse.data;
  }
}
