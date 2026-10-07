import 'dart:async';

import 'package:dreamtravel/data/campfire_data.dart';
import 'package:dreamtravel/data/campfire_post_type.dart';
import 'package:dreamtravel/data/sample_data/sample_campfire_social_data.dart';
import 'package:dreamtravel/logic/api/api_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/api_strings.dart';

final campfireDataRepositoryProvider = Provider<CampfireDataRepository>((ref) {
  return CampfireDataRepository();
});

class CampfireDataRepository {
  late final ApiProvider apiProvider;

  List<CampfireData> getAllSampleCampfireData() {
    return sampleCampfireDataList;
  }

  FutureOr<List<CampfireData>> getAllCampfireData() async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/campfire/",
    );
    return futureResponse.data;
  }

  FutureOr<CampfireData> getCampfireDataById(String campfireId) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/campfire/query=$campfireId",
    );
    return futureResponse.data;
  }

  FutureOr<CampfireData> getCampfireDataByBody(String campfireBody) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/campfire/query=$campfireBody",
    );
    return futureResponse.data;
  }

  FutureOr<CampfireData> getCampfireDataByPostDate(
    DateTime campfirePostDate,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/campfire/query=$campfirePostDate",
    );
    return futureResponse.data;
  }

  FutureOr<CampfireData> getCampfireDataByUpdatedDate(
    DateTime campfireUpdatedDate,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/campfire/query=$campfireUpdatedDate",
    );
    return futureResponse.data;
  }

  FutureOr<CampfireData> getCampfireDataByCampfirePostType(
    CampfirePostType campfirePostType,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/campfire/query=$campfirePostType",
    );
    return futureResponse.data;
  }

  FutureOr<CampfireData> getCampfireDataByTotalFavourites(
    int campfireFavourites,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/campfire/query=$campfireFavourites",
    );
    return futureResponse.data;
  }

  FutureOr<CampfireData> getCampfireDataByTotalComments(
    int campfireTotalComments,
  ) async {
    final futureResponse = await apiProvider.getRequest(
      apiEndpoint: "$springTestApi/campfire/query=$campfireTotalComments",
    );
    return futureResponse.data;
  }
}
