// // To parse this JSON data, do
// //
// //     final hotelByGeocode = hotelByGeocodeFromJson(jsonString);
//
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'dart:convert';
//
// part 'hotel_by_geocode.freezed.dart';
// part 'hotel_by_geocode.g.dart';
//
// HotelByGeocode hotelByGeocodeFromJson(String str) => HotelByGeocode.fromJson(json.decode(str));
//
// String hotelByGeocodeToJson(HotelByGeocode data) => json.encode(data.toJson());
//
// @freezed
// class HotelByGeocode with _$HotelByGeocode {
//   const factory HotelByGeocode({
//     @JsonKey(name: "chainCode")
//     required String chainCode,
//     @JsonKey(name: "iataCode")
//     required String iataCode,
//     @JsonKey(name: "dupeId")
//     required int dupeId,
//     @JsonKey(name: "name")
//     required String name,
//     @JsonKey(name: "hotelId")
//     required String hotelId,
//     @JsonKey(name: "geoCode")
//     required GeoCode geoCode,
//     @JsonKey(name: "address")
//     required Address address,
//     @JsonKey(name: "distance")
//     required Distance distance,
//     @JsonKey(name: "lastUpdate")
//     required DateTime lastUpdate,
//   }) = _HotelByGeocode;
//
//   factory HotelByGeocode.fromJson(Map<String, dynamic> json) => _$HotelByGeocodeFromJson(json);
// }
//
// @freezed
// class Address with _$Address {
//   const factory Address({
//     @JsonKey(name: "countryCode")
//     required String countryCode,
//     @JsonKey(name: "postalCode")
//     required String postalCode,
//     @JsonKey(name: "cityName")
//     required String cityName,
//     @JsonKey(name: "lines")
//     required List<String> lines,
//   }) = _Address;
//
//   factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
// }
//
// @freezed
// class Distance with _$Distance {
//   const factory Distance({
//     @JsonKey(name: "value")
//     required double value,
//     @JsonKey(name: "unit")
//     required String unit,
//   }) = _Distance;
//
//   factory Distance.fromJson(Map<String, dynamic> json) => _$DistanceFromJson(json);
// }
//
// @freezed
// class GeoCode with _$GeoCode {
//   const factory GeoCode({
//     @JsonKey(name: "latitude")
//     required double latitude,
//     @JsonKey(name: "longitude")
//     required double longitude,
//   }) = _GeoCode;
//
//   factory GeoCode.fromJson(Map<String, dynamic> json) => _$GeoCodeFromJson(json);
// }
