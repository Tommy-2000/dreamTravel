// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserData _$UserDataFromJson(Map<String, dynamic> json) => _UserData(
  userId: json['userId'] as String,
  userFirstName: json['userFirstName'] as String,
  userLastName: json['userLastName'] as String,
  userGenderIdentity: json['userGenderIdentity'] as String,
  userAge: (json['userAge'] as num).toInt(),
  userStreetAddress: json['userStreetAddress'] as String,
  userCity: json['userCity'] as String,
  userCountry: json['userCountry'] as String,
  userPostCode: json['userPostCode'] as String,
  userNearestAirport:
      json['userNearestAirport'] as String? ?? 'Unknown Airport',
  userFavouriteLocations:
      (json['userFavouriteLocations'] as List<dynamic>?)
          ?.map((e) => TravelData.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  userFavouriteSocialPosts:
      (json['userFavouriteSocialPosts'] as List<dynamic>?)
          ?.map((e) => CampfireData.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  userSocialComments:
      (json['userSocialComments'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
);

Map<String, dynamic> _$UserDataToJson(_UserData instance) => <String, dynamic>{
  'userId': instance.userId,
  'userFirstName': instance.userFirstName,
  'userLastName': instance.userLastName,
  'userGenderIdentity': instance.userGenderIdentity,
  'userAge': instance.userAge,
  'userStreetAddress': instance.userStreetAddress,
  'userCity': instance.userCity,
  'userCountry': instance.userCountry,
  'userPostCode': instance.userPostCode,
  'userNearestAirport': instance.userNearestAirport,
  'userFavouriteLocations': instance.userFavouriteLocations,
  'userFavouriteSocialPosts': instance.userFavouriteSocialPosts,
  'userSocialComments': instance.userSocialComments,
};
