// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserData {

 String get userId; String get userFirstName; String get userLastName; String get userGenderIdentity; int get userAge; String get userStreetAddress; String get userCity; String get userCountry; String get userPostCode; String? get userNearestAirport; List<TravelData>? get userFavouriteLocations; List<CampfireData>? get userFavouriteSocialPosts; List<String>? get userSocialComments;
/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDataCopyWith<UserData> get copyWith => _$UserDataCopyWithImpl<UserData>(this as UserData, _$identity);

  /// Serializes this UserData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserData&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userFirstName, userFirstName) || other.userFirstName == userFirstName)&&(identical(other.userLastName, userLastName) || other.userLastName == userLastName)&&(identical(other.userGenderIdentity, userGenderIdentity) || other.userGenderIdentity == userGenderIdentity)&&(identical(other.userAge, userAge) || other.userAge == userAge)&&(identical(other.userStreetAddress, userStreetAddress) || other.userStreetAddress == userStreetAddress)&&(identical(other.userCity, userCity) || other.userCity == userCity)&&(identical(other.userCountry, userCountry) || other.userCountry == userCountry)&&(identical(other.userPostCode, userPostCode) || other.userPostCode == userPostCode)&&(identical(other.userNearestAirport, userNearestAirport) || other.userNearestAirport == userNearestAirport)&&const DeepCollectionEquality().equals(other.userFavouriteLocations, userFavouriteLocations)&&const DeepCollectionEquality().equals(other.userFavouriteSocialPosts, userFavouriteSocialPosts)&&const DeepCollectionEquality().equals(other.userSocialComments, userSocialComments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,userFirstName,userLastName,userGenderIdentity,userAge,userStreetAddress,userCity,userCountry,userPostCode,userNearestAirport,const DeepCollectionEquality().hash(userFavouriteLocations),const DeepCollectionEquality().hash(userFavouriteSocialPosts),const DeepCollectionEquality().hash(userSocialComments));

@override
String toString() {
  return 'UserData(userId: $userId, userFirstName: $userFirstName, userLastName: $userLastName, userGenderIdentity: $userGenderIdentity, userAge: $userAge, userStreetAddress: $userStreetAddress, userCity: $userCity, userCountry: $userCountry, userPostCode: $userPostCode, userNearestAirport: $userNearestAirport, userFavouriteLocations: $userFavouriteLocations, userFavouriteSocialPosts: $userFavouriteSocialPosts, userSocialComments: $userSocialComments)';
}


}

/// @nodoc
abstract mixin class $UserDataCopyWith<$Res>  {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) _then) = _$UserDataCopyWithImpl;
@useResult
$Res call({
 String userId, String userFirstName, String userLastName, String userGenderIdentity, int userAge, String userStreetAddress, String userCity, String userCountry, String userPostCode, String? userNearestAirport, List<TravelData>? userFavouriteLocations, List<CampfireData>? userFavouriteSocialPosts, List<String>? userSocialComments
});




}
/// @nodoc
class _$UserDataCopyWithImpl<$Res>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._self, this._then);

  final UserData _self;
  final $Res Function(UserData) _then;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? userFirstName = null,Object? userLastName = null,Object? userGenderIdentity = null,Object? userAge = null,Object? userStreetAddress = null,Object? userCity = null,Object? userCountry = null,Object? userPostCode = null,Object? userNearestAirport = freezed,Object? userFavouriteLocations = freezed,Object? userFavouriteSocialPosts = freezed,Object? userSocialComments = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,userFirstName: null == userFirstName ? _self.userFirstName : userFirstName // ignore: cast_nullable_to_non_nullable
