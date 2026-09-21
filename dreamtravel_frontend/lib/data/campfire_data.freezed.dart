// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campfire_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CampfireData {

 int get campfireId; String get campfireHeader; String get campfireBody; DateTime get campfirePostDate; DateTime get campfireUpdatedDate; List<Uri>? get campfirePostAttachedImages; CampfirePostType get campfirePostType; int get campfirePostFavourites; List<String> get campfirePostComments;
/// Create a copy of CampfireData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampfireDataCopyWith<CampfireData> get copyWith => _$CampfireDataCopyWithImpl<CampfireData>(this as CampfireData, _$identity);

  /// Serializes this CampfireData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampfireData&&(identical(other.campfireId, campfireId) || other.campfireId == campfireId)&&(identical(other.campfireHeader, campfireHeader) || other.campfireHeader == campfireHeader)&&(identical(other.campfireBody, campfireBody) || other.campfireBody == campfireBody)&&(identical(other.campfirePostDate, campfirePostDate) || other.campfirePostDate == campfirePostDate)&&(identical(other.campfireUpdatedDate, campfireUpdatedDate) || other.campfireUpdatedDate == campfireUpdatedDate)&&const DeepCollectionEquality().equals(other.campfirePostAttachedImages, campfirePostAttachedImages)&&(identical(other.campfirePostType, campfirePostType) || other.campfirePostType == campfirePostType)&&(identical(other.campfirePostFavourites, campfirePostFavourites) || other.campfirePostFavourites == campfirePostFavourites)&&const DeepCollectionEquality().equals(other.campfirePostComments, campfirePostComments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,campfireId,campfireHeader,campfireBody,campfirePostDate,campfireUpdatedDate,const DeepCollectionEquality().hash(campfirePostAttachedImages),campfirePostType,campfirePostFavourites,const DeepCollectionEquality().hash(campfirePostComments));

@override
String toString() {
  return 'CampfireData(campfireId: $campfireId, campfireHeader: $campfireHeader, campfireBody: $campfireBody, campfirePostDate: $campfirePostDate, campfireUpdatedDate: $campfireUpdatedDate, campfirePostAttachedImages: $campfirePostAttachedImages, campfirePostType: $campfirePostType, campfirePostFavourites: $campfirePostFavourites, campfirePostComments: $campfirePostComments)';
}


}

