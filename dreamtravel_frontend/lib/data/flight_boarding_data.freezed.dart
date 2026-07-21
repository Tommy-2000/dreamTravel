// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flight_boarding_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FlightBoardingData {

  int get flightBoardingNumber;

  String get flightPassengerName;

  Airport get flightOrigin;

  Airport get flightDestination;

  DateTime get flightDepartureTime;

  DateTime get flightBoardingTime;

  String get flightBoardingDay;

  DateTime get flightArrivalTime;

  String get flightGate;

  int get flightZone;

  String get flightPassengerSeat;

  String get flightPassengerClass;

  int get flightPassengers;

  String get flightNumber;

  FlightDuration get flightDuration;

  /// Create a copy of FlightBoardingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FlightBoardingDataCopyWith<FlightBoardingData> get copyWith =>
      _$FlightBoardingDataCopyWithImpl<FlightBoardingData>(
          this as FlightBoardingData, _$identity);

  /// Serializes this FlightBoardingData to a JSON map.
  Map<String, dynamic> toJson();


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FlightBoardingData &&
            (identical(other.flightBoardingNumber, flightBoardingNumber) ||
                other.flightBoardingNumber == flightBoardingNumber) &&
            (identical(other.flightPassengerName, flightPassengerName) ||
                other.flightPassengerName == flightPassengerName) &&
            (identical(other.flightOrigin, flightOrigin) ||
                other.flightOrigin == flightOrigin) &&
            (identical(other.flightDestination, flightDestination) ||
                other.flightDestination == flightDestination) &&
            (identical(other.flightDepartureTime, flightDepartureTime) ||
                other.flightDepartureTime == flightDepartureTime) &&
            (identical(other.flightBoardingTime, flightBoardingTime) ||
                other.flightBoardingTime == flightBoardingTime) &&
            (identical(other.flightBoardingDay, flightBoardingDay) ||
                other.flightBoardingDay == flightBoardingDay) &&
            (identical(other.flightArrivalTime, flightArrivalTime) ||
                other.flightArrivalTime == flightArrivalTime) &&
            (identical(other.flightGate, flightGate) ||
                other.flightGate == flightGate) &&
            (identical(other.flightZone, flightZone) ||
                other.flightZone == flightZone) &&
            (identical(other.flightPassengerSeat, flightPassengerSeat) ||
                other.flightPassengerSeat == flightPassengerSeat) &&
            (identical(other.flightPassengerClass, flightPassengerClass) ||
                other.flightPassengerClass == flightPassengerClass) &&
            (identical(other.flightPassengers, flightPassengers) ||
                other.flightPassengers == flightPassengers) &&
            (identical(other.flightNumber, flightNumber) ||
                other.flightNumber == flightNumber) &&
            (identical(other.flightDuration, flightDuration) ||
                other.flightDuration == flightDuration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(
          runtimeType,
          flightBoardingNumber,
          flightPassengerName,
          flightOrigin,
          flightDestination,
          flightDepartureTime,
          flightBoardingTime,
          flightBoardingDay,
          flightArrivalTime,
          flightGate,
          flightZone,
          flightPassengerSeat,
          flightPassengerClass,
          flightPassengers,
          flightNumber,
          flightDuration);

  @override
  String toString() {
    return 'FlightBoardingData(flightBoardingNumber: $flightBoardingNumber, flightPassengerName: $flightPassengerName, flightOrigin: $flightOrigin, flightDestination: $flightDestination, flightDepartureTime: $flightDepartureTime, flightBoardingTime: $flightBoardingTime, flightBoardingDay: $flightBoardingDay, flightArrivalTime: $flightArrivalTime, flightGate: $flightGate, flightZone: $flightZone, flightPassengerSeat: $flightPassengerSeat, flightPassengerClass: $flightPassengerClass, flightPassengers: $flightPassengers, flightNumber: $flightNumber, flightDuration: $flightDuration)';
  }


}