as String,userLastName: null == userLastName ? _self.userLastName : userLastName // ignore: cast_nullable_to_non_nullable
as String,userGenderIdentity: null == userGenderIdentity ? _self.userGenderIdentity : userGenderIdentity // ignore: cast_nullable_to_non_nullable
as String,userAge: null == userAge ? _self.userAge : userAge // ignore: cast_nullable_to_non_nullable
as int,userStreetAddress: null == userStreetAddress ? _self.userStreetAddress : userStreetAddress // ignore: cast_nullable_to_non_nullable
as String,userCity: null == userCity ? _self.userCity : userCity // ignore: cast_nullable_to_non_nullable
as String,userCountry: null == userCountry ? _self.userCountry : userCountry // ignore: cast_nullable_to_non_nullable
as String,userPostCode: null == userPostCode ? _self.userPostCode : userPostCode // ignore: cast_nullable_to_non_nullable
as String,userNearestAirport: freezed == userNearestAirport ? _self.userNearestAirport : userNearestAirport // ignore: cast_nullable_to_non_nullable
as String?,userFavouriteLocations: freezed == userFavouriteLocations ? _self.userFavouriteLocations : userFavouriteLocations // ignore: cast_nullable_to_non_nullable
as List<TravelData>?,userFavouriteSocialPosts: freezed == userFavouriteSocialPosts ? _self.userFavouriteSocialPosts : userFavouriteSocialPosts // ignore: cast_nullable_to_non_nullable
as List<CampfireData>?,userSocialComments: freezed == userSocialComments ? _self.userSocialComments : userSocialComments // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserData].
extension UserDataPatterns on UserData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserData value)  $default,){
final _that = this;
switch (_that) {
case _UserData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserData value)?  $default,){
final _that = this;
switch (_that) {
case _UserData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String userFirstName,  String userLastName,  String userGenderIdentity,  int userAge,  String userStreetAddress,  String userCity,  String userCountry,  String userPostCode,  String? userNearestAirport,  List<TravelData>? userFavouriteLocations,  List<CampfireData>? userFavouriteSocialPosts,  List<String>? userSocialComments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserData() when $default != null:
return $default(_that.userId,_that.userFirstName,_that.userLastName,_that.userGenderIdentity,_that.userAge,_that.userStreetAddress,_that.userCity,_that.userCountry,_that.userPostCode,_that.userNearestAirport,_that.userFavouriteLocations,_that.userFavouriteSocialPosts,_that.userSocialComments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String userFirstName,  String userLastName,  String userGenderIdentity,  int userAge,  String userStreetAddress,  String userCity,  String userCountry,  String userPostCode,  String? userNearestAirport,  List<TravelData>? userFavouriteLocations,  List<CampfireData>? userFavouriteSocialPosts,  List<String>? userSocialComments)  $default,) {final _that = this;
switch (_that) {
case _UserData():
return $default(_that.userId,_that.userFirstName,_that.userLastName,_that.userGenderIdentity,_that.userAge,_that.userStreetAddress,_that.userCity,_that.userCountry,_that.userPostCode,_that.userNearestAirport,_that.userFavouriteLocations,_that.userFavouriteSocialPosts,_that.userSocialComments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String userFirstName,  String userLastName,  String userGenderIdentity,  int userAge,  String userStreetAddress,  String userCity,  String userCountry,  String userPostCode,  String? userNearestAirport,  List<TravelData>? userFavouriteLocations,  List<CampfireData>? userFavouriteSocialPosts,  List<String>? userSocialComments)?  $default,) {final _that = this;
switch (_that) {
case _UserData() when $default != null:
return $default(_that.userId,_that.userFirstName,_that.userLastName,_that.userGenderIdentity,_that.userAge,_that.userStreetAddress,_that.userCity,_that.userCountry,_that.userPostCode,_that.userNearestAirport,_that.userFavouriteLocations,_that.userFavouriteSocialPosts,_that.userSocialComments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserData implements UserData {
  const _UserData({required this.userId, required this.userFirstName, required this.userLastName, required this.userGenderIdentity, required this.userAge, required this.userStreetAddress, required this.userCity, required this.userCountry, required this.userPostCode, this.userNearestAirport = 'Unknown Airport', final  List<TravelData>? userFavouriteLocations = const [], final  List<CampfireData>? userFavouriteSocialPosts = const [], final  List<String>? userSocialComments = const []}): _userFavouriteLocations = userFavouriteLocations,_userFavouriteSocialPosts = userFavouriteSocialPosts,_userSocialComments = userSocialComments;
  factory _UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);

@override final  String userId;
@override final  String userFirstName;
@override final  String userLastName;
@override final  String userGenderIdentity;
@override final  int userAge;
@override final  String userStreetAddress;
@override final  String userCity;
@override final  String userCountry;
@override final  String userPostCode;
@override@JsonKey() final  String? userNearestAirport;
 final  List<TravelData>? _userFavouriteLocations;
@override@JsonKey() List<TravelData>? get userFavouriteLocations {
  final value = _userFavouriteLocations;
  if (value == null) return null;
  if (_userFavouriteLocations is EqualUnmodifiableListView) return _userFavouriteLocations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<CampfireData>? _userFavouriteSocialPosts;
@override@JsonKey() List<CampfireData>? get userFavouriteSocialPosts {
  final value = _userFavouriteSocialPosts;
  if (value == null) return null;
  if (_userFavouriteSocialPosts is EqualUnmodifiableListView) return _userFavouriteSocialPosts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _userSocialComments;
@override@JsonKey() List<String>? get userSocialComments {
  final value = _userSocialComments;
  if (value == null) return null;
  if (_userSocialComments is EqualUnmodifiableListView) return _userSocialComments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDataCopyWith<_UserData> get copyWith => __$UserDataCopyWithImpl<_UserData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserData&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userFirstName, userFirstName) || other.userFirstName == userFirstName)&&(identical(other.userLastName, userLastName) || other.userLastName == userLastName)&&(identical(other.userGenderIdentity, userGenderIdentity) || other.userGenderIdentity == userGenderIdentity)&&(identical(other.userAge, userAge) || other.userAge == userAge)&&(identical(other.userStreetAddress, userStreetAddress) || other.userStreetAddress == userStreetAddress)&&(identical(other.userCity, userCity) || other.userCity == userCity)&&(identical(other.userCountry, userCountry) || other.userCountry == userCountry)&&(identical(other.userPostCode, userPostCode) || other.userPostCode == userPostCode)&&(identical(other.userNearestAirport, userNearestAirport) || other.userNearestAirport == userNearestAirport)&&const DeepCollectionEquality().equals(other._userFavouriteLocations, _userFavouriteLocations)&&const DeepCollectionEquality().equals(other._userFavouriteSocialPosts, _userFavouriteSocialPosts)&&const DeepCollectionEquality().equals(other._userSocialComments, _userSocialComments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,userFirstName,userLastName,userGenderIdentity,userAge,userStreetAddress,userCity,userCountry,userPostCode,userNearestAirport,const DeepCollectionEquality().hash(_userFavouriteLocations),const DeepCollectionEquality().hash(_userFavouriteSocialPosts),const DeepCollectionEquality().hash(_userSocialComments));

@override
String toString() {
  return 'UserData(userId: $userId, userFirstName: $userFirstName, userLastName: $userLastName, userGenderIdentity: $userGenderIdentity, userAge: $userAge, userStreetAddress: $userStreetAddress, userCity: $userCity, userCountry: $userCountry, userPostCode: $userPostCode, userNearestAirport: $userNearestAirport, userFavouriteLocations: $userFavouriteLocations, userFavouriteSocialPosts: $userFavouriteSocialPosts, userSocialComments: $userSocialComments)';
}


}

/// @nodoc
abstract mixin class _$UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) _then) = __$UserDataCopyWithImpl;
@override @useResult
$Res call({
 String userId, String userFirstName, String userLastName, String userGenderIdentity, int userAge, String userStreetAddress, String userCity, String userCountry, String userPostCode, String? userNearestAirport, List<TravelData>? userFavouriteLocations, List<CampfireData>? userFavouriteSocialPosts, List<String>? userSocialComments
});




}
/// @nodoc
class __$UserDataCopyWithImpl<$Res>
    implements _$UserDataCopyWith<$Res> {
  __$UserDataCopyWithImpl(this._self, this._then);

  final _UserData _self;
  final $Res Function(_UserData) _then;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? userFirstName = null,Object? userLastName = null,Object? userGenderIdentity = null,Object? userAge = null,Object? userStreetAddress = null,Object? userCity = null,Object? userCountry = null,Object? userPostCode = null,Object? userNearestAirport = freezed,Object? userFavouriteLocations = freezed,Object? userFavouriteSocialPosts = freezed,Object? userSocialComments = freezed,}) {
  return _then(_UserData(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,userFirstName: null == userFirstName ? _self.userFirstName : userFirstName // ignore: cast_nullable_to_non_nullable
as String,userLastName: null == userLastName ? _self.userLastName : userLastName // ignore: cast_nullable_to_non_nullable
as String,userGenderIdentity: null == userGenderIdentity ? _self.userGenderIdentity : userGenderIdentity // ignore: cast_nullable_to_non_nullable
as String,userAge: null == userAge ? _self.userAge : userAge // ignore: cast_nullable_to_non_nullable
as int,userStreetAddress: null == userStreetAddress ? _self.userStreetAddress : userStreetAddress // ignore: cast_nullable_to_non_nullable
as String,userCity: null == userCity ? _self.userCity : userCity // ignore: cast_nullable_to_non_nullable
as String,userCountry: null == userCountry ? _self.userCountry : userCountry // ignore: cast_nullable_to_non_nullable
as String,userPostCode: null == userPostCode ? _self.userPostCode : userPostCode // ignore: cast_nullable_to_non_nullable
as String,userNearestAirport: freezed == userNearestAirport ? _self.userNearestAirport : userNearestAirport // ignore: cast_nullable_to_non_nullable
as String?,userFavouriteLocations: freezed == userFavouriteLocations ? _self._userFavouriteLocations : userFavouriteLocations // ignore: cast_nullable_to_non_nullable
as List<TravelData>?,userFavouriteSocialPosts: freezed == userFavouriteSocialPosts ? _self._userFavouriteSocialPosts : userFavouriteSocialPosts // ignore: cast_nullable_to_non_nullable
as List<CampfireData>?,userSocialComments: freezed == userSocialComments ? _self._userSocialComments : userSocialComments // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
