// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campfire_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CampfireData _$CampfireDataFromJson(Map<String, dynamic> json) =>
    _CampfireData(
      campfireId: (json['campfireId'] as num).toInt(),
      campfireHeader: json['campfireHeader'] as String,
      campfireBody: json['campfireBody'] as String,
      campfirePostDate: DateTime.parse(json['campfirePostDate'] as String),
      campfireUpdatedDate: DateTime.parse(
        json['campfireUpdatedDate'] as String,
      ),
      campfirePostAttachedImages:
          (json['campfirePostAttachedImages'] as List<dynamic>?)
              ?.map((e) => Uri.parse(e as String))
              .toList() ??
          const [],
      campfirePostType: $enumDecode(
        _$CampfirePostTypeEnumMap,
        json['campfirePostType'],
      ),
      campfirePostFavourites: (json['campfirePostFavourites'] as num).toInt(),
      campfirePostComments: (json['campfirePostComments'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CampfireDataToJson(_CampfireData instance) =>
    <String, dynamic>{
      'campfireId': instance.campfireId,
      'campfireHeader': instance.campfireHeader,
      'campfireBody': instance.campfireBody,
      'campfirePostDate': instance.campfirePostDate.toIso8601String(),
      'campfireUpdatedDate': instance.campfireUpdatedDate.toIso8601String(),
      'campfirePostAttachedImages': instance.campfirePostAttachedImages
          ?.map((e) => e.toString())
          .toList(),
      'campfirePostType': _$CampfirePostTypeEnumMap[instance.campfirePostType]!,
      'campfirePostFavourites': instance.campfirePostFavourites,
      'campfirePostComments': instance.campfirePostComments,
    };

const _$CampfirePostTypeEnumMap = {
  CampfirePostType.tripCampfirePost: 'tripCampfirePost',
  CampfirePostType.adventureCampfirePost: 'adventureCampfirePost',
};