/// @nodoc
abstract mixin class $FlightBoardingDataCopyWith<$Res> {
  factory $FlightBoardingDataCopyWith(FlightBoardingData value,
      $Res Function(FlightBoardingData) _then) = _$FlightBoardingDataCopyWithImpl;

  @useResult
  $Res call({
    int flightBoardingNumber, String flightPassengerName, Airport flightOrigin, Airport flightDestination, DateTime flightDepartureTime, DateTime flightBoardingTime, String flightBoardingDay, DateTime flightArrivalTime, String flightGate, int flightZone, String flightPassengerSeat, String flightPassengerClass, int flightPassengers, String flightNumber, FlightDuration flightDuration
  });


  $AirportCopyWith<$Res> get flightOrigin;

  $AirportCopyWith<$Res> get flightDestination;

  $FlightDurationCopyWith<$Res> get flightDuration;

}

/// @nodoc
class _$FlightBoardingDataCopyWithImpl<$Res>
    implements $FlightBoardingDataCopyWith<$Res> {
  _$FlightBoardingDataCopyWithImpl(this._self, this._then);

  final FlightBoardingData _self;
  final $Res Function(FlightBoardingData) _then;

  /// Create a copy of FlightBoardingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call(
      {Object? flightBoardingNumber = null, Object? flightPassengerName = null, Object? flightOrigin = null, Object? flightDestination = null, Object? flightDepartureTime = null, Object? flightBoardingTime = null, Object? flightBoardingDay = null, Object? flightArrivalTime = null, Object? flightGate = null, Object? flightZone = null, Object? flightPassengerSeat = null, Object? flightPassengerClass = null, Object? flightPassengers = null, Object? flightNumber = null, Object? flightDuration = null,}) {
    return _then(_self.copyWith(
      flightBoardingNumber: null == flightBoardingNumber
          ? _self.flightBoardingNumber
          : flightBoardingNumber // ignore: cast_nullable_to_non_nullable
      as int,
      flightPassengerName: null == flightPassengerName
          ? _self.flightPassengerName
          : flightPassengerName // ignore: cast_nullable_to_non_nullable
      as String,
      flightOrigin: null == flightOrigin
          ? _self.flightOrigin
          : flightOrigin // ignore: cast_nullable_to_non_nullable
      as Airport,
      flightDestination: null == flightDestination
          ? _self.flightDestination
          : flightDestination // ignore: cast_nullable_to_non_nullable
      as Airport,
      flightDepartureTime: null == flightDepartureTime
          ? _self.flightDepartureTime
          : flightDepartureTime // ignore: cast_nullable_to_non_nullable
      as DateTime,
      flightBoardingTime: null == flightBoardingTime
          ? _self.flightBoardingTime
          : flightBoardingTime // ignore: cast_nullable_to_non_nullable
      as DateTime,
      flightBoardingDay: null == flightBoardingDay
          ? _self.flightBoardingDay
          : flightBoardingDay // ignore: cast_nullable_to_non_nullable
      as String,
      flightArrivalTime: null == flightArrivalTime
          ? _self.flightArrivalTime
          : flightArrivalTime // ignore: cast_nullable_to_non_nullable
      as DateTime,
      flightGate: null == flightGate
          ? _self.flightGate
          : flightGate // ignore: cast_nullable_to_non_nullable
      as String,
      flightZone: null == flightZone
          ? _self.flightZone
          : flightZone // ignore: cast_nullable_to_non_nullable
      as int,
      flightPassengerSeat: null == flightPassengerSeat
          ? _self.flightPassengerSeat
          : flightPassengerSeat // ignore: cast_nullable_to_non_nullable
      as String,
      flightPassengerClass: null == flightPassengerClass
          ? _self.flightPassengerClass
          : flightPassengerClass // ignore: cast_nullable_to_non_nullable
      as String,
      flightPassengers: null == flightPassengers
          ? _self.flightPassengers
          : flightPassengers // ignore: cast_nullable_to_non_nullable
      as int,
      flightNumber: null == flightNumber
          ? _self.flightNumber
          : flightNumber // ignore: cast_nullable_to_non_nullable
      as String,
      flightDuration: null == flightDuration
          ? _self.flightDuration
          : flightDuration // ignore: cast_nullable_to_non_nullable
      as FlightDuration,
    ));
  }

  /// Create a copy of FlightBoardingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AirportCopyWith<$Res> get flightOrigin {
    return $AirportCopyWith<$Res>(_self.flightOrigin, (value) {
      return _then(_self.copyWith(flightOrigin: value));
    });
  }

  /// Create a copy of FlightBoardingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AirportCopyWith<$Res> get flightDestination {
    return $AirportCopyWith<$Res>(_self.flightDestination, (value) {
      return _then(_self.copyWith(flightDestination: value));
    });
  }

  /// Create a copy of FlightBoardingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FlightDurationCopyWith<$Res> get flightDuration {
    return $FlightDurationCopyWith<$Res>(_self.flightDuration, (value) {
      return _then(_self.copyWith(flightDuration: value));
    });
  }
}


