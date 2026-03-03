// // To parse this JSON data, do
// //
// //     final flightStatus = flightStatusFromJson(jsonString);
//
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'dart:convert';
//
// part 'flight_status.freezed.dart';
// part 'flight_status.g.dart';
//
// FlightStatus flightStatusFromJson(String str) => FlightStatus.fromJson(json.decode(str));
//
// String flightStatusToJson(FlightStatus data) => json.encode(data.toJson());
//
// @freezed
// class FlightStatus with _$FlightStatus {
//   const factory FlightStatus({
//     @JsonKey(name: "type")
//     required String type,
//     @JsonKey(name: "scheduledDepartureDate")
//     required DateTime scheduledDepartureDate,
//     @JsonKey(name: "flightDesignator")
//     required FlightDesignator flightDesignator,
//     @JsonKey(name: "flightPoints")
//     required List<FlightPoint> flightPoints,
//     @JsonKey(name: "segments")
//     required List<Segment> segments,
//     @JsonKey(name: "legs")
//     required List<Leg> legs,
//   }) = _FlightStatus;
//
//   factory FlightStatus.fromJson(Map<String, dynamic> json) => _$FlightStatusFromJson(json);
// }
//
// @freezed
// class FlightDesignator with _$FlightDesignator {
//   const factory FlightDesignator({
//     @JsonKey(name: "carrierCode")
//     required String carrierCode,
//     @JsonKey(name: "flightNumber")
//     required int flightNumber,
//   }) = _FlightDesignator;
//
//   factory FlightDesignator.fromJson(Map<String, dynamic> json) => _$FlightDesignatorFromJson(json);
// }
//
// @freezed
// class FlightPoint with _$FlightPoint {
//   const factory FlightPoint({
//     @JsonKey(name: "iataCode")
//     required String iataCode,
//     @JsonKey(name: "departure")
//     Arrival? departure,
//     @JsonKey(name: "arrival")
//     Arrival? arrival,
//   }) = _FlightPoint;
//
//   factory FlightPoint.fromJson(Map<String, dynamic> json) => _$FlightPointFromJson(json);
// }
//
// @freezed
// class Arrival with _$Arrival {
//   const factory Arrival({
//     @JsonKey(name: "timings")
//     required List<Timing> timings,
//   }) = _Arrival;
//
//   factory Arrival.fromJson(Map<String, dynamic> json) => _$ArrivalFromJson(json);
// }
//
// @freezed
// class Timing with _$Timing {
//   const factory Timing({
//     @JsonKey(name: "qualifier")
//     required String qualifier,
//     @JsonKey(name: "value")
//     required String value,
//   }) = _Timing;
//
//   factory Timing.fromJson(Map<String, dynamic> json) => _$TimingFromJson(json);
// }
//
// @freezed
// class Leg with _$Leg {
//   const factory Leg({
//     @JsonKey(name: "boardPointIataCode")
//     required String boardPointIataCode,
//     @JsonKey(name: "offPointIataCode")
//     required String offPointIataCode,
//     @JsonKey(name: "aircraftEquipment")
//     required AircraftEquipment aircraftEquipment,
//     @JsonKey(name: "scheduledLegDuration")
//     required String scheduledLegDuration,
//   }) = _Leg;
//
//   factory Leg.fromJson(Map<String, dynamic> json) => _$LegFromJson(json);
// }
//
// @freezed
// class AircraftEquipment with _$AircraftEquipment {
//   const factory AircraftEquipment({
//     @JsonKey(name: "aircraftType")
//     required String aircraftType,
//   }) = _AircraftEquipment;
//
//   factory AircraftEquipment.fromJson(Map<String, dynamic> json) => _$AircraftEquipmentFromJson(json);
// }
//
// @freezed
// class Segment with _$Segment {
//   const factory Segment({
//     @JsonKey(name: "boardPointIataCode")
//     required String boardPointIataCode,
//     @JsonKey(name: "offPointIataCode")
//     required String offPointIataCode,
//     @JsonKey(name: "scheduledSegmentDuration")
//     required String scheduledSegmentDuration,
//     @JsonKey(name: "partnership")
//     required Partnership partnership,
//   }) = _Segment;
//
//   factory Segment.fromJson(Map<String, dynamic> json) => _$SegmentFromJson(json);
// }
//
// @freezed
// class Partnership with _$Partnership {
//   const factory Partnership({
//     @JsonKey(name: "operatingFlight")
//     required FlightDesignator operatingFlight,
//   }) = _Partnership;
//
//   factory Partnership.fromJson(Map<String, dynamic> json) => _$PartnershipFromJson(json);
// }
