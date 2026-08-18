// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TravelData {

  int get travelId;

  String get travelCity;

  String get travelCountry;

  DateTime get travelStartDate;

  DateTime get travelEndDate;

  String? get travelImageUrl;

  bool get travelDataHasImage;

  double get travelTotalCost;

  bool get travelBookingIncludesFlight;

  bool get travelBookingIncludesHotel;

  bool get travelBookingIncludesTour;

  /// Create a copy of TravelData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TravelDataCopyWith<TravelData> get copyWith =>
      _$TravelDataCopyWithImpl<TravelData>(this as TravelData, _$identity);

  /// Serializes this TravelData to a JSON map.
  Map<String, dynamic> toJson();


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TravelData &&
            (identical(other.travelId, travelId) ||
                other.travelId == travelId) &&
            (identical(other.travelCity, travelCity) ||
                other.travelCity == travelCity) &&
            (identical(other.travelCountry, travelCountry) ||
                other.travelCountry == travelCountry) &&
            (identical(other.travelStartDate, travelStartDate) ||
                other.travelStartDate == travelStartDate) &&
            (identical(other.travelEndDate, travelEndDate) ||
                other.travelEndDate == travelEndDate) &&
            (identical(other.travelImageUrl, travelImageUrl) ||
                other.travelImageUrl == travelImageUrl) &&
            (identical(other.travelDataHasImage, travelDataHasImage) ||
                other.travelDataHasImage == travelDataHasImage) &&
            (identical(other.travelTotalCost, travelTotalCost) ||
                other.travelTotalCost == travelTotalCost) && (identical(
            other.travelBookingIncludesFlight, travelBookingIncludesFlight) ||
            other.travelBookingIncludesFlight == travelBookingIncludesFlight) &&
            (identical(
                other.travelBookingIncludesHotel, travelBookingIncludesHotel) ||
                other.travelBookingIncludesHotel ==
                    travelBookingIncludesHotel) && (identical(
            other.travelBookingIncludesTour, travelBookingIncludesTour) ||
            other.travelBookingIncludesTour == travelBookingIncludesTour));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(
          runtimeType,
          travelId,
          travelCity,
          travelCountry,
          travelStartDate,
          travelEndDate,
          travelImageUrl,
          travelDataHasImage,
          travelTotalCost,
          travelBookingIncludesFlight,
          travelBookingIncludesHotel,
          travelBookingIncludesTour);

  @override
  String toString() {
    return 'TravelData(travelId: $travelId, travelCity: $travelCity, travelCountry: $travelCountry, travelStartDate: $travelStartDate, travelEndDate: $travelEndDate, travelImageUrl: $travelImageUrl, travelDataHasImage: $travelDataHasImage, travelTotalCost: $travelTotalCost, travelBookingIncludesFlight: $travelBookingIncludesFlight, travelBookingIncludesHotel: $travelBookingIncludesHotel, travelBookingIncludesTour: $travelBookingIncludesTour)';
  }


}

/// @nodoc
abstract mixin class $TravelDataCopyWith<$Res> {
  factory $TravelDataCopyWith(TravelData value,
      $Res Function(TravelData) _then) = _$TravelDataCopyWithImpl;

  @useResult
  $Res call({
    int travelId, String travelCity, String travelCountry, DateTime travelStartDate, DateTime travelEndDate, String? travelImageUrl, bool travelDataHasImage, double travelTotalCost, bool travelBookingIncludesFlight, bool travelBookingIncludesHotel, bool travelBookingIncludesTour
  });


}