/// Adds pattern-matching-related methods to [FlightBoardingData].
extension FlightBoardingDataPatterns on FlightBoardingData {
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

  TResult Function( _FlightBoardingData value)? $default,{required TResult orElse(),}){
  final _that = this;
  switch (_that) {
  case _FlightBoardingData() when $default != null:
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

  @optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FlightBoardingData value) $default,){
  final _that = this;
  switch (_that) {
  case _FlightBoardingData():
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

  @optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FlightBoardingData value)? $default,){
  final _that = this;
  switch (_that) {
  case _FlightBoardingData() when $default != null:
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

  @optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int flightBoardingNumber, String flightPassengerName, Airport flightOrigin, Airport flightDestination, DateTime flightDepartureTime, DateTime flightBoardingTime, String flightBoardingDay, DateTime flightArrivalTime, String flightGate, int flightZone, String flightPassengerSeat, String flightPassengerClass, int flightPassengers, String flightNumber, FlightDuration flightDuration)? $default,{required TResult orElse(),}) {final _that = this;
  switch (_that) {
  case _FlightBoardingData() when $default != null:
  return $default(_that.flightBoardingNumber,_that.flightPassengerName,_that.flightOrigin,_that.flightDestination,_that.flightDepartureTime,_that.flightBoardingTime,_that.flightBoardingDay,_that.flightArrivalTime,_that.flightGate,_that.flightZone,_that.flightPassengerSeat,_that.flightPassengerClass,_that.flightPassengers,_that.flightNumber,_that.flightDuration);case _:
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

  @optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int flightBoardingNumber, String flightPassengerName, Airport flightOrigin, Airport flightDestination, DateTime flightDepartureTime, DateTime flightBoardingTime, String flightBoardingDay, DateTime flightArrivalTime, String flightGate, int flightZone, String flightPassengerSeat, String flightPassengerClass, int flightPassengers, String flightNumber, FlightDuration flightDuration) $default,) {final _that = this;
  switch (_that) {
  case _FlightBoardingData():
  return $default(_that.flightBoardingNumber,_that.flightPassengerName,_that.flightOrigin,_that.flightDestination,_that.flightDepartureTime,_that.flightBoardingTime,_that.flightBoardingDay,_that.flightArrivalTime,_that.flightGate,_that.flightZone,_that.flightPassengerSeat,_that.flightPassengerClass,_that.flightPassengers,_that.flightNumber,_that.flightDuration);case _:
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

  @optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int flightBoardingNumber, String flightPassengerName, Airport flightOrigin, Airport flightDestination, DateTime flightDepartureTime, DateTime flightBoardingTime, String flightBoardingDay, DateTime flightArrivalTime, String flightGate, int flightZone, String flightPassengerSeat, String flightPassengerClass, int flightPassengers, String flightNumber, FlightDuration flightDuration)? $default,) {final _that = this;
  switch (_that) {
  case _FlightBoardingData() when $default != null:
  return $default(_that.flightBoardingNumber,_that.flightPassengerName,_that.flightOrigin,_that.flightDestination,_that.flightDepartureTime,_that.flightBoardingTime,_that.flightBoardingDay,_that.flightArrivalTime,_that.flightGate,_that.flightZone,_that.flightPassengerSeat,_that.flightPassengerClass,_that.flightPassengers,_that.flightNumber,_that.flightDuration);case _:
  return null;

  }
  }

}

