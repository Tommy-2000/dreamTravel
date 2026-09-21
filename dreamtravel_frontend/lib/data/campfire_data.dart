import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import 'campfire_post_type.dart';


part 'campfire_data.freezed.dart';

part 'campfire_data.g.dart';

// A CampfireData class can be rendered as either a Trip post which contains one image
// or an Adventure post containing multiple images and the travel itinerary associated with the photos

@freezed
abstract class CampfireData with _$CampfireData {
  const factory CampfireData({
    required List<int> campfireId,
    required String campfireBody,
    required DateTime campfirePostDate,
    required DateTime campfireUpdatedDate,
    @Default([]) List<Uri>? campfirePostImages,
    required CampfirePostType campfirePostType,
    required int campfirePostFavourites,
    required List<String> campfirePostComments,
  }) = _CampfireData;

  factory CampfireData.fromJson(Map<String, Object?> json) =>
      _$CampfireDataFromJson(json);
}
