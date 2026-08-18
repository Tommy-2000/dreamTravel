// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_booking_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HotelBookingData {

  int get hotelBookingNumber;

  String get guestFullName;

  String get hotelCheckInTime;

  DateTime get hotelCheckInDay;

  String get hotelCheckOutTime;

  DateTime get hotelCheckOutDay;

  String get hotelName;

  String get hotelManager;

  String get hotelFloor;

  int get hotelRoomNumber;

  /// Create a copy of HotelBookingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HotelBookingDataCopyWith<HotelBookingData> get copyWith =>
      _$HotelBookingDataCopyWithImpl<HotelBookingData>(
          this as HotelBookingData, _$identity);

  /// Serializes this HotelBookingData to a JSON map.
  Map<String, dynamic> toJson();


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HotelBookingData &&
            (identical(other.hotelBookingNumber, hotelBookingNumber) ||
                other.hotelBookingNumber == hotelBookingNumber) &&
            (identical(other.guestFullName, guestFullName) ||
                other.guestFullName == guestFullName) &&
            (identical(other.hotelCheckInTime, hotelCheckInTime) ||
                other.hotelCheckInTime == hotelCheckInTime) &&
            (identical(other.hotelCheckInDay, hotelCheckInDay) ||
                other.hotelCheckInDay == hotelCheckInDay) &&
            (identical(other.hotelCheckOutTime, hotelCheckOutTime) ||
                other.hotelCheckOutTime == hotelCheckOutTime) &&
            (identical(other.hotelCheckOutDay, hotelCheckOutDay) ||
                other.hotelCheckOutDay == hotelCheckOutDay) &&
            (identical(other.hotelName, hotelName) ||
                other.hotelName == hotelName) &&
            (identical(other.hotelManager, hotelManager) ||
                other.hotelManager == hotelManager) &&
            (identical(other.hotelFloor, hotelFloor) ||
                other.hotelFloor == hotelFloor) &&
            (identical(other.hotelRoomNumber, hotelRoomNumber) ||
                other.hotelRoomNumber == hotelRoomNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(
          runtimeType,
          hotelBookingNumber,
          guestFullName,
          hotelCheckInTime,
          hotelCheckInDay,
          hotelCheckOutTime,
          hotelCheckOutDay,
          hotelName,
          hotelManager,
          hotelFloor,
          hotelRoomNumber);

  @override
  String toString() {
    return 'HotelBookingData(hotelBookingNumber: $hotelBookingNumber, guestFullName: $guestFullName, hotelCheckInTime: $hotelCheckInTime, hotelCheckInDay: $hotelCheckInDay, hotelCheckOutTime: $hotelCheckOutTime, hotelCheckOutDay: $hotelCheckOutDay, hotelName: $hotelName, hotelManager: $hotelManager, hotelFloor: $hotelFloor, hotelRoomNumber: $hotelRoomNumber)';
  }


}

/// @nodoc
abstract mixin class $HotelBookingDataCopyWith<$Res> {
  factory $HotelBookingDataCopyWith(HotelBookingData value,
      $Res Function(HotelBookingData) _then) = _$HotelBookingDataCopyWithImpl;

  @useResult
  $Res call({
    int hotelBookingNumber, String guestFullName, String hotelCheckInTime, DateTime hotelCheckInDay, String hotelCheckOutTime, DateTime hotelCheckOutDay, String hotelName, String hotelManager, String hotelFloor, int hotelRoomNumber
  });


}

/// @nodoc
class _$HotelBookingDataCopyWithImpl<$Res>
    implements $HotelBookingDataCopyWith<$Res> {
  _$HotelBookingDataCopyWithImpl(this._self, this._then);

  final HotelBookingData _self;
  final $Res Function(HotelBookingData) _then;

  /// Create a copy of HotelBookingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call(
      {Object? hotelBookingNumber = null, Object? guestFullName = null, Object? hotelCheckInTime = null, Object? hotelCheckInDay = null, Object? hotelCheckOutTime = null, Object? hotelCheckOutDay = null, Object? hotelName = null, Object? hotelManager = null, Object? hotelFloor = null, Object? hotelRoomNumber = null,}) {
    return _then(_self.copyWith(
      hotelBookingNumber: null == hotelBookingNumber
          ? _self.hotelBookingNumber
          : hotelBookingNumber // ignore: cast_nullable_to_non_nullable
      as int,
      guestFullName: null == guestFullName
          ? _self.guestFullName
          : guestFullName // ignore: cast_nullable_to_non_nullable
      as String,
      hotelCheckInTime: null == hotelCheckInTime
          ? _self.hotelCheckInTime
          : hotelCheckInTime // ignore: cast_nullable_to_non_nullable
      as String,
      hotelCheckInDay: null == hotelCheckInDay
          ? _self.hotelCheckInDay
          : hotelCheckInDay // ignore: cast_nullable_to_non_nullable
      as DateTime,
      hotelCheckOutTime: null == hotelCheckOutTime
          ? _self.hotelCheckOutTime
          : hotelCheckOutTime // ignore: cast_nullable_to_non_nullable
      as String,
      hotelCheckOutDay: null == hotelCheckOutDay
          ? _self.hotelCheckOutDay
          : hotelCheckOutDay // ignore: cast_nullable_to_non_nullable
      as DateTime,
      hotelName: null == hotelName
          ? _self.hotelName
          : hotelName // ignore: cast_nullable_to_non_nullable
      as String,
      hotelManager: null == hotelManager
          ? _self.hotelManager
          : hotelManager // ignore: cast_nullable_to_non_nullable
      as String,
      hotelFloor: null == hotelFloor
          ? _self.hotelFloor
          : hotelFloor // ignore: cast_nullable_to_non_nullable
      as String,
      hotelRoomNumber: null == hotelRoomNumber
          ? _self.hotelRoomNumber
          : hotelRoomNumber // ignore: cast_nullable_to_non_nullable
      as int,
    ));
  }

}


