// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookingData {

  int get bookingId;

  String get bookingFirstName;

  String get bookingLastName;

  int get bookingPassengers;

  double get bookingPrice;

  TravelData get travelData;

  List<FlightBoardingData>? get flightBoardingData;

  List<HotelBookingData>? get hotelBookingData;

  List<TourBookingData>? get tourBookingData;

  /// Create a copy of BookingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BookingDataCopyWith<BookingData> get copyWith =>
      _$BookingDataCopyWithImpl<BookingData>(this as BookingData, _$identity);

  /// Serializes this BookingData to a JSON map.
  Map<String, dynamic> toJson();


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BookingData &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.bookingFirstName, bookingFirstName) ||
                other.bookingFirstName == bookingFirstName) &&
            (identical(other.bookingLastName, bookingLastName) ||
                other.bookingLastName == bookingLastName) &&
            (identical(other.bookingPassengers, bookingPassengers) ||
                other.bookingPassengers == bookingPassengers) &&
            (identical(other.bookingPrice, bookingPrice) ||
                other.bookingPrice == bookingPrice) &&
            (identical(other.travelData, travelData) ||
                other.travelData == travelData) &&
            const DeepCollectionEquality().equals(
                other.flightBoardingData, flightBoardingData) &&
            const DeepCollectionEquality().equals(
                other.hotelBookingData, hotelBookingData) &&
            const DeepCollectionEquality().equals(
                other.tourBookingData, tourBookingData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(
          runtimeType,
          bookingId,
          bookingFirstName,
          bookingLastName,
          bookingPassengers,
          bookingPrice,
          travelData,
          const DeepCollectionEquality().hash(flightBoardingData),
          const DeepCollectionEquality().hash(hotelBookingData),
          const DeepCollectionEquality().hash(tourBookingData));

  @override
  String toString() {
    return 'BookingData(bookingId: $bookingId, bookingFirstName: $bookingFirstName, bookingLastName: $bookingLastName, bookingPassengers: $bookingPassengers, bookingPrice: $bookingPrice, travelData: $travelData, flightBoardingData: $flightBoardingData, hotelBookingData: $hotelBookingData, tourBookingData: $tourBookingData)';
  }


}

/// @nodoc
abstract mixin class $BookingDataCopyWith<$Res> {
  factory $BookingDataCopyWith(BookingData value,
      $Res Function(BookingData) _then) = _$BookingDataCopyWithImpl;

  @useResult
  $Res call({
    int bookingId, String bookingFirstName, String bookingLastName, int bookingPassengers, double bookingPrice, TravelData travelData, List<
        FlightBoardingData>? flightBoardingData, List<
        HotelBookingData>? hotelBookingData, List<
        TourBookingData>? tourBookingData
  });


  $TravelDataCopyWith<$Res> get travelData;

}

/// @nodoc
class _$BookingDataCopyWithImpl<$Res>
    implements $BookingDataCopyWith<$Res> {
  _$BookingDataCopyWithImpl(this._self, this._then);

  final BookingData _self;
  final $Res Function(BookingData) _then;

  /// Create a copy of BookingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call(
      {Object? bookingId = null, Object? bookingFirstName = null, Object? bookingLastName = null, Object? bookingPassengers = null, Object? bookingPrice = null, Object? travelData = null, Object? flightBoardingData = freezed, Object? hotelBookingData = freezed, Object? tourBookingData = freezed,}) {
    return _then(_self.copyWith(
      bookingId: null == bookingId
          ? _self.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
      as int,
      bookingFirstName: null == bookingFirstName
          ? _self.bookingFirstName
          : bookingFirstName // ignore: cast_nullable_to_non_nullable
      as String,
      bookingLastName: null == bookingLastName
          ? _self.bookingLastName
          : bookingLastName // ignore: cast_nullable_to_non_nullable
      as String,
      bookingPassengers: null == bookingPassengers
          ? _self.bookingPassengers
          : bookingPassengers // ignore: cast_nullable_to_non_nullable
      as int,
      bookingPrice: null == bookingPrice
          ? _self.bookingPrice
          : bookingPrice // ignore: cast_nullable_to_non_nullable
      as double,
      travelData: null == travelData
          ? _self.travelData
          : travelData // ignore: cast_nullable_to_non_nullable
      as TravelData,
      flightBoardingData: freezed == flightBoardingData
          ? _self.flightBoardingData
          : flightBoardingData // ignore: cast_nullable_to_non_nullable
      as List<FlightBoardingData>?,
      hotelBookingData: freezed == hotelBookingData
          ? _self.hotelBookingData
          : hotelBookingData // ignore: cast_nullable_to_non_nullable
      as List<HotelBookingData>?,
      tourBookingData: freezed == tourBookingData
          ? _self.tourBookingData
          : tourBookingData // ignore: cast_nullable_to_non_nullable
      as List<TourBookingData>?,
    ));
  }

  /// Create a copy of BookingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TravelDataCopyWith<$Res> get travelData {
    return $TravelDataCopyWith<$Res>(_self.travelData, (value) {
      return _then(_self.copyWith(travelData: value));
    });
  }
}


