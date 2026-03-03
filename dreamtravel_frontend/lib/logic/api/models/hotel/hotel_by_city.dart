// // To parse this JSON data, do
// //
// //     final hotelByCity = hotelByCityFromJson(jsonString);
//
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'dart:convert';
//
// part 'hotel_by_city.freezed.dart';
// part 'hotel_by_city.g.dart';
//
// HotelByCity hotelByCityFromJson(String str) => HotelByCity.fromJson(json.decode(str));
//
// String hotelByCityToJson(HotelByCity data) => json.encode(data.toJson());
//
// @freezed
// class HotelByCity with _$HotelByCity {
//   const factory HotelByCity({
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
//     @JsonKey(name: "lastUpdate")
//     required DateTime lastUpdate,
//   }) = _HotelByCity;
//
//   factory HotelByCity.fromJson(Map<String, dynamic> json) => _$HotelByCityFromJson(json);
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
