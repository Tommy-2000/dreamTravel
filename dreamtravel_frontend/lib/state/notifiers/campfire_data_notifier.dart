import 'dart:async';

import 'package:dreamtravel/data/campfire_post_type.dart';
import 'package:dreamtravel/state/providers/argument_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/campfire_data.dart';
import '../../logic/api/repositories/campfire_data_repository.dart';

// Notifiers act as the view model between the repository and the UI
class CampfireDataNotifier extends AsyncNotifier<CampfireData> {
  @override
  Future<CampfireData> build() async {
    final campfireId = ref.read(
      campfireDetailsArgProvider,
    ); // Retrieve the argument from the argument provider
    return await ref
        .read(campfireDataRepositoryProvider)
        .getCampfireDataById(campfireId.requireValue);
  }

  FutureOr<CampfireData> getCampfireDataByBody(String campfireBody) async {
    return ref
        .read(campfireDataRepositoryProvider)
        .getCampfireDataByBody(campfireBody);
  }

  FutureOr<CampfireData> getCampfireDataByPostType(
    CampfirePostType campfirePostType,
  ) async {
    return ref
        .read(campfireDataRepositoryProvider)
        .getCampfireDataByCampfirePostType(campfirePostType);
  }

  FutureOr<CampfireData> getCampfireDataByPostDate(
    DateTime campfirePostDate,
  ) async {
    return ref
        .read(campfireDataRepositoryProvider)
        .getCampfireDataByPostDate(campfirePostDate);
  }

  FutureOr<CampfireData> getCampfireDataByUpdatedDate(
    DateTime campfireUpdatedDate,
  ) async {
    return ref
        .read(campfireDataRepositoryProvider)
        .getCampfireDataByUpdatedDate(campfireUpdatedDate);
  }

  FutureOr<CampfireData> getCampfireDataByTotalFavourites(
    int campfireTotalFavourites,
  ) async {
    return ref
        .read(campfireDataRepositoryProvider)
        .getCampfireDataByTotalFavourites(campfireTotalFavourites);
  }

  FutureOr<CampfireData> getCampfireDataByTotalComments(
    int campfireTotalComments,
  ) async {
    return ref
        .read(campfireDataRepositoryProvider)
        .getCampfireDataByTotalComments(campfireTotalComments);
  }

  @override
  bool updateShouldNotify(AsyncValue previous, AsyncValue next) {
    return !identical(previous, next);
  }
}