/// @nodoc
@JsonSerializable()
class _FlightBoardingData implements FlightBoardingData {
  const _FlightBoardingData(
      {required this.flightBoardingNumber, required this.flightPassengerName, required this.flightOrigin, required this.flightDestination, required this.flightDepartureTime, required this.flightBoardingTime, required this.flightBoardingDay, required this.flightArrivalTime, required this.flightGate, required this.flightZone, required this.flightPassengerSeat, required this.flightPassengerClass, required this.flightPassengers, required this.flightNumber, required this.flightDuration});

  factory _FlightBoardingData.fromJson(Map<String, dynamic> json) =>
      _$FlightBoardingDataFromJson(json);

  @override final int flightBoardingNumber;
  @override final String flightPassengerName;
  @override final Airport flightOrigin;
  @override final Airport flightDestination;
  @override final DateTime flightDepartureTime;
  @override final DateTime flightBoardingTime;
  @override final String flightBoardingDay;
  @override final DateTime flightArrivalTime;
  @override final String flightGate;
  @override final int flightZone;
  @override final String flightPassengerSeat;
  @override final String flightPassengerClass;
  @override final int flightPassengers;
  @override final String flightNumber;
  @override final FlightDuration flightDuration;

  /// Create a copy of FlightBoardingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FlightBoardingDataCopyWith<_FlightBoardingData> get copyWith =>
      __$FlightBoardingDataCopyWithImpl<_FlightBoardingData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FlightBoardingDataToJson(this,);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FlightBoardingData &&
            (identical(other.flightBoardingNumber, flightBoardingNumber) ||
                other.flightBoardingNumber == flightBoardingNumber) &&
            (identical(other.flightPassengerName, flightPassengerName) ||
                other.flightPassengerName == flightPassengerName) &&
            (identical(other.flightOrigin, flightOrigin) ||
                other.flightOrigin == flightOrigin) &&
            (identical(other.flightDestination, flightDestination) ||
                other.flightDestination == flightDestination) &&
            (identical(other.flightDepartureTime, flightDepartureTime) ||
                other.flightDepartureTime == flightDepartureTime) &&
            (identical(other.flightBoardingTime, flightBoardingTime) ||
                other.flightBoardingTime == flightBoardingTime) &&
            (identical(other.flightBoardingDay, flightBoardingDay) ||
                other.flightBoardingDay == flightBoardingDay) &&
            (identical(other.flightArrivalTime, flightArrivalTime) ||
                other.flightArrivalTime == flightArrivalTime) &&
            (identical(other.flightGate, flightGate) ||
                other.flightGate == flightGate) &&
            (identical(other.flightZone, flightZone) ||
                other.flightZone == flightZone) &&
            (identical(other.flightPassengerSeat, flightPassengerSeat) ||
                other.flightPassengerSeat == flightPassengerSeat) &&
            (identical(other.flightPassengerClass, flightPassengerClass) ||
                other.flightPassengerClass == flightPassengerClass) &&
            (identical(other.flightPassengers, flightPassengers) ||
                other.flightPassengers == flightPassengers) &&
            (identical(other.flightNumber, flightNumber) ||
                other.flightNumber == flightNumber) &&
            (identical(other.flightDuration, flightDuration) ||
                other.flightDuration == flightDuration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(
          runtimeType,
          flightBoardingNumber,
          flightPassengerName,
          flightOrigin,
          flightDestination,
          flightDepartureTime,
          flightBoardingTime,
          flightBoardingDay,
          flightArrivalTime,
          flightGate,
          flightZone,
          flightPassengerSeat,
          flightPassengerClass,
          flightPassengers,
          flightNumber,
          flightDuration);

  @override
  String toString() {
    return 'FlightBoardingData(flightBoardingNumber: $flightBoardingNumber, flightPassengerName: $flightPassengerName, flightOrigin: $flightOrigin, flightDestination: $flightDestination, flightDepartureTime: $flightDepartureTime, flightBoardingTime: $flightBoardingTime, flightBoardingDay: $flightBoardingDay, flightArrivalTime: $flightArrivalTime, flightGate: $flightGate, flightZone: $flightZone, flightPassengerSeat: $flightPassengerSeat, flightPassengerClass: $flightPassengerClass, flightPassengers: $flightPassengers, flightNumber: $flightNumber, flightDuration: $flightDuration)';
  }


}

/// @nodoc
abstract mixin class _$FlightBoardingDataCopyWith<$Res>
    implements $FlightBoardingDataCopyWith<$Res> {
  factory _$FlightBoardingDataCopyWith(_FlightBoardingData value,
      $Res Function(_FlightBoardingData) _then) = __$FlightBoardingDataCopyWithImpl;

  @override
  @useResult
  $Res call({
    int flightBoardingNumber, String flightPassengerName, Airport flightOrigin, Airport flightDestination, DateTime flightDepartureTime, DateTime flightBoardingTime, String flightBoardingDay, DateTime flightArrivalTime, String flightGate, int flightZone, String flightPassengerSeat, String flightPassengerClass, int flightPassengers, String flightNumber, FlightDuration flightDuration
  });


  @override $AirportCopyWith<$Res> get flightOrigin;

  @override $AirportCopyWith<$Res> get flightDestination;

  @override $FlightDurationCopyWith<$Res> get flightDuration;

}

/// @nodoc
class __$FlightBoardingDataCopyWithImpl<$Res>
    implements _$FlightBoardingDataCopyWith<$Res> {
  __$FlightBoardingDataCopyWithImpl(this._self, this._then);

  final _FlightBoardingData _self;
  final $Res Function(_FlightBoardingData) _then;

  /// Create a copy of FlightBoardingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call(
      {Object? flightBoardingNumber = null, Object? flightPassengerName = null, Object? flightOrigin = null, Object? flightDestination = null, Object? flightDepartureTime = null, Object? flightBoardingTime = null, Object? flightBoardingDay = null, Object? flightArrivalTime = null, Object? flightGate = null, Object? flightZone = null, Object? flightPassengerSeat = null, Object? flightPassengerClass = null, Object? flightPassengers = null, Object? flightNumber = null, Object? flightDuration = null,}) {
    return _then(_FlightBoardingData(
      flightBoardingNumber: null == flightBoardingNumber
          ? _self.flightBoardingNumber
          : flightBoardingNumber // ignore: cast_nullable_to_non_nullable
      as int,
      flightPassengerName: null == flightPassengerName
          ? _self.flightPassengerName
          : flightPassengerName // ignore: cast_nullable_to_non_nullable
      as String,
      flightOrigin: null == flightOrigin
          ? _self.flightOrigin
          : flightOrigin // ignore: cast_nullable_to_non_nullable
      as Airport,
      flightDestination: null == flightDestination
          ? _self.flightDestination
          : flightDestination // ignore: cast_nullable_to_non_nullable
      as Airport,
      flightDepartureTime: null == flightDepartureTime
          ? _self.flightDepartureTime
          : flightDepartureTime // ignore: cast_nullable_to_non_nullable
      as DateTime,
      flightBoardingTime: null == flightBoardingTime
          ? _self.flightBoardingTime
          : flightBoardingTime // ignore: cast_nullable_to_non_nullable
      as DateTime,
      flightBoardingDay: null == flightBoardingDay
          ? _self.flightBoardingDay
          : flightBoardingDay // ignore: cast_nullable_to_non_nullable
      as String,
      flightArrivalTime: null == flightArrivalTime
          ? _self.flightArrivalTime
          : flightArrivalTime // ignore: cast_nullable_to_non_nullable
      as DateTime,
      flightGate: null == flightGate
          ? _self.flightGate
          : flightGate // ignore: cast_nullable_to_non_nullable
      as String,
      flightZone: null == flightZone
          ? _self.flightZone
          : flightZone // ignore: cast_nullable_to_non_nullable
      as int,
      flightPassengerSeat: null == flightPassengerSeat
          ? _self.flightPassengerSeat
          : flightPassengerSeat // ignore: cast_nullable_to_non_nullable
      as String,
      flightPassengerClass: null == flightPassengerClass
          ? _self.flightPassengerClass
          : flightPassengerClass // ignore: cast_nullable_to_non_nullable
      as String,
      flightPassengers: null == flightPassengers
          ? _self.flightPassengers
          : flightPassengers // ignore: cast_nullable_to_non_nullable
      as int,
      flightNumber: null == flightNumber
          ? _self.flightNumber
          : flightNumber // ignore: cast_nullable_to_non_nullable
      as String,
      flightDuration: null == flightDuration
          ? _self.flightDuration
          : flightDuration // ignore: cast_nullable_to_non_nullable
      as FlightDuration,
    ));
  }

