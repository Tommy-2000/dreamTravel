import * as z from "zod";

export const AddressSchema = z.object({
    "cityName": z.string(),
    "cityCode": z.string(),
    "countryName": z.string(),
    "countryCode": z.string(),
    "regionCode": z.string(),
});
export type Address = z.infer<typeof AddressSchema>;

export const TravelersSchema = z.object({
    "score": z.number(),
});
export type Travelers = z.infer<typeof TravelersSchema>;

export const GeoCodeSchema = z.object({
    "latitude": z.number(),
    "longitude": z.number(),
});
export type GeoCode = z.infer<typeof GeoCodeSchema>;

export const SelfSchema = z.object({
    "href": z.string(),
    "methods": z.array(z.string()),
});
export type Self = z.infer<typeof SelfSchema>;

export const AnalyticsSchema = z.object({
    "travelers": TravelersSchema,
});
export type Analytics = z.infer<typeof AnalyticsSchema>;

export const AirportAndCitySearchSchema = z.object({
    "type": z.string(),
    "subType": z.string(),
    "name": z.string(),
    "detailedName": z.string(),
    "id": z.string(),
    "self": SelfSchema,
    "timeZoneOffset": z.string(),
    "iataCode": z.string(),
    "geoCode": GeoCodeSchema,
    "address": AddressSchema,
    "analytics": AnalyticsSchema,
});

export const AircraftSchema = z.object({
    "code": z.string(),
});
export type Aircraft = z.infer<typeof AircraftSchema>;

export const ArrivalSchema = z.object({
    "iataCode": z.string(),
    "terminal": z.string().optional(),
    "at": z.coerce.date(),
});
export type Arrival = z.infer<typeof ArrivalSchema>;

export const OperatingSchema = z.object({
    "carrierCode": z.string(),
});
export type Operating = z.infer<typeof OperatingSchema>;

export const AdditionalServiceSchema = z.object({
    "amount": z.string(),
    "type": z.string(),
});
export type AdditionalService = z.infer<typeof AdditionalServiceSchema>;

export const PricingOptionsSchema = z.object({
    "fareType": z.array(z.string()),
    "includedCheckedBagsOnly": z.boolean(),
});
export type PricingOptions = z.infer<typeof PricingOptionsSchema>;

export const AmenityProviderSchema = z.object({
    "name": z.string(),
});
export type AmenityProvider = z.infer<typeof AmenityProviderSchema>;

export const IncludedCBagsSchema = z.object({
    "quantity": z.number(),
});
export type IncludedCBags = z.infer<typeof IncludedCBagsSchema>;

export const TravelerPricingPriceSchema = z.object({
    "currency": z.string(),
    "total": z.string(),
    "base": z.string(),
});
export type TravelerPricingPrice = z.infer<typeof TravelerPricingPriceSchema>;

export const SegmentSchema = z.object({
    "departure": ArrivalSchema,
    "arrival": ArrivalSchema,
    "carrierCode": z.string(),
    "number": z.string(),
    "aircraft": AircraftSchema,
    "operating": OperatingSchema,
    "duration": z.string(),
    "id": z.string(),
    "numberOfStops": z.number(),
    "blacklistedInEU": z.boolean(),
});
export type Segment = z.infer<typeof SegmentSchema>;

export const FlightOfferSearchPriceSchema = z.object({
    "currency": z.string(),
    "total": z.string(),
    "base": z.string(),
    "fees": z.array(AdditionalServiceSchema),
    "grandTotal": z.string(),
    "additionalServices": z.array(AdditionalServiceSchema),
});
export type FlightOfferSearchPrice = z.infer<typeof FlightOfferSearchPriceSchema>;

export const AmenitySchema = z.object({
    "description": z.string(),
    "isChargeable": z.boolean(),
    "amenityType": z.string(),
    "amenityProvider": AmenityProviderSchema,
});
export type Amenity = z.infer<typeof AmenitySchema>;

export const ItinerarySchema = z.object({
    "duration": z.string(),
    "segments": z.array(SegmentSchema),
});
export type Itinerary = z.infer<typeof ItinerarySchema>;

export const FareDetailsBySegmentSchema = z.object({
    "segmentId": z.string(),
    "cabin": z.string(),
    "fareBasis": z.string(),
    "brandedFare": z.string(),
    "brandedFareLabel": z.string(),
    "class": z.string(),
    "includedCheckedBags": IncludedCBagsSchema,
    "includedCabinBags": IncludedCBagsSchema,
    "amenities": z.array(AmenitySchema),
});
export type FareDetailsBySegment = z.infer<typeof FareDetailsBySegmentSchema>;

export const TravelerPricingSchema = z.object({
    "travelerId": z.string(),
    "fareOption": z.string(),
    "travelerType": z.string(),
    "price": TravelerPricingPriceSchema,
    "fareDetailsBySegment": z.array(FareDetailsBySegmentSchema),
});
export type TravelerPricing = z.infer<typeof TravelerPricingSchema>;

