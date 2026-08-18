// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_booking_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TourBookingData {

  int get tourBookingNumber;

  String get fullName;

  DateTime get tourStartTime;

  String get tourDate;

  DateTime get tourEndTime;

  String get tourGuideFullName;

  int get tourGroup;

  String get tourLocation;

  bool get languageInterpreterIncluded;

  /// Create a copy of TourBookingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TourBookingDataCopyWith<TourBookingData> get copyWith =>
      _$TourBookingDataCopyWithImpl<TourBookingData>(
          this as TourBookingData, _$identity);

  /// Serializes this TourBookingData to a JSON map.
  Map<String, dynamic> toJson();


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TourBookingData &&
            (identical(other.tourBookingNumber, tourBookingNumber) ||
                other.tourBookingNumber == tourBookingNumber) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.tourStartTime, tourStartTime) ||
                other.tourStartTime == tourStartTime) &&
            (identical(other.tourDate, tourDate) ||
                other.tourDate == tourDate) &&
            (identical(other.tourEndTime, tourEndTime) ||
                other.tourEndTime == tourEndTime) &&
            (identical(other.tourGuideFullName, tourGuideFullName) ||
                other.tourGuideFullName == tourGuideFullName) &&
            (identical(other.tourGroup, tourGroup) ||
                other.tourGroup == tourGroup) &&
            (identical(other.tourLocation, tourLocation) ||
                other.tourLocation == tourLocation) && (identical(
            other.languageInterpreterIncluded, languageInterpreterIncluded) ||
            other.languageInterpreterIncluded == languageInterpreterIncluded));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(
          runtimeType,
          tourBookingNumber,
          fullName,
          tourStartTime,
          tourDate,
          tourEndTime,
          tourGuideFullName,
          tourGroup,
          tourLocation,
          languageInterpreterIncluded);

  @override
  String toString() {
    return 'TourBookingData(tourBookingNumber: $tourBookingNumber, fullName: $fullName, tourStartTime: $tourStartTime, tourDate: $tourDate, tourEndTime: $tourEndTime, tourGuideFullName: $tourGuideFullName, tourGroup: $tourGroup, tourLocation: $tourLocation, languageInterpreterIncluded: $languageInterpreterIncluded)';
  }


}

/// @nodoc
abstract mixin class $TourBookingDataCopyWith<$Res> {
  factory $TourBookingDataCopyWith(TourBookingData value,
      $Res Function(TourBookingData) _then) = _$TourBookingDataCopyWithImpl;

  @useResult
  $Res call({
    int tourBookingNumber, String fullName, DateTime tourStartTime, String tourDate, DateTime tourEndTime, String tourGuideFullName, int tourGroup, String tourLocation, bool languageInterpreterIncluded
  });


}

/// @nodoc
class _$TourBookingDataCopyWithImpl<$Res>
    implements $TourBookingDataCopyWith<$Res> {
  _$TourBookingDataCopyWithImpl(this._self, this._then);

  final TourBookingData _self;
  final $Res Function(TourBookingData) _then;

  /// Create a copy of TourBookingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call(
      {Object? tourBookingNumber = null, Object? fullName = null, Object? tourStartTime = null, Object? tourDate = null, Object? tourEndTime = null, Object? tourGuideFullName = null, Object? tourGroup = null, Object? tourLocation = null, Object? languageInterpreterIncluded = null,}) {
    return _then(_self.copyWith(
      tourBookingNumber: null == tourBookingNumber
          ? _self.tourBookingNumber
          : tourBookingNumber // ignore: cast_nullable_to_non_nullable
      as int,
      fullName: null == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
      as String,
      tourStartTime: null == tourStartTime
          ? _self.tourStartTime
          : tourStartTime // ignore: cast_nullable_to_non_nullable
      as DateTime,
      tourDate: null == tourDate
          ? _self.tourDate
          : tourDate // ignore: cast_nullable_to_non_nullable
      as String,
      tourEndTime: null == tourEndTime
          ? _self.tourEndTime
          : tourEndTime // ignore: cast_nullable_to_non_nullable
      as DateTime,
      tourGuideFullName: null == tourGuideFullName
          ? _self.tourGuideFullName
          : tourGuideFullName // ignore: cast_nullable_to_non_nullable
      as String,
      tourGroup: null == tourGroup
          ? _self.tourGroup
          : tourGroup // ignore: cast_nullable_to_non_nullable
      as int,
      tourLocation: null == tourLocation
          ? _self.tourLocation
          : tourLocation // ignore: cast_nullable_to_non_nullable
      as String,
      languageInterpreterIncluded: null == languageInterpreterIncluded
          ? _self.languageInterpreterIncluded
          : languageInterpreterIncluded // ignore: cast_nullable_to_non_nullable
      as bool,
    ));
  }

}