  /// Create a copy of FlightBoardingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AirportCopyWith<$Res> get flightOrigin {
    return $AirportCopyWith<$Res>(_self.flightOrigin, (value) {
      return _then(_self.copyWith(flightOrigin: value));
    });
  }

  /// Create a copy of FlightBoardingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AirportCopyWith<$Res> get flightDestination {
    return $AirportCopyWith<$Res>(_self.flightDestination, (value) {
      return _then(_self.copyWith(flightDestination: value));
    });
  }

  /// Create a copy of FlightBoardingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FlightDurationCopyWith<$Res> get flightDuration {
    return $FlightDurationCopyWith<$Res>(_self.flightDuration, (value) {
      return _then(_self.copyWith(flightDuration: value));
    });
  }
}


/// @nodoc
mixin _$Airport {

  String get airportCode;

  String get airportCity;

  /// Create a copy of Airport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AirportCopyWith<Airport> get copyWith =>
      _$AirportCopyWithImpl<Airport>(this as Airport, _$identity);

  /// Serializes this Airport to a JSON map.
  Map<String, dynamic> toJson();


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Airport &&
            (identical(other.airportCode, airportCode) ||
                other.airportCode == airportCode) &&
            (identical(other.airportCity, airportCity) ||
                other.airportCity == airportCity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, airportCode, airportCity);

  @override
  String toString() {
    return 'Airport(airportCode: $airportCode, airportCity: $airportCity)';
  }


}