export const FlightOffersSearchSchema = z.object({
    "type": z.string(),
    "id": z.string(),
    "source": z.string(),
    "instantTicketingRequired": z.boolean(),
    "nonHomogeneous": z.boolean(),
    "oneWay": z.boolean(),
    "isUpsellOffer": z.boolean(),
    "lastTicketingDate": z.string(),
    "lastTicketingDateTime": z.string(),
    "numberOfBookableSeats": z.number(),
    "itineraries": z.array(ItinerarySchema),
    "price": FlightOfferSearchPriceSchema,
    "pricingOptions": PricingOptionsSchema,
    "validatingAirlineCodes": z.array(z.string()),
    "travelerPricings": z.array(TravelerPricingSchema),
});

export const SponsorshipSchema = z.object({
    "isSponsored": z.boolean(),
});
export type Sponsorship = z.infer<typeof SponsorshipSchema>;

export const RetailingSchema = z.object({
    "sponsorship": SponsorshipSchema,
});
export type Retailing = z.infer<typeof RetailingSchema>;

export const HotelByCitySearchSchema = z.object({
    "chainCode": z.string(),
    "iataCode": z.string(),
    "dupeId": z.number(),
    "name": z.string(),
    "hotelId": z.string(),
    "geoCode": GeoCodeSchema,
    "address": AddressSchema,
    "lastUpdate": z.coerce.date(),
    "retailing": RetailingSchema,
});

export const ContactSchema = z.object({
    "phone": z.string(),
});
export type Contact = z.infer<typeof ContactSchema>;

export const DescriptionSchema = z.object({
    "text": z.string(),
    "lang": z.string(),
});
export type Description = z.infer<typeof DescriptionSchema>;

export const GuestsSchema = z.object({
    "adults": z.number(),
});
export type Guests = z.infer<typeof GuestsSchema>;

export const RefundableSchema = z.object({
    "cancellationRefund": z.string(),
});
export type Refundable = z.infer<typeof RefundableSchema>;

export const TaxSchema = z.object({
    "amount": z.string(),
    "currency": z.string(),
    "code": z.string().optional(),
    "included": z.boolean().optional(),
});
export type Tax = z.infer<typeof TaxSchema>;

export const AverageSchema = z.object({
    "total": z.string(),
});
export type Average = z.infer<typeof AverageSchema>;

export const ChangeSchema = z.object({
    "startDate": z.string(),
    "endDate": z.string(),
    "total": z.string(),
});
export type Change = z.infer<typeof ChangeSchema>;

export const TypeEstimatedSchema = z.object({
});
export type TypeEstimated = z.infer<typeof TypeEstimatedSchema>;

export const NameSchema = z.object({
    "text": z.string(),
});
export type Name = z.infer<typeof NameSchema>;

export const HotelSchema = z.object({
    "type": z.string(),
    "hotelId": z.string(),
    "chainCode": z.string(),
    "dupeId": z.string(),
    "name": z.string(),
    "cityCode": z.string(),
    "latitude": z.number(),
    "longitude": z.number(),
    "contact": ContactSchema,
});
export type Hotel = z.infer<typeof HotelSchema>;

export const PoliciesSchema = z.object({
    "refundable": RefundableSchema,
});
export type Policies = z.infer<typeof PoliciesSchema>;

export const VariationsSchema = z.object({
    "average": AverageSchema,
    "changes": z.array(ChangeSchema),
});
export type Variations = z.infer<typeof VariationsSchema>;

export const RoomSchema = z.object({
    "type": z.string(),
    "typeEstimated": TypeEstimatedSchema,
    "description": DescriptionSchema,
});
export type Room = z.infer<typeof RoomSchema>;

export const RoomInformationSchema = z.object({
    "description": z.string(),
    "type": z.string(),
    "typeEstimated": TypeEstimatedSchema,
    "name": NameSchema,
});
export type RoomInformation = z.infer<typeof RoomInformationSchema>;

export const PriceSchema = z.object({
    "currency": z.string(),
    "total": z.string(),
    "taxes": z.array(TaxSchema),
    "variations": VariationsSchema,
});
export type Price = z.infer<typeof PriceSchema>;

export const OfferSchema = z.object({
    "id": z.string(),
    "checkInDate": z.string(),
    "checkOutDate": z.string(),
    "rateCode": z.string(),
    "description": DescriptionSchema,
    "boardType": z.string(),
    "room": RoomSchema,
    "guests": GuestsSchema,
    "price": PriceSchema,
    "policies": PoliciesSchema,
    "self": z.string(),
    "roomInformation": RoomInformationSchema,
});
export type Offer = z.infer<typeof OfferSchema>;

export const HotelOffersSearchSchema = z.object({
    "type": z.string(),
    "hotel": HotelSchema,
    "available": z.boolean(),
    "offers": z.array(OfferSchema),
    "self": z.string(),
});


// Flight Types
export type AirportAndCitySearch = z.infer<typeof AirportAndCitySearchSchema>;
export type FlightOffersSearch = z.infer<typeof FlightOffersSearchSchema>;


// Hotel Types
export type HotelByCitySearch = z.infer<typeof HotelByCitySearchSchema>;
export type HotelOffersSearch = z.infer<typeof HotelOffersSearchSchema>;


