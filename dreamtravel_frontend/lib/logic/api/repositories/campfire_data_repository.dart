import 'dart:async';

import 'package:dreamtravel/data/campfire_data.dart';
import 'package:dreamtravel/data/campfire_post_type.dart';
import 'package:dreamtravel/data/sample_data/sample_campfire_social_data.dart';
import 'package:dreamtravel/logic/api/api_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

final campfireDataRepository = FutureProvider<CampfireDataRepository>((ref) {
  return CampfireDataRepository();
});

class CampfireDataRepository {
  late final ApiProvider apiProvider;

  List<CampfireData> getAllSampleCampfireData() {
    return sampleCampfireDataList;
  }

  FutureOr<List<CampfireData>> getAllCampfireData(Uri responseUri) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: responseUri.host,
    );
    return futureResponse.data;
  }

  FutureOr<CampfireData> getCampfireDataById(
    Uri responseUri,
    Uuid campfireId,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: responseUri.host,
    );
    return futureResponse.data;
  }

  FutureOr<CampfireData> getCampfireDataByBody(
    Uri responseUri,
    String campfireBody,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: responseUri.host,
    );
    return futureResponse.data;
  }

  FutureOr<CampfireData> getCampfireDataByPostDate(
    Uri responseUri,
    DateTime campfirePostDate,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: responseUri.host,
    );
    return futureResponse.data;
  }

  FutureOr<CampfireData> getCampfireDataByUpdatedDate(
    Uri responseUri,
    DateTime campfireUpdatedDate,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: responseUri.host,
    );
    return futureResponse.data;
  }

  FutureOr<CampfireData> getCampfireDataByCampfirePostType(
    Uri responseUri,
    CampfirePostType campfirePostType,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: responseUri.host,
    );
    return futureResponse.data;
  }

  FutureOr<CampfireData> getCampfireDataByTotalFavourites(
    Uri responseUri,
    int campfireFavourites,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: responseUri.host,
    );
    return futureResponse.data;
  }

  FutureOr<CampfireData> getCampfireDataByTotalComments(
    Uri responseUri,
    List<String> campfireComments,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: responseUri.host,
    );
    return futureResponse.data;
  }
}
