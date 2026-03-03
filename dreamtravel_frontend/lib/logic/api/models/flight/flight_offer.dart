// // To parse this JSON data, do
// //
// //     final flightOffer = flightOfferFromJson(jsonString);
//
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'dart:convert';
//
// part 'flight_offer.freezed.dart';
// part 'flight_offer.g.dart';
//
// FlightOffer flightOfferFromJson(String str) => FlightOffer.fromJson(json.decode(str));
//
// String flightOfferToJson(FlightOffer data) => json.encode(data.toJson());
//
// @freezed
// class FlightOffer with _$FlightOffer {
//   const factory FlightOffer({
//     @JsonKey(name: "type")
//     required String type,
//     @JsonKey(name: "id")
//     required String id,
//     @JsonKey(name: "source")
//     required String source,
//     @JsonKey(name: "instantTicketingRequired")
//     required bool instantTicketingRequired,
//     @JsonKey(name: "nonHomogeneous")
//     required bool nonHomogeneous,
//     @JsonKey(name: "oneWay")
//     required bool oneWay,
//     @JsonKey(name: "isUpsellOffer")
//     required bool isUpsellOffer,
//     @JsonKey(name: "lastTicketingDate")
//     required DateTime lastTicketingDate,
//     @JsonKey(name: "lastTicketingDateTime")
//     required DateTime lastTicketingDateTime,
//     @JsonKey(name: "numberOfBookableSeats")
//     required int numberOfBookableSeats,
//     @JsonKey(name: "itineraries")
//     required List<Itinerary> itineraries,
//     @JsonKey(name: "price")
//     required FlightOfferPrice price,
//     @JsonKey(name: "pricingOptions")
//     required PricingOptions pricingOptions,
//     @JsonKey(name: "validatingAirlineCodes")
//     required List<String> validatingAirlineCodes,
//     @JsonKey(name: "travelerPricings")
//     required List<TravelerPricing> travelerPricings,
//   }) = _FlightOffer;
//
//   factory FlightOffer.fromJson(Map<String, dynamic> json) => _$FlightOfferFromJson(json);
// }
//
// @freezed
// class Itinerary with _$Itinerary {
//   const factory Itinerary({
//     @JsonKey(name: "duration")
//     required String duration,
//     @JsonKey(name: "segments")
//     required List<Segment> segments,
//   }) = _Itinerary;
//
//   factory Itinerary.fromJson(Map<String, dynamic> json) => _$ItineraryFromJson(json);
// }
//
// @freezed
// class Segment with _$Segment {
//   const factory Segment({
//     @JsonKey(name: "departure")
//     required Arrival departure,
//     @JsonKey(name: "arrival")
//     required Arrival arrival,
//     @JsonKey(name: "carrierCode")
//     required String carrierCode,
//     @JsonKey(name: "number")
//     required String number,
//     @JsonKey(name: "aircraft")
//     required Aircraft aircraft,
//     @JsonKey(name: "operating")
//     required Operating operating,
//     @JsonKey(name: "duration")
//     required String duration,
//     @JsonKey(name: "id")
//     required String id,
//     @JsonKey(name: "numberOfStops")
//     required int numberOfStops,
//     @JsonKey(name: "blacklistedInEU")
//     required bool blacklistedInEu,
//   }) = _Segment;
//
//   factory Segment.fromJson(Map<String, dynamic> json) => _$SegmentFromJson(json);
// }
//
// @freezed
// class Aircraft with _$Aircraft {
//   const factory Aircraft({
//     @JsonKey(name: "code")
//     required String code,
//   }) = _Aircraft;
//
//   factory Aircraft.fromJson(Map<String, dynamic> json) => _$AircraftFromJson(json);
// }
//
// @freezed
// class Arrival with _$Arrival {
//   const factory Arrival({
//     @JsonKey(name: "iataCode")
//     required String iataCode,
//     @JsonKey(name: "terminal")
//     String? terminal,
//     @JsonKey(name: "at")
//     required DateTime at,
//   }) = _Arrival;
//
//   factory Arrival.fromJson(Map<String, dynamic> json) => _$ArrivalFromJson(json);
// }
//
// @freezed
// class Operating with _$Operating {
//   const factory Operating({
//     @JsonKey(name: "carrierCode")
//     required String carrierCode,
//   }) = _Operating;
//
//   factory Operating.fromJson(Map<String, dynamic> json) => _$OperatingFromJson(json);
// }
//
// @freezed
// class FlightOfferPrice with _$FlightOfferPrice {
//   const factory FlightOfferPrice({
//     @JsonKey(name: "currency")
//     required String currency,
//     @JsonKey(name: "total")
//     required String total,
//     @JsonKey(name: "base")
//     required String base,
//     @JsonKey(name: "fees")
//     required List<AdditionalService> fees,
//     @JsonKey(name: "grandTotal")
//     required String grandTotal,
//     @JsonKey(name: "additionalServices")
//     required List<AdditionalService> additionalServices,
//   }) = _FlightOfferPrice;
//
//   factory FlightOfferPrice.fromJson(Map<String, dynamic> json) => _$FlightOfferPriceFromJson(json);
// }
//
// @freezed
// class AdditionalService with _$AdditionalService {
//   const factory AdditionalService({
//     @JsonKey(name: "amount")
//     required String amount,
//     @JsonKey(name: "type")
//     required String type,
//   }) = _AdditionalService;
//
//   factory AdditionalService.fromJson(Map<String, dynamic> json) => _$AdditionalServiceFromJson(json);
// }
//
// @freezed
// class PricingOptions with _$PricingOptions {
//   const factory PricingOptions({
//     @JsonKey(name: "fareType")
//     required List<String> fareType,
//     @JsonKey(name: "includedCheckedBagsOnly")
//     required bool includedCheckedBagsOnly,
//   }) = _PricingOptions;
//
//   factory PricingOptions.fromJson(Map<String, dynamic> json) => _$PricingOptionsFromJson(json);
// }
//
// @freezed
// class TravelerPricing with _$TravelerPricing {
//   const factory TravelerPricing({
//     @JsonKey(name: "travelerId")
//     required String travelerId,
//     @JsonKey(name: "fareOption")
//     required String fareOption,
//     @JsonKey(name: "travelerType")
//     required String travelerType,
//     @JsonKey(name: "price")
//     required TravelerPricingPrice price,
//     @JsonKey(name: "fareDetailsBySegment")
//     required List<FareDetailsBySegment> fareDetailsBySegment,
//   }) = _TravelerPricing;
//
//   factory TravelerPricing.fromJson(Map<String, dynamic> json) => _$TravelerPricingFromJson(json);
// }
//
// @freezed
// class FareDetailsBySegment with _$FareDetailsBySegment {
//   const factory FareDetailsBySegment({
//     @JsonKey(name: "segmentId")
//     required String segmentId,
//     @JsonKey(name: "cabin")
//     required String cabin,
//     @JsonKey(name: "fareBasis")
//     required String fareBasis,
//     @JsonKey(name: "brandedFare")
//     required String brandedFare,
//     @JsonKey(name: "brandedFareLabel")
//     required String brandedFareLabel,
//     @JsonKey(name: "class")
//     required String fareDetailsBySegmentClass,
//     @JsonKey(name: "includedCheckedBags")
//     required IncludedCBags includedCheckedBags,
//     @JsonKey(name: "includedCabinBags")
//     required IncludedCBags includedCabinBags,
//     @JsonKey(name: "amenities")
//     required List<Amenity> amenities,
//   }) = _FareDetailsBySegment;
//
//   factory FareDetailsBySegment.fromJson(Map<String, dynamic> json) => _$FareDetailsBySegmentFromJson(json);
// }
//
// @freezed
// class Amenity with _$Amenity {
//   const factory Amenity({
//     @JsonKey(name: "description")
//     required String description,
//     @JsonKey(name: "isChargeable")
//     required bool isChargeable,
//     @JsonKey(name: "amenityType")
//     required String amenityType,
//     @JsonKey(name: "amenityProvider")
//     required AmenityProvider amenityProvider,
//   }) = _Amenity;
//
//   factory Amenity.fromJson(Map<String, dynamic> json) => _$AmenityFromJson(json);
// }
//
// @freezed
// class AmenityProvider with _$AmenityProvider {
//   const factory AmenityProvider({
//     @JsonKey(name: "name")
//     required String name,
//   }) = _AmenityProvider;
//
//   factory AmenityProvider.fromJson(Map<String, dynamic> json) => _$AmenityProviderFromJson(json);
// }
//
// @freezed
// class IncludedCBags with _$IncludedCBags {
//   const factory IncludedCBags({
//     @JsonKey(name: "quantity")
//     required int quantity,
//   }) = _IncludedCBags;
//
//   factory IncludedCBags.fromJson(Map<String, dynamic> json) => _$IncludedCBagsFromJson(json);
// }
//
// @freezed
// class TravelerPricingPrice with _$TravelerPricingPrice {
//   const factory TravelerPricingPrice({
//     @JsonKey(name: "currency")
//     required String currency,
//     @JsonKey(name: "total")
//     required String total,
//     @JsonKey(name: "base")
//     required String base,
//   }) = _TravelerPricingPrice;
//
//   factory TravelerPricingPrice.fromJson(Map<String, dynamic> json) => _$TravelerPricingPriceFromJson(json);
// }