/// @nodoc
class _$TravelDataCopyWithImpl<$Res>
    implements $TravelDataCopyWith<$Res> {
  _$TravelDataCopyWithImpl(this._self, this._then);

  final TravelData _self;
  final $Res Function(TravelData) _then;

  /// Create a copy of TravelData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call(
      {Object? travelId = null, Object? travelCity = null, Object? travelCountry = null, Object? travelStartDate = null, Object? travelEndDate = null, Object? travelImageUrl = freezed, Object? travelDataHasImage = null, Object? travelTotalCost = null, Object? travelBookingIncludesFlight = null, Object? travelBookingIncludesHotel = null, Object? travelBookingIncludesTour = null,}) {
    return _then(_self.copyWith(
      travelId: null == travelId
          ? _self.travelId
          : travelId // ignore: cast_nullable_to_non_nullable
      as int,
      travelCity: null == travelCity
          ? _self.travelCity
          : travelCity // ignore: cast_nullable_to_non_nullable
      as String,
      travelCountry: null == travelCountry
          ? _self.travelCountry
          : travelCountry // ignore: cast_nullable_to_non_nullable
      as String,
      travelStartDate: null == travelStartDate
          ? _self.travelStartDate
          : travelStartDate // ignore: cast_nullable_to_non_nullable
      as DateTime,
      travelEndDate: null == travelEndDate
          ? _self.travelEndDate
          : travelEndDate // ignore: cast_nullable_to_non_nullable
      as DateTime,
      travelImageUrl: freezed == travelImageUrl
          ? _self.travelImageUrl
          : travelImageUrl // ignore: cast_nullable_to_non_nullable
      as String?,
      travelDataHasImage: null == travelDataHasImage
          ? _self.travelDataHasImage
          : travelDataHasImage // ignore: cast_nullable_to_non_nullable
      as bool,
      travelTotalCost: null == travelTotalCost
          ? _self.travelTotalCost
          : travelTotalCost // ignore: cast_nullable_to_non_nullable
      as double,
      travelBookingIncludesFlight: null == travelBookingIncludesFlight
          ? _self.travelBookingIncludesFlight
          : travelBookingIncludesFlight // ignore: cast_nullable_to_non_nullable
      as bool,
      travelBookingIncludesHotel: null == travelBookingIncludesHotel
          ? _self.travelBookingIncludesHotel
          : travelBookingIncludesHotel // ignore: cast_nullable_to_non_nullable
      as bool,
      travelBookingIncludesTour: null == travelBookingIncludesTour
          ? _self.travelBookingIncludesTour
          : travelBookingIncludesTour // ignore: cast_nullable_to_non_nullable
      as bool,
    ));
  }

}


/// Adds pattern-matching-related methods to [TravelData].
extension TravelDataPatterns on TravelData {
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

  TResult Function( _TravelData value)? $default,{required TResult orElse(),}){
  final _that = this;
  switch (_that) {
  case _TravelData() when $default != null:
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

  @optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TravelData value) $default,){
  final _that = this;
  switch (_that) {
  case _TravelData():
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

  @optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TravelData value)? $default,){
  final _that = this;
  switch (_that) {
  case _TravelData() when $default != null:
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

  @optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int travelId, String travelCity, String travelCountry, DateTime travelStartDate, DateTime travelEndDate, String? travelImageUrl, bool travelDataHasImage, double travelTotalCost, bool travelBookingIncludesFlight, bool travelBookingIncludesHotel, bool travelBookingIncludesTour)? $default,{required TResult orElse(),}) {final _that = this;
  switch (_that) {
  case _TravelData() when $default != null:
  return $default(_that.travelId,_that.travelCity,_that.travelCountry,_that.travelStartDate,_that.travelEndDate,_that.travelImageUrl,_that.travelDataHasImage,_that.travelTotalCost,_that.travelBookingIncludesFlight,_that.travelBookingIncludesHotel,_that.travelBookingIncludesTour);case _:
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

  @optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int travelId, String travelCity, String travelCountry, DateTime travelStartDate, DateTime travelEndDate, String? travelImageUrl, bool travelDataHasImage, double travelTotalCost, bool travelBookingIncludesFlight, bool travelBookingIncludesHotel, bool travelBookingIncludesTour) $default,) {final _that = this;
  switch (_that) {
  case _TravelData():
  return $default(_that.travelId,_that.travelCity,_that.travelCountry,_that.travelStartDate,_that.travelEndDate,_that.travelImageUrl,_that.travelDataHasImage,_that.travelTotalCost,_that.travelBookingIncludesFlight,_that.travelBookingIncludesHotel,_that.travelBookingIncludesTour);case _:
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

  @optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int travelId, String travelCity, String travelCountry, DateTime travelStartDate, DateTime travelEndDate, String? travelImageUrl, bool travelDataHasImage, double travelTotalCost, bool travelBookingIncludesFlight, bool travelBookingIncludesHotel, bool travelBookingIncludesTour)? $default,) {final _that = this;
  switch (_that) {
  case _TravelData() when $default != null:
  return $default(_that.travelId,_that.travelCity,_that.travelCountry,_that.travelStartDate,_that.travelEndDate,_that.travelImageUrl,_that.travelDataHasImage,_that.travelTotalCost,_that.travelBookingIncludesFlight,_that.travelBookingIncludesHotel,_that.travelBookingIncludesTour);case _:
  return null;

  }
  }

}

