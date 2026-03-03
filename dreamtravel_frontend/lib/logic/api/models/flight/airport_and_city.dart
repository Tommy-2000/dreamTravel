// // To parse this JSON data, do
// //
// //     final airportAndCity = airportAndCityFromJson(jsonString);
//
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'dart:convert';
//
// part 'airport_and_city.freezed.dart';
// part 'airport_and_city.g.dart';
//
// AirportAndCity airportAndCityFromJson(String str) => AirportAndCity.fromJson(json.decode(str));
//
// String airportAndCityToJson(AirportAndCity data) => json.encode(data.toJson());
//
// @freezed
// class AirportAndCity with _$AirportAndCity {
//   const factory AirportAndCity({
//     @JsonKey(name: "type")
//     required String type,
//     @JsonKey(name: "subType")
//     required String subType,
//     @JsonKey(name: "name")
//     required String name,
//     @JsonKey(name: "detailedName")
//     required String detailedName,
//     @JsonKey(name: "id")
//     required String id,
//     @JsonKey(name: "self")
//     required Self self,
//     @JsonKey(name: "timeZoneOffset")
//     required String timeZoneOffset,
//     @JsonKey(name: "iataCode")
//     required String iataCode,
//     @JsonKey(name: "geoCode")
//     required GeoCode geoCode,
//     @JsonKey(name: "address")
//     required Address address,
//     @JsonKey(name: "analytics")
//     required Analytics analytics,
//   }) = _AirportAndCity;
//
//   factory AirportAndCity.fromJson(Map<String, dynamic> json) => _$AirportAndCityFromJson(json);
// }
//
// @freezed
// class Address with _$Address {
//   const factory Address({
//     @JsonKey(name: "cityName")
//     required String cityName,
//     @JsonKey(name: "cityCode")
//     required String cityCode,
//     @JsonKey(name: "countryName")
//     required String countryName,
//     @JsonKey(name: "countryCode")
//     required String countryCode,
//     @JsonKey(name: "regionCode")
//     required String regionCode,
//   }) = _Address;
//
//   factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
// }
//
// @freezed
// class Analytics with _$Analytics {
//   const factory Analytics({
//     @JsonKey(name: "travelers")
//     required Travelers travelers,
//   }) = _Analytics;
//
//   factory Analytics.fromJson(Map<String, dynamic> json) => _$AnalyticsFromJson(json);
// }
//
// @freezed
// class Travelers with _$Travelers {
//   const factory Travelers({
//     @JsonKey(name: "score")
//     required int score,
//   }) = _Travelers;
//
//   factory Travelers.fromJson(Map<String, dynamic> json) => _$TravelersFromJson(json);
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
//
// @freezed
// class Self with _$Self {
//   const factory Self({
//     @JsonKey(name: "href")
//     required String href,
//     @JsonKey(name: "methods")
//     required List<String> methods,
//   }) = _Self;
//
//   factory Self.fromJson(Map<String, dynamic> json) => _$SelfFromJson(json);
// }