/// @nodoc
abstract mixin class $AirportCopyWith<$Res> {
  factory $AirportCopyWith(Airport value,
      $Res Function(Airport) _then) = _$AirportCopyWithImpl;

  @useResult
  $Res call({
    String airportCode, String airportCity
  });


}

/// @nodoc
class _$AirportCopyWithImpl<$Res>
    implements $AirportCopyWith<$Res> {
  _$AirportCopyWithImpl(this._self, this._then);

  final Airport _self;
  final $Res Function(Airport) _then;

  /// Create a copy of Airport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? airportCode = null, Object? airportCity = null,}) {
    return _then(_self.copyWith(
      airportCode: null == airportCode
          ? _self.airportCode
          : airportCode // ignore: cast_nullable_to_non_nullable
      as String,
      airportCity: null == airportCity
          ? _self.airportCity
          : airportCity // ignore: cast_nullable_to_non_nullable
      as String,
    ));
  }

}


/// Adds pattern-matching-related methods to [Airport].
extension AirportPatterns on Airport {
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

  TResult Function( _Airport value)? $default,{required TResult orElse(),}){
  final _that = this;
  switch (_that) {
  case _Airport() when $default != null:
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

  @optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Airport value) $default,){
  final _that = this;
  switch (_that) {
  case _Airport():
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

  @optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Airport value)? $default,){
  final _that = this;
  switch (_that) {
  case _Airport() when $default != null:
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

  @optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String airportCode, String airportCity)? $default,{required TResult orElse(),}) {final _that = this;
  switch (_that) {
  case _Airport() when $default != null:
  return $default(_that.airportCode,_that.airportCity);case _:
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

  @optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String airportCode, String airportCity) $default,) {final _that = this;
  switch (_that) {
  case _Airport():
  return $default(_that.airportCode,_that.airportCity);case _:
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

  @optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String airportCode, String airportCity)? $default,) {final _that = this;
  switch (_that) {
  case _Airport() when $default != null:
  return $default(_that.airportCode,_that.airportCity);case _:
  return null;

  }
  }

}