/// @nodoc
@JsonSerializable()
class _TravelData implements TravelData {
  const _TravelData(
      {required this.travelId, required this.travelCity, required this.travelCountry, required this.travelStartDate, required this.travelEndDate, required this.travelImageUrl, required this.travelDataHasImage, required this.travelTotalCost, required this.travelBookingIncludesFlight, required this.travelBookingIncludesHotel, required this.travelBookingIncludesTour});

  factory _TravelData.fromJson(Map<String, dynamic> json) =>
      _$TravelDataFromJson(json);

  @override final int travelId;
  @override final String travelCity;
  @override final String travelCountry;
  @override final DateTime travelStartDate;
  @override final DateTime travelEndDate;
  @override final String? travelImageUrl;
  @override final bool travelDataHasImage;
  @override final double travelTotalCost;
  @override final bool travelBookingIncludesFlight;
  @override final bool travelBookingIncludesHotel;
  @override final bool travelBookingIncludesTour;

  /// Create a copy of TravelData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TravelDataCopyWith<_TravelData> get copyWith =>
      __$TravelDataCopyWithImpl<_TravelData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TravelDataToJson(this,);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TravelData &&
            (identical(other.travelId, travelId) ||
                other.travelId == travelId) &&
            (identical(other.travelCity, travelCity) ||
                other.travelCity == travelCity) &&
            (identical(other.travelCountry, travelCountry) ||
                other.travelCountry == travelCountry) &&
            (identical(other.travelStartDate, travelStartDate) ||
                other.travelStartDate == travelStartDate) &&
            (identical(other.travelEndDate, travelEndDate) ||
                other.travelEndDate == travelEndDate) &&
            (identical(other.travelImageUrl, travelImageUrl) ||
                other.travelImageUrl == travelImageUrl) &&
            (identical(other.travelDataHasImage, travelDataHasImage) ||
                other.travelDataHasImage == travelDataHasImage) &&
            (identical(other.travelTotalCost, travelTotalCost) ||
                other.travelTotalCost == travelTotalCost) && (identical(
            other.travelBookingIncludesFlight, travelBookingIncludesFlight) ||
            other.travelBookingIncludesFlight == travelBookingIncludesFlight) &&
            (identical(
                other.travelBookingIncludesHotel, travelBookingIncludesHotel) ||
                other.travelBookingIncludesHotel ==
                    travelBookingIncludesHotel) && (identical(
            other.travelBookingIncludesTour, travelBookingIncludesTour) ||
            other.travelBookingIncludesTour == travelBookingIncludesTour));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(
          runtimeType,
          travelId,
          travelCity,
          travelCountry,
          travelStartDate,
          travelEndDate,
          travelImageUrl,
          travelDataHasImage,
          travelTotalCost,
          travelBookingIncludesFlight,
          travelBookingIncludesHotel,
          travelBookingIncludesTour);

  @override
  String toString() {
    return 'TravelData(travelId: $travelId, travelCity: $travelCity, travelCountry: $travelCountry, travelStartDate: $travelStartDate, travelEndDate: $travelEndDate, travelImageUrl: $travelImageUrl, travelDataHasImage: $travelDataHasImage, travelTotalCost: $travelTotalCost, travelBookingIncludesFlight: $travelBookingIncludesFlight, travelBookingIncludesHotel: $travelBookingIncludesHotel, travelBookingIncludesTour: $travelBookingIncludesTour)';
  }


}

