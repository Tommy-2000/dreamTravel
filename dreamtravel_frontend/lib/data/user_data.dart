import 'package:dreamtravel/data/campfire_data.dart';
import 'package:dreamtravel/data/travel_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'user_data.freezed.dart';

part 'user_data.g.dart';

// A UserData class represents the user when authenticated

@freezed
abstract class UserData with _$UserData {
  const factory UserData({
    required String userId,
    required String userFirstName,
    required String userLastName,
    required String userGenderIdentity,
    required int userAge,
    required String userStreetAddress,
    required String userCity,
    required String userCountry,
    required String userPostCode,
    @Default('Unknown Airport') String? userNearestAirport,
    @Default([]) List<TravelData>? userFavouriteLocations,
    @Default([]) List<CampfireData>? userFavouriteSocialPosts,
    @Default([]) List<String>? userSocialComments,
  }) = _UserData;

  factory UserData.fromJson(Map<String, Object?> json) =>
      _$UserDataFromJson(json);
}
