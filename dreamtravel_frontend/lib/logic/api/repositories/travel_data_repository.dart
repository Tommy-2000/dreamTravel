import 'dart:async';

import 'package:dreamtravel/data/travel_data.dart';
import 'package:dreamtravel/logic/api/api_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/sample_data/sample_travel_data.dart';

final travelDataRepositoryProvider = Provider<TravelDataRepository>((ref) {
  return TravelDataRepository();
});

class TravelDataRepository {
  late final ApiProvider apiProvider;

  List<TravelData> getAllSampleTravelData() {
    return sampleTravelDataList;
  }

  FutureOr<List<TravelData>> getAllTravelData(Uri responseUri) async {
    final futureResponse = await apiProvider.getRequest(apiEndpoint: responseUri.host);
    return futureResponse.data;
  }

  FutureOr<TravelData> getTravelDataById(Uri responseUri, String travelId) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: responseUri.host,
    );
    return futureResponse.data;
  }

  FutureOr<TravelData> getTravelDataByCity(
    Uri responseUri,
    String travelCity,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: responseUri.host,
    );
    return futureResponse.data;
  }

  FutureOr<TravelData> getTravelDataByCountry(
    Uri responseUri,
    String travelCountry,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: responseUri.host,
    );
    return futureResponse.data;
  }

  FutureOr<TravelData> getTravelDataByStartDate(
    Uri responseUri,
    DateTime travelStartDate,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: responseUri.host,
    );
    return futureResponse.data;
  }

  FutureOr<TravelData> getTravelDataByEndDate(
    Uri responseUri,
    DateTime travelEndDate,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: responseUri.host,
    );
    return futureResponse.data;
  }

  FutureOr<TravelData> getTravelDataByTotalCost(
    Uri responseUri,
    double travelTotalCost,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: responseUri.host,
    );
    return futureResponse.data;
  }

  FutureOr<TravelData> getFlightOnlyTravelData(
    Uri responseUri,
    bool travelDataIncludesFlight,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: responseUri.host,
    );
    return futureResponse.data;
  }

  FutureOr<TravelData> getHotelOnlyTravelData(
    Uri responseUri,
    bool travelDataIncludesHotel,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: responseUri.host,
    );
    return futureResponse.data;
  }

  FutureOr<TravelData> getTourOnlyTravelData(
    Uri responseUri,
    bool travelDataIncludesTour,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: responseUri.host,
    );
    return futureResponse.data;
  }
}