/// @nodoc
abstract mixin class _$TravelDataCopyWith<$Res>
    implements $TravelDataCopyWith<$Res> {
  factory _$TravelDataCopyWith(_TravelData value,
      $Res Function(_TravelData) _then) = __$TravelDataCopyWithImpl;

  @override
  @useResult
  $Res call({
    int travelId, String travelCity, String travelCountry, DateTime travelStartDate, DateTime travelEndDate, String? travelImageUrl, bool travelDataHasImage, double travelTotalCost, bool travelBookingIncludesFlight, bool travelBookingIncludesHotel, bool travelBookingIncludesTour
  });


}

/// @nodoc
class __$TravelDataCopyWithImpl<$Res>
    implements _$TravelDataCopyWith<$Res> {
  __$TravelDataCopyWithImpl(this._self, this._then);

  final _TravelData _self;
  final $Res Function(_TravelData) _then;

  /// Create a copy of TravelData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call(
      {Object? travelId = null, Object? travelCity = null, Object? travelCountry = null, Object? travelStartDate = null, Object? travelEndDate = null, Object? travelImageUrl = freezed, Object? travelDataHasImage = null, Object? travelTotalCost = null, Object? travelBookingIncludesFlight = null, Object? travelBookingIncludesHotel = null, Object? travelBookingIncludesTour = null,}) {
    return _then(_TravelData(
      travelId: null == travelId
          ? _self.travelId
          : travelId // ignore: cast_nullable_to_non_nullable
      as int,
      travelCity: null == travelCity
          ? _self.travelCity
          : travelCity // ignore: cast_nullable_to_non_nullable
      as String,
      travelCountry: null == travelCountry
          ? _self.travelCountry
          : travelCountry // ignore: cast_nullable_to_non_nullable
      as String,
      travelStartDate: null == travelStartDate
          ? _self.travelStartDate
          : travelStartDate // ignore: cast_nullable_to_non_nullable
      as DateTime,
      travelEndDate: null == travelEndDate
          ? _self.travelEndDate
          : travelEndDate // ignore: cast_nullable_to_non_nullable
      as DateTime,
      travelImageUrl: freezed == travelImageUrl
          ? _self.travelImageUrl
          : travelImageUrl // ignore: cast_nullable_to_non_nullable
      as String?,
      travelDataHasImage: null == travelDataHasImage
          ? _self.travelDataHasImage
          : travelDataHasImage // ignore: cast_nullable_to_non_nullable
      as bool,
      travelTotalCost: null == travelTotalCost
          ? _self.travelTotalCost
          : travelTotalCost // ignore: cast_nullable_to_non_nullable
      as double,
      travelBookingIncludesFlight: null == travelBookingIncludesFlight
          ? _self.travelBookingIncludesFlight
          : travelBookingIncludesFlight // ignore: cast_nullable_to_non_nullable
      as bool,
      travelBookingIncludesHotel: null == travelBookingIncludesHotel
          ? _self.travelBookingIncludesHotel
          : travelBookingIncludesHotel // ignore: cast_nullable_to_non_nullable
      as bool,
      travelBookingIncludesTour: null == travelBookingIncludesTour
          ? _self.travelBookingIncludesTour
          : travelBookingIncludesTour // ignore: cast_nullable_to_non_nullable
      as bool,
    ));
  }


}

// dart format on