/// @nodoc
@JsonSerializable()
class _Airport implements Airport {
  const _Airport({required this.airportCode, required this.airportCity});

  factory _Airport.fromJson(Map<String, dynamic> json) =>
      _$AirportFromJson(json);

  @override final String airportCode;
  @override final String airportCity;

  /// Create a copy of Airport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AirportCopyWith<_Airport> get copyWith =>
      __$AirportCopyWithImpl<_Airport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AirportToJson(this,);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Airport &&
            (identical(other.airportCode, airportCode) ||
                other.airportCode == airportCode) &&
            (identical(other.airportCity, airportCity) ||
                other.airportCity == airportCity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, airportCode, airportCity);

  @override
  String toString() {
    return 'Airport(airportCode: $airportCode, airportCity: $airportCity)';
  }


}

/// @nodoc
abstract mixin class _$AirportCopyWith<$Res> implements $AirportCopyWith<$Res> {
  factory _$AirportCopyWith(_Airport value,
      $Res Function(_Airport) _then) = __$AirportCopyWithImpl;

  @override
  @useResult
  $Res call({
    String airportCode, String airportCity
  });


}

/// @nodoc
class __$AirportCopyWithImpl<$Res>
    implements _$AirportCopyWith<$Res> {
  __$AirportCopyWithImpl(this._self, this._then);

  final _Airport _self;
  final $Res Function(_Airport) _then;

  /// Create a copy of Airport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? airportCode = null, Object? airportCity = null,}) {
    return _then(_Airport(
      airportCode: null == airportCode
          ? _self.airportCode
          : airportCode // ignore: cast_nullable_to_non_nullable
      as String,
      airportCity: null == airportCity
          ? _self.airportCity
          : airportCity // ignore: cast_nullable_to_non_nullable
      as String,
    ));
  }


}


/// @nodoc
mixin _$FlightDuration {

  int get flightHours;

  int get flightMinutes;

  /// Create a copy of FlightDuration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FlightDurationCopyWith<FlightDuration> get copyWith =>
      _$FlightDurationCopyWithImpl<FlightDuration>(
          this as FlightDuration, _$identity);

  /// Serializes this FlightDuration to a JSON map.
  Map<String, dynamic> toJson();


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FlightDuration &&
            (identical(other.flightHours, flightHours) ||
                other.flightHours == flightHours) &&
            (identical(other.flightMinutes, flightMinutes) ||
                other.flightMinutes == flightMinutes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, flightHours, flightMinutes);

  @override
  String toString() {
    return 'FlightDuration(flightHours: $flightHours, flightMinutes: $flightMinutes)';
  }


}

/// @nodoc
abstract mixin class $FlightDurationCopyWith<$Res> {
  factory $FlightDurationCopyWith(FlightDuration value,
      $Res Function(FlightDuration) _then) = _$FlightDurationCopyWithImpl;

  @useResult
  $Res call({
    int flightHours, int flightMinutes
  });


}