/// Adds pattern-matching-related methods to [HotelBookingData].
extension HotelBookingDataPatterns on HotelBookingData {
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

  TResult Function( _HotelBookingData value)? $default,{required TResult orElse(),}){
  final _that = this;
  switch (_that) {
  case _HotelBookingData() when $default != null:
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

  @optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HotelBookingData value) $default,){
  final _that = this;
  switch (_that) {
  case _HotelBookingData():
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

  @optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HotelBookingData value)? $default,){
  final _that = this;
  switch (_that) {
  case _HotelBookingData() when $default != null:
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

  @optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int hotelBookingNumber, String guestFullName, String hotelCheckInTime, DateTime hotelCheckInDay, String hotelCheckOutTime, DateTime hotelCheckOutDay, String hotelName, String hotelManager, String hotelFloor, int hotelRoomNumber)? $default,{required TResult orElse(),}) {final _that = this;
  switch (_that) {
  case _HotelBookingData() when $default != null:
  return $default(_that.hotelBookingNumber,_that.guestFullName,_that.hotelCheckInTime,_that.hotelCheckInDay,_that.hotelCheckOutTime,_that.hotelCheckOutDay,_that.hotelName,_that.hotelManager,_that.hotelFloor,_that.hotelRoomNumber);case _:
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

  @optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int hotelBookingNumber, String guestFullName, String hotelCheckInTime, DateTime hotelCheckInDay, String hotelCheckOutTime, DateTime hotelCheckOutDay, String hotelName, String hotelManager, String hotelFloor, int hotelRoomNumber) $default,) {final _that = this;
  switch (_that) {
  case _HotelBookingData():
  return $default(_that.hotelBookingNumber,_that.guestFullName,_that.hotelCheckInTime,_that.hotelCheckInDay,_that.hotelCheckOutTime,_that.hotelCheckOutDay,_that.hotelName,_that.hotelManager,_that.hotelFloor,_that.hotelRoomNumber);case _:
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

  @optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int hotelBookingNumber, String guestFullName, String hotelCheckInTime, DateTime hotelCheckInDay, String hotelCheckOutTime, DateTime hotelCheckOutDay, String hotelName, String hotelManager, String hotelFloor, int hotelRoomNumber)? $default,) {final _that = this;
  switch (_that) {
  case _HotelBookingData() when $default != null:
  return $default(_that.hotelBookingNumber,_that.guestFullName,_that.hotelCheckInTime,_that.hotelCheckInDay,_that.hotelCheckOutTime,_that.hotelCheckOutDay,_that.hotelName,_that.hotelManager,_that.hotelFloor,_that.hotelRoomNumber);case _:
  return null;

  }
  }

}

/// @nodoc
@JsonSerializable()
class _HotelBookingData implements HotelBookingData {
  const _HotelBookingData(
      {required this.hotelBookingNumber, required this.guestFullName, required this.hotelCheckInTime, required this.hotelCheckInDay, required this.hotelCheckOutTime, required this.hotelCheckOutDay, required this.hotelName, required this.hotelManager, required this.hotelFloor, required this.hotelRoomNumber});

  factory _HotelBookingData.fromJson(Map<String, dynamic> json) =>
      _$HotelBookingDataFromJson(json);

  @override final int hotelBookingNumber;
  @override final String guestFullName;
  @override final String hotelCheckInTime;
  @override final DateTime hotelCheckInDay;
  @override final String hotelCheckOutTime;
  @override final DateTime hotelCheckOutDay;
  @override final String hotelName;
  @override final String hotelManager;
  @override final String hotelFloor;
  @override final int hotelRoomNumber;