/// Adds pattern-matching-related methods to [TourBookingData].
extension TourBookingDataPatterns on TourBookingData {
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

  @optionalTypeArgs TResult maybeMap

  <

  TResult

  extends

  Object?

  >

  (

  TResult Function( _TourBookingData value)? $default,{required TResult orElse(),}){
  final _that = this;
  switch (_that) {
  case _TourBookingData() when $default != null:
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

  @optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TourBookingData value) $default,){
  final _that = this;
  switch (_that) {
  case _TourBookingData():
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

  @optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TourBookingData value)? $default,){
  final _that = this;
  switch (_that) {
  case _TourBookingData() when $default != null:
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

  @optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int tourBookingNumber, String fullName, DateTime tourStartTime, String tourDate, DateTime tourEndTime, String tourGuideFullName, int tourGroup, String tourLocation, bool languageInterpreterIncluded)? $default,{required TResult orElse(),}) {final _that = this;
  switch (_that) {
  case _TourBookingData() when $default != null:
  return $default(_that.tourBookingNumber,_that.fullName,_that.tourStartTime,_that.tourDate,_that.tourEndTime,_that.tourGuideFullName,_that.tourGroup,_that.tourLocation,_that.languageInterpreterIncluded);case _:
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

  @optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int tourBookingNumber, String fullName, DateTime tourStartTime, String tourDate, DateTime tourEndTime, String tourGuideFullName, int tourGroup, String tourLocation, bool languageInterpreterIncluded) $default,) {final _that = this;
  switch (_that) {
  case _TourBookingData():
  return $default(_that.tourBookingNumber,_that.fullName,_that.tourStartTime,_that.tourDate,_that.tourEndTime,_that.tourGuideFullName,_that.tourGroup,_that.tourLocation,_that.languageInterpreterIncluded);case _:
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

  @optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int tourBookingNumber, String fullName, DateTime tourStartTime, String tourDate, DateTime tourEndTime, String tourGuideFullName, int tourGroup, String tourLocation, bool languageInterpreterIncluded)? $default,) {final _that = this;
  switch (_that) {
  case _TourBookingData() when $default != null:
  return $default(_that.tourBookingNumber,_that.fullName,_that.tourStartTime,_that.tourDate,_that.tourEndTime,_that.tourGuideFullName,_that.tourGroup,_that.tourLocation,_that.languageInterpreterIncluded);case _:
  return null;

  }
  }

}

/// @nodoc
@JsonSerializable()
class _TourBookingData implements TourBookingData {
  const _TourBookingData(
      {required this.tourBookingNumber, required this.fullName, required this.tourStartTime, required this.tourDate, required this.tourEndTime, required this.tourGuideFullName, required this.tourGroup, required this.tourLocation, required this.languageInterpreterIncluded});

  factory _TourBookingData.fromJson(Map<String, dynamic> json) =>
      _$TourBookingDataFromJson(json);

  @override final int tourBookingNumber;
  @override final String fullName;
  @override final DateTime tourStartTime;
  @override final String tourDate;
  @override final DateTime tourEndTime;
  @override final String tourGuideFullName;
  @override final int tourGroup;
  @override final String tourLocation;
  @override final bool languageInterpreterIncluded;