/// Adds pattern-matching-related methods to [BookingData].
extension BookingDataPatterns on BookingData {
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

  TResult Function( _BookingData value)? $default,{required TResult orElse(),}){
  final _that = this;
  switch (_that) {
  case _BookingData() when $default != null:
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

  @optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingData value) $default,){
  final _that = this;
  switch (_that) {
  case _BookingData():
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

  @optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingData value)? $default,){
  final _that = this;
  switch (_that) {
  case _BookingData() when $default != null:
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

  @optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int bookingId, String bookingFirstName, String bookingLastName, int bookingPassengers, double bookingPrice, TravelData travelData, List<FlightBoardingData>? flightBoardingData, List<HotelBookingData>? hotelBookingData, List<TourBookingData>? tourBookingData)? $default,{required TResult orElse(),}) {final _that = this;
  switch (_that) {
  case _BookingData() when $default != null:
  return $default(_that.bookingId,_that.bookingFirstName,_that.bookingLastName,_that.bookingPassengers,_that.bookingPrice,_that.travelData,_that.flightBoardingData,_that.hotelBookingData,_that.tourBookingData);case _:
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

  @optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int bookingId, String bookingFirstName, String bookingLastName, int bookingPassengers, double bookingPrice, TravelData travelData, List<FlightBoardingData>? flightBoardingData, List<HotelBookingData>? hotelBookingData, List<TourBookingData>? tourBookingData) $default,) {final _that = this;
  switch (_that) {
  case _BookingData():
  return $default(_that.bookingId,_that.bookingFirstName,_that.bookingLastName,_that.bookingPassengers,_that.bookingPrice,_that.travelData,_that.flightBoardingData,_that.hotelBookingData,_that.tourBookingData);case _:
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

  @optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int bookingId, String bookingFirstName, String bookingLastName, int bookingPassengers, double bookingPrice, TravelData travelData, List<FlightBoardingData>? flightBoardingData, List<HotelBookingData>? hotelBookingData, List<TourBookingData>? tourBookingData)? $default,) {final _that = this;
  switch (_that) {
  case _BookingData() when $default != null:
  return $default(_that.bookingId,_that.bookingFirstName,_that.bookingLastName,_that.bookingPassengers,_that.bookingPrice,_that.travelData,_that.flightBoardingData,_that.hotelBookingData,_that.tourBookingData);case _:
  return null;

  }
  }

}

/// @nodoc
@JsonSerializable()
class _BookingData implements BookingData {
  const _BookingData(
      {required this.bookingId, required this.bookingFirstName, required this.bookingLastName, required this.bookingPassengers, required this.bookingPrice, required this.travelData, required final List<
          FlightBoardingData>? flightBoardingData, required final List<
          HotelBookingData>? hotelBookingData, required final List<
          TourBookingData>? tourBookingData})
      : _flightBoardingData = flightBoardingData,
        _hotelBookingData = hotelBookingData,
        _tourBookingData = tourBookingData;

  factory _BookingData.fromJson(Map<String, dynamic> json) =>
      _$BookingDataFromJson(json);

  @override final int bookingId;
  @override final String bookingFirstName;
  @override final String bookingLastName;
  @override final int bookingPassengers;
  @override final double bookingPrice;
  @override final TravelData travelData;
  final List<FlightBoardingData>? _flightBoardingData;