  /// Create a copy of HotelBookingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HotelBookingDataCopyWith<_HotelBookingData> get copyWith =>
      __$HotelBookingDataCopyWithImpl<_HotelBookingData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HotelBookingDataToJson(this,);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _HotelBookingData &&
            (identical(other.hotelBookingNumber, hotelBookingNumber) ||
                other.hotelBookingNumber == hotelBookingNumber) &&
            (identical(other.guestFullName, guestFullName) ||
                other.guestFullName == guestFullName) &&
            (identical(other.hotelCheckInTime, hotelCheckInTime) ||
                other.hotelCheckInTime == hotelCheckInTime) &&
            (identical(other.hotelCheckInDay, hotelCheckInDay) ||
                other.hotelCheckInDay == hotelCheckInDay) &&
            (identical(other.hotelCheckOutTime, hotelCheckOutTime) ||
                other.hotelCheckOutTime == hotelCheckOutTime) &&
            (identical(other.hotelCheckOutDay, hotelCheckOutDay) ||
                other.hotelCheckOutDay == hotelCheckOutDay) &&
            (identical(other.hotelName, hotelName) ||
                other.hotelName == hotelName) &&
            (identical(other.hotelManager, hotelManager) ||
                other.hotelManager == hotelManager) &&
            (identical(other.hotelFloor, hotelFloor) ||
                other.hotelFloor == hotelFloor) &&
            (identical(other.hotelRoomNumber, hotelRoomNumber) ||
                other.hotelRoomNumber == hotelRoomNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(
          runtimeType,
          hotelBookingNumber,
          guestFullName,
          hotelCheckInTime,
          hotelCheckInDay,
          hotelCheckOutTime,
          hotelCheckOutDay,
          hotelName,
          hotelManager,
          hotelFloor,
          hotelRoomNumber);

  @override
  String toString() {
    return 'HotelBookingData(hotelBookingNumber: $hotelBookingNumber, guestFullName: $guestFullName, hotelCheckInTime: $hotelCheckInTime, hotelCheckInDay: $hotelCheckInDay, hotelCheckOutTime: $hotelCheckOutTime, hotelCheckOutDay: $hotelCheckOutDay, hotelName: $hotelName, hotelManager: $hotelManager, hotelFloor: $hotelFloor, hotelRoomNumber: $hotelRoomNumber)';
  }


}

/// @nodoc
abstract mixin class _$HotelBookingDataCopyWith<$Res>
    implements $HotelBookingDataCopyWith<$Res> {
  factory _$HotelBookingDataCopyWith(_HotelBookingData value,
      $Res Function(_HotelBookingData) _then) = __$HotelBookingDataCopyWithImpl;

  @override
  @useResult
  $Res call({
    int hotelBookingNumber, String guestFullName, String hotelCheckInTime, DateTime hotelCheckInDay, String hotelCheckOutTime, DateTime hotelCheckOutDay, String hotelName, String hotelManager, String hotelFloor, int hotelRoomNumber
  });


}

/// @nodoc
class __$HotelBookingDataCopyWithImpl<$Res>
    implements _$HotelBookingDataCopyWith<$Res> {
  __$HotelBookingDataCopyWithImpl(this._self, this._then);

  final _HotelBookingData _self;
  final $Res Function(_HotelBookingData) _then;

  /// Create a copy of HotelBookingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call(
      {Object? hotelBookingNumber = null, Object? guestFullName = null, Object? hotelCheckInTime = null, Object? hotelCheckInDay = null, Object? hotelCheckOutTime = null, Object? hotelCheckOutDay = null, Object? hotelName = null, Object? hotelManager = null, Object? hotelFloor = null, Object? hotelRoomNumber = null,}) {
    return _then(_HotelBookingData(
      hotelBookingNumber: null == hotelBookingNumber
          ? _self.hotelBookingNumber
          : hotelBookingNumber // ignore: cast_nullable_to_non_nullable
      as int,
      guestFullName: null == guestFullName
          ? _self.guestFullName
          : guestFullName // ignore: cast_nullable_to_non_nullable
      as String,
      hotelCheckInTime: null == hotelCheckInTime
          ? _self.hotelCheckInTime
          : hotelCheckInTime // ignore: cast_nullable_to_non_nullable
      as String,
      hotelCheckInDay: null == hotelCheckInDay
          ? _self.hotelCheckInDay
          : hotelCheckInDay // ignore: cast_nullable_to_non_nullable
      as DateTime,
      hotelCheckOutTime: null == hotelCheckOutTime
          ? _self.hotelCheckOutTime
          : hotelCheckOutTime // ignore: cast_nullable_to_non_nullable
      as String,
      hotelCheckOutDay: null == hotelCheckOutDay
          ? _self.hotelCheckOutDay
          : hotelCheckOutDay // ignore: cast_nullable_to_non_nullable
      as DateTime,
      hotelName: null == hotelName
          ? _self.hotelName
          : hotelName // ignore: cast_nullable_to_non_nullable
      as String,
      hotelManager: null == hotelManager
          ? _self.hotelManager
          : hotelManager // ignore: cast_nullable_to_non_nullable
      as String,
      hotelFloor: null == hotelFloor
          ? _self.hotelFloor
          : hotelFloor // ignore: cast_nullable_to_non_nullable
      as String,
      hotelRoomNumber: null == hotelRoomNumber
          ? _self.hotelRoomNumber
          : hotelRoomNumber // ignore: cast_nullable_to_non_nullable
      as int,
    ));
  }


}

// dart format on