/// @nodoc
abstract mixin class $CampfireDataCopyWith<$Res>  {
  factory $CampfireDataCopyWith(CampfireData value, $Res Function(CampfireData) _then) = _$CampfireDataCopyWithImpl;
@useResult
$Res call({
 int campfireId, String campfireHeader, String campfireBody, DateTime campfirePostDate, DateTime campfireUpdatedDate, List<Uri>? campfirePostAttachedImages, CampfirePostType campfirePostType, int campfirePostFavourites, List<String> campfirePostComments
});




}
/// @nodoc
class _$CampfireDataCopyWithImpl<$Res>
    implements $CampfireDataCopyWith<$Res> {
  _$CampfireDataCopyWithImpl(this._self, this._then);

  final CampfireData _self;
  final $Res Function(CampfireData) _then;

/// Create a copy of CampfireData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? campfireId = null,Object? campfireHeader = null,Object? campfireBody = null,Object? campfirePostDate = null,Object? campfireUpdatedDate = null,Object? campfirePostAttachedImages = freezed,Object? campfirePostType = null,Object? campfirePostFavourites = null,Object? campfirePostComments = null,}) {
  return _then(_self.copyWith(
campfireId: null == campfireId ? _self.campfireId : campfireId // ignore: cast_nullable_to_non_nullable
as int,campfireHeader: null == campfireHeader ? _self.campfireHeader : campfireHeader // ignore: cast_nullable_to_non_nullable
as String,campfireBody: null == campfireBody ? _self.campfireBody : campfireBody // ignore: cast_nullable_to_non_nullable
as String,campfirePostDate: null == campfirePostDate ? _self.campfirePostDate : campfirePostDate // ignore: cast_nullable_to_non_nullable
as DateTime,campfireUpdatedDate: null == campfireUpdatedDate ? _self.campfireUpdatedDate : campfireUpdatedDate // ignore: cast_nullable_to_non_nullable
as DateTime,campfirePostAttachedImages: freezed == campfirePostAttachedImages ? _self.campfirePostAttachedImages : campfirePostAttachedImages // ignore: cast_nullable_to_non_nullable
as List<Uri>?,campfirePostType: null == campfirePostType ? _self.campfirePostType : campfirePostType // ignore: cast_nullable_to_non_nullable
as CampfirePostType,campfirePostFavourites: null == campfirePostFavourites ? _self.campfirePostFavourites : campfirePostFavourites // ignore: cast_nullable_to_non_nullable
as int,campfirePostComments: null == campfirePostComments ? _self.campfirePostComments : campfirePostComments // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [CampfireData].
extension CampfireDataPatterns on CampfireData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampfireData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampfireData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampfireData value)  $default,){
final _that = this;
switch (_that) {
case _CampfireData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampfireData value)?  $default,){
final _that = this;
switch (_that) {
case _CampfireData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int campfireId,  String campfireHeader,  String campfireBody,  DateTime campfirePostDate,  DateTime campfireUpdatedDate,  List<Uri>? campfirePostAttachedImages,  CampfirePostType campfirePostType,  int campfirePostFavourites,  List<String> campfirePostComments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampfireData() when $default != null:
return $default(_that.campfireId,_that.campfireHeader,_that.campfireBody,_that.campfirePostDate,_that.campfireUpdatedDate,_that.campfirePostAttachedImages,_that.campfirePostType,_that.campfirePostFavourites,_that.campfirePostComments);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int campfireId,  String campfireHeader,  String campfireBody,  DateTime campfirePostDate,  DateTime campfireUpdatedDate,  List<Uri>? campfirePostAttachedImages,  CampfirePostType campfirePostType,  int campfirePostFavourites,  List<String> campfirePostComments)  $default,) {final _that = this;
switch (_that) {
case _CampfireData():
return $default(_that.campfireId,_that.campfireHeader,_that.campfireBody,_that.campfirePostDate,_that.campfireUpdatedDate,_that.campfirePostAttachedImages,_that.campfirePostType,_that.campfirePostFavourites,_that.campfirePostComments);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int campfireId,  String campfireHeader,  String campfireBody,  DateTime campfirePostDate,  DateTime campfireUpdatedDate,  List<Uri>? campfirePostAttachedImages,  CampfirePostType campfirePostType,  int campfirePostFavourites,  List<String> campfirePostComments)?  $default,) {final _that = this;
switch (_that) {
case _CampfireData() when $default != null:
return $default(_that.campfireId,_that.campfireHeader,_that.campfireBody,_that.campfirePostDate,_that.campfireUpdatedDate,_that.campfirePostAttachedImages,_that.campfirePostType,_that.campfirePostFavourites,_that.campfirePostComments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CampfireData implements CampfireData {
  const _CampfireData({required this.campfireId, required this.campfireHeader, required this.campfireBody, required this.campfirePostDate, required this.campfireUpdatedDate, final  List<Uri>? campfirePostAttachedImages = const [], required this.campfirePostType, required this.campfirePostFavourites, required final  List<String> campfirePostComments}): _campfirePostAttachedImages = campfirePostAttachedImages,_campfirePostComments = campfirePostComments;
  factory _CampfireData.fromJson(Map<String, dynamic> json) => _$CampfireDataFromJson(json);

@override final  int campfireId;
@override final  String campfireHeader;
@override final  String campfireBody;
@override final  DateTime campfirePostDate;
@override final  DateTime campfireUpdatedDate;
 final  List<Uri>? _campfirePostAttachedImages;
@override@JsonKey() List<Uri>? get campfirePostAttachedImages {
  final value = _campfirePostAttachedImages;
  if (value == null) return null;
  if (_campfirePostAttachedImages is EqualUnmodifiableListView) return _campfirePostAttachedImages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  CampfirePostType campfirePostType;
@override final  int campfirePostFavourites;
 final  List<String> _campfirePostComments;
@override List<String> get campfirePostComments {
  if (_campfirePostComments is EqualUnmodifiableListView) return _campfirePostComments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_campfirePostComments);
}


/// Create a copy of CampfireData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampfireDataCopyWith<_CampfireData> get copyWith => __$CampfireDataCopyWithImpl<_CampfireData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CampfireDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampfireData&&(identical(other.campfireId, campfireId) || other.campfireId == campfireId)&&(identical(other.campfireHeader, campfireHeader) || other.campfireHeader == campfireHeader)&&(identical(other.campfireBody, campfireBody) || other.campfireBody == campfireBody)&&(identical(other.campfirePostDate, campfirePostDate) || other.campfirePostDate == campfirePostDate)&&(identical(other.campfireUpdatedDate, campfireUpdatedDate) || other.campfireUpdatedDate == campfireUpdatedDate)&&const DeepCollectionEquality().equals(other._campfirePostAttachedImages, _campfirePostAttachedImages)&&(identical(other.campfirePostType, campfirePostType) || other.campfirePostType == campfirePostType)&&(identical(other.campfirePostFavourites, campfirePostFavourites) || other.campfirePostFavourites == campfirePostFavourites)&&const DeepCollectionEquality().equals(other._campfirePostComments, _campfirePostComments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,campfireId,campfireHeader,campfireBody,campfirePostDate,campfireUpdatedDate,const DeepCollectionEquality().hash(_campfirePostAttachedImages),campfirePostType,campfirePostFavourites,const DeepCollectionEquality().hash(_campfirePostComments));

@override
String toString() {
  return 'CampfireData(campfireId: $campfireId, campfireHeader: $campfireHeader, campfireBody: $campfireBody, campfirePostDate: $campfirePostDate, campfireUpdatedDate: $campfireUpdatedDate, campfirePostAttachedImages: $campfirePostAttachedImages, campfirePostType: $campfirePostType, campfirePostFavourites: $campfirePostFavourites, campfirePostComments: $campfirePostComments)';
}


}

/// @nodoc
abstract mixin class _$CampfireDataCopyWith<$Res> implements $CampfireDataCopyWith<$Res> {
  factory _$CampfireDataCopyWith(_CampfireData value, $Res Function(_CampfireData) _then) = __$CampfireDataCopyWithImpl;
@override @useResult
$Res call({
 int campfireId, String campfireHeader, String campfireBody, DateTime campfirePostDate, DateTime campfireUpdatedDate, List<Uri>? campfirePostAttachedImages, CampfirePostType campfirePostType, int campfirePostFavourites, List<String> campfirePostComments
});




}
/// @nodoc
class __$CampfireDataCopyWithImpl<$Res>
    implements _$CampfireDataCopyWith<$Res> {
  __$CampfireDataCopyWithImpl(this._self, this._then);

  final _CampfireData _self;
  final $Res Function(_CampfireData) _then;

/// Create a copy of CampfireData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? campfireId = null,Object? campfireHeader = null,Object? campfireBody = null,Object? campfirePostDate = null,Object? campfireUpdatedDate = null,Object? campfirePostAttachedImages = freezed,Object? campfirePostType = null,Object? campfirePostFavourites = null,Object? campfirePostComments = null,}) {
  return _then(_CampfireData(
campfireId: null == campfireId ? _self.campfireId : campfireId // ignore: cast_nullable_to_non_nullable
as int,campfireHeader: null == campfireHeader ? _self.campfireHeader : campfireHeader // ignore: cast_nullable_to_non_nullable
as String,campfireBody: null == campfireBody ? _self.campfireBody : campfireBody // ignore: cast_nullable_to_non_nullable
as String,campfirePostDate: null == campfirePostDate ? _self.campfirePostDate : campfirePostDate // ignore: cast_nullable_to_non_nullable
as DateTime,campfireUpdatedDate: null == campfireUpdatedDate ? _self.campfireUpdatedDate : campfireUpdatedDate // ignore: cast_nullable_to_non_nullable
as DateTime,campfirePostAttachedImages: freezed == campfirePostAttachedImages ? _self._campfirePostAttachedImages : campfirePostAttachedImages // ignore: cast_nullable_to_non_nullable
as List<Uri>?,campfirePostType: null == campfirePostType ? _self.campfirePostType : campfirePostType // ignore: cast_nullable_to_non_nullable
as CampfirePostType,campfirePostFavourites: null == campfirePostFavourites ? _self.campfirePostFavourites : campfirePostFavourites // ignore: cast_nullable_to_non_nullable
as int,campfirePostComments: null == campfirePostComments ? _self._campfirePostComments : campfirePostComments // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