  @override List<FlightBoardingData>? get flightBoardingData {
    final value = _flightBoardingData;
    if (value == null) return null;
    if (_flightBoardingData is EqualUnmodifiableListView)
      return _flightBoardingData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<HotelBookingData>? _hotelBookingData;

  @override List<HotelBookingData>? get hotelBookingData {
    final value = _hotelBookingData;
    if (value == null) return null;
    if (_hotelBookingData is EqualUnmodifiableListView)
      return _hotelBookingData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TourBookingData>? _tourBookingData;

  @override List<TourBookingData>? get tourBookingData {
    final value = _tourBookingData;
    if (value == null) return null;
    if (_tourBookingData is EqualUnmodifiableListView) return _tourBookingData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }


  /// Create a copy of BookingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BookingDataCopyWith<_BookingData> get copyWith =>
      __$BookingDataCopyWithImpl<_BookingData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BookingDataToJson(this,);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _BookingData &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.bookingFirstName, bookingFirstName) ||
                other.bookingFirstName == bookingFirstName) &&
            (identical(other.bookingLastName, bookingLastName) ||
                other.bookingLastName == bookingLastName) &&
            (identical(other.bookingPassengers, bookingPassengers) ||
                other.bookingPassengers == bookingPassengers) &&
            (identical(other.bookingPrice, bookingPrice) ||
                other.bookingPrice == bookingPrice) &&
            (identical(other.travelData, travelData) ||
                other.travelData == travelData) &&
            const DeepCollectionEquality().equals(
                other._flightBoardingData, _flightBoardingData) &&
            const DeepCollectionEquality().equals(
                other._hotelBookingData, _hotelBookingData) &&
            const DeepCollectionEquality().equals(
                other._tourBookingData, _tourBookingData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(
          runtimeType,
          bookingId,
          bookingFirstName,
          bookingLastName,
          bookingPassengers,
          bookingPrice,
          travelData,
          const DeepCollectionEquality().hash(_flightBoardingData),
          const DeepCollectionEquality().hash(_hotelBookingData),
          const DeepCollectionEquality().hash(_tourBookingData));

  @override
  String toString() {
    return 'BookingData(bookingId: $bookingId, bookingFirstName: $bookingFirstName, bookingLastName: $bookingLastName, bookingPassengers: $bookingPassengers, bookingPrice: $bookingPrice, travelData: $travelData, flightBoardingData: $flightBoardingData, hotelBookingData: $hotelBookingData, tourBookingData: $tourBookingData)';
  }


}

/// @nodoc
abstract mixin class _$BookingDataCopyWith<$Res>
    implements $BookingDataCopyWith<$Res> {
  factory _$BookingDataCopyWith(_BookingData value,
      $Res Function(_BookingData) _then) = __$BookingDataCopyWithImpl;

  @override
  @useResult
  $Res call({
    int bookingId, String bookingFirstName, String bookingLastName, int bookingPassengers, double bookingPrice, TravelData travelData, List<
        FlightBoardingData>? flightBoardingData, List<
        HotelBookingData>? hotelBookingData, List<
        TourBookingData>? tourBookingData
  });


  @override $TravelDataCopyWith<$Res> get travelData;

}

/// @nodoc
class __$BookingDataCopyWithImpl<$Res>
    implements _$BookingDataCopyWith<$Res> {
  __$BookingDataCopyWithImpl(this._self, this._then);

  final _BookingData _self;
  final $Res Function(_BookingData) _then;

  /// Create a copy of BookingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call(
      {Object? bookingId = null, Object? bookingFirstName = null, Object? bookingLastName = null, Object? bookingPassengers = null, Object? bookingPrice = null, Object? travelData = null, Object? flightBoardingData = freezed, Object? hotelBookingData = freezed, Object? tourBookingData = freezed,}) {
    return _then(_BookingData(
      bookingId: null == bookingId
          ? _self.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
      as int,
      bookingFirstName: null == bookingFirstName
          ? _self.bookingFirstName
          : bookingFirstName // ignore: cast_nullable_to_non_nullable
      as String,
      bookingLastName: null == bookingLastName
          ? _self.bookingLastName
          : bookingLastName // ignore: cast_nullable_to_non_nullable
      as String,
      bookingPassengers: null == bookingPassengers
          ? _self.bookingPassengers
          : bookingPassengers // ignore: cast_nullable_to_non_nullable
      as int,
      bookingPrice: null == bookingPrice
          ? _self.bookingPrice
          : bookingPrice // ignore: cast_nullable_to_non_nullable
      as double,
      travelData: null == travelData
          ? _self.travelData
          : travelData // ignore: cast_nullable_to_non_nullable
      as TravelData,
      flightBoardingData: freezed == flightBoardingData
          ? _self._flightBoardingData
          : flightBoardingData // ignore: cast_nullable_to_non_nullable
      as List<FlightBoardingData>?,
      hotelBookingData: freezed == hotelBookingData
          ? _self._hotelBookingData
          : hotelBookingData // ignore: cast_nullable_to_non_nullable
      as List<HotelBookingData>?,
      tourBookingData: freezed == tourBookingData
          ? _self._tourBookingData
          : tourBookingData // ignore: cast_nullable_to_non_nullable
      as List<TourBookingData>?,
    ));
  }

  /// Create a copy of BookingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TravelDataCopyWith<$Res> get travelData {
    return $TravelDataCopyWith<$Res>(_self.travelData, (value) {
      return _then(_self.copyWith(travelData: value));
    });
  }
}

// dart format on