  /// Create a copy of TourBookingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TourBookingDataCopyWith<_TourBookingData> get copyWith =>
      __$TourBookingDataCopyWithImpl<_TourBookingData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TourBookingDataToJson(this,);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TourBookingData &&
            (identical(other.tourBookingNumber, tourBookingNumber) ||
                other.tourBookingNumber == tourBookingNumber) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.tourStartTime, tourStartTime) ||
                other.tourStartTime == tourStartTime) &&
            (identical(other.tourDate, tourDate) ||
                other.tourDate == tourDate) &&
            (identical(other.tourEndTime, tourEndTime) ||
                other.tourEndTime == tourEndTime) &&
            (identical(other.tourGuideFullName, tourGuideFullName) ||
                other.tourGuideFullName == tourGuideFullName) &&
            (identical(other.tourGroup, tourGroup) ||
                other.tourGroup == tourGroup) &&
            (identical(other.tourLocation, tourLocation) ||
                other.tourLocation == tourLocation) && (identical(
            other.languageInterpreterIncluded, languageInterpreterIncluded) ||
            other.languageInterpreterIncluded == languageInterpreterIncluded));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(
          runtimeType,
          tourBookingNumber,
          fullName,
          tourStartTime,
          tourDate,
          tourEndTime,
          tourGuideFullName,
          tourGroup,
          tourLocation,
          languageInterpreterIncluded);

  @override
  String toString() {
    return 'TourBookingData(tourBookingNumber: $tourBookingNumber, fullName: $fullName, tourStartTime: $tourStartTime, tourDate: $tourDate, tourEndTime: $tourEndTime, tourGuideFullName: $tourGuideFullName, tourGroup: $tourGroup, tourLocation: $tourLocation, languageInterpreterIncluded: $languageInterpreterIncluded)';
  }


}

/// @nodoc
abstract mixin class _$TourBookingDataCopyWith<$Res>
    implements $TourBookingDataCopyWith<$Res> {
  factory _$TourBookingDataCopyWith(_TourBookingData value,
      $Res Function(_TourBookingData) _then) = __$TourBookingDataCopyWithImpl;

  @override
  @useResult
  $Res call({
    int tourBookingNumber, String fullName, DateTime tourStartTime, String tourDate, DateTime tourEndTime, String tourGuideFullName, int tourGroup, String tourLocation, bool languageInterpreterIncluded
  });


}

/// @nodoc
class __$TourBookingDataCopyWithImpl<$Res>
    implements _$TourBookingDataCopyWith<$Res> {
  __$TourBookingDataCopyWithImpl(this._self, this._then);

  final _TourBookingData _self;
  final $Res Function(_TourBookingData) _then;

  /// Create a copy of TourBookingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call(
      {Object? tourBookingNumber = null, Object? fullName = null, Object? tourStartTime = null, Object? tourDate = null, Object? tourEndTime = null, Object? tourGuideFullName = null, Object? tourGroup = null, Object? tourLocation = null, Object? languageInterpreterIncluded = null,}) {
    return _then(_TourBookingData(
      tourBookingNumber: null == tourBookingNumber
          ? _self.tourBookingNumber
          : tourBookingNumber // ignore: cast_nullable_to_non_nullable
      as int,
      fullName: null == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
      as String,
      tourStartTime: null == tourStartTime
          ? _self.tourStartTime
          : tourStartTime // ignore: cast_nullable_to_non_nullable
      as DateTime,
      tourDate: null == tourDate
          ? _self.tourDate
          : tourDate // ignore: cast_nullable_to_non_nullable
      as String,
      tourEndTime: null == tourEndTime
          ? _self.tourEndTime
          : tourEndTime // ignore: cast_nullable_to_non_nullable
      as DateTime,
      tourGuideFullName: null == tourGuideFullName
          ? _self.tourGuideFullName
          : tourGuideFullName // ignore: cast_nullable_to_non_nullable
      as String,
      tourGroup: null == tourGroup
          ? _self.tourGroup
          : tourGroup // ignore: cast_nullable_to_non_nullable
      as int,
      tourLocation: null == tourLocation
          ? _self.tourLocation
          : tourLocation // ignore: cast_nullable_to_non_nullable
      as String,
      languageInterpreterIncluded: null == languageInterpreterIncluded
          ? _self.languageInterpreterIncluded
          : languageInterpreterIncluded // ignore: cast_nullable_to_non_nullable
      as bool,
    ));
  }


}

// dart format on