/// @nodoc
class _$FlightDurationCopyWithImpl<$Res>
    implements $FlightDurationCopyWith<$Res> {
  _$FlightDurationCopyWithImpl(this._self, this._then);

  final FlightDuration _self;
  final $Res Function(FlightDuration) _then;

  /// Create a copy of FlightDuration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? flightHours = null, Object? flightMinutes = null,}) {
    return _then(_self.copyWith(
      flightHours: null == flightHours
          ? _self.flightHours
          : flightHours // ignore: cast_nullable_to_non_nullable
      as int,
      flightMinutes: null == flightMinutes
          ? _self.flightMinutes
          : flightMinutes // ignore: cast_nullable_to_non_nullable
      as int,
    ));
  }

}


/// Adds pattern-matching-related methods to [FlightDuration].
extension FlightDurationPatterns on FlightDuration {
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

  TResult Function( _FlightDuration value)? $default,{required TResult orElse(),}){
  final _that = this;
  switch (_that) {
  case _FlightDuration() when $default != null:
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

  @optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FlightDuration value) $default,){
  final _that = this;
  switch (_that) {
  case _FlightDuration():
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

  @optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FlightDuration value)? $default,){
  final _that = this;
  switch (_that) {
  case _FlightDuration() when $default != null:
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

  @optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int flightHours, int flightMinutes)? $default,{required TResult orElse(),}) {final _that = this;
  switch (_that) {
  case _FlightDuration() when $default != null:
  return $default(_that.flightHours,_that.flightMinutes);case _:
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

  @optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int flightHours, int flightMinutes) $default,) {final _that = this;
  switch (_that) {
  case _FlightDuration():
  return $default(_that.flightHours,_that.flightMinutes);case _:
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

  @optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int flightHours, int flightMinutes)? $default,) {final _that = this;
  switch (_that) {
  case _FlightDuration() when $default != null:
  return $default(_that.flightHours,_that.flightMinutes);case _:
  return null;

  }
  }

}

/// @nodoc
@JsonSerializable()
class _FlightDuration implements FlightDuration {
  const _FlightDuration(
      {required this.flightHours, required this.flightMinutes});

  factory _FlightDuration.fromJson(Map<String, dynamic> json) =>
      _$FlightDurationFromJson(json);

  @override final int flightHours;
  @override final int flightMinutes;

  /// Create a copy of FlightDuration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FlightDurationCopyWith<_FlightDuration> get copyWith =>
      __$FlightDurationCopyWithImpl<_FlightDuration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FlightDurationToJson(this,);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FlightDuration &&
            (identical(other.flightHours, flightHours) ||
                other.flightHours == flightHours) &&
            (identical(other.flightMinutes, flightMinutes) ||
                other.flightMinutes == flightMinutes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, flightHours, flightMinutes);

  @override
  String toString() {
    return 'FlightDuration(flightHours: $flightHours, flightMinutes: $flightMinutes)';
  }


}

/// @nodoc
abstract mixin class _$FlightDurationCopyWith<$Res>
    implements $FlightDurationCopyWith<$Res> {
  factory _$FlightDurationCopyWith(_FlightDuration value,
      $Res Function(_FlightDuration) _then) = __$FlightDurationCopyWithImpl;

  @override
  @useResult
  $Res call({
    int flightHours, int flightMinutes
  });


}

/// @nodoc
class __$FlightDurationCopyWithImpl<$Res>
    implements _$FlightDurationCopyWith<$Res> {
  __$FlightDurationCopyWithImpl(this._self, this._then);

  final _FlightDuration _self;
  final $Res Function(_FlightDuration) _then;

  /// Create a copy of FlightDuration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? flightHours = null, Object? flightMinutes = null,}) {
    return _then(_FlightDuration(
      flightHours: null == flightHours
          ? _self.flightHours
          : flightHours // ignore: cast_nullable_to_non_nullable
      as int,
      flightMinutes: null == flightMinutes
          ? _self.flightMinutes
          : flightMinutes // ignore: cast_nullable_to_non_nullable
      as int,
    ));
  }


}

// dart format on
