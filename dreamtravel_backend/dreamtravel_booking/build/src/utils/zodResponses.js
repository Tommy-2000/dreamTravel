"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || (function () {
    var ownKeys = function(o) {
        ownKeys = Object.getOwnPropertyNames || function (o) {
            var ar = [];
            for (var k in o) if (Object.prototype.hasOwnProperty.call(o, k)) ar[ar.length] = k;
            return ar;
        };
        return ownKeys(o);
    };
    return function (mod) {
        if (mod && mod.__esModule) return mod;
        var result = {};
        if (mod != null) for (var k = ownKeys(mod), i = 0; i < k.length; i++) if (k[i] !== "default") __createBinding(result, mod, k[i]);
        __setModuleDefault(result, mod);
        return result;
    };
})();
Object.defineProperty(exports, "__esModule", { value: true });
exports.PurplePhoneSchema = exports.AssociatedRecordSchema = exports.SliceDiceIndicatorSchema = exports.FareBasisSchema = exports.ClassEnumSchema = exports.BrandedFareSchema = exports.TourReferenceSchema = exports.TourNameSchema = exports.CabinSchema = exports.HotelOffersResponseSchema = exports.OfferSchema = exports.PriceSchema = exports.RoomInformationSchema = exports.RoomSchema = exports.VariationsSchema = exports.PoliciesSchema = exports.HotelSchema = exports.NameSchema = exports.TypeEstimatedSchema = exports.ChangeSchema = exports.AverageSchema = exports.TaxSchema = exports.RefundableSchema = exports.GuestsSchema = exports.DescriptionSchema = exports.ContactSchema = exports.HotelByCityResponseSchema = exports.RetailingSchema = exports.SponsorshipSchema = exports.FlightOffersResponseSchema = exports.TravelerPricingSchema = exports.FareDetailsBySegmentSchema = exports.ItinerarySchema = exports.AmenitySchema = exports.FlightOfferSearchPriceSchema = exports.SegmentSchema = exports.TravelerPricingPriceSchema = exports.IncludedCBagsSchema = exports.AmenityProviderSchema = exports.PricingOptionsSchema = exports.AdditionalServiceSchema = exports.OperatingSchema = exports.ArrivalSchema = exports.AircraftSchema = exports.AirportAndCityResponseSchema = exports.AnalyticsSchema = exports.SelfSchema = exports.GeoCodeSchema = exports.TravelersSchema = exports.AddressSchema = void 0;
exports.FlightOrderStatusSchema = exports.FlightOfferSchema = exports.TravelerSchema = exports.DictionariesSchema = exports.TravelerContactSchema = exports.AdditionalServicesSchema = exports.FlightOfferPriceSchema = exports.LocationsSchema = exports.ContactElementSchema = exports.DocumentSchema = exports.FluffyPhoneSchema = exports.TicketingAggreementSchema = exports.IncludedCheckedBagsSchema = exports.AllotmentDetailsSchema = exports.ChargeableCheckedBagsSchema = exports.Co2EmissionSchema = exports.CdgSchema = void 0;
const z = __importStar(require("zod"));
exports.AddressSchema = z.object({
    "cityName": z.string(),
    "cityCode": z.string(),
    "countryName": z.string(),
    "countryCode": z.string(),
    "regionCode": z.string(),
});
exports.TravelersSchema = z.object({
    "score": z.number(),
});
exports.GeoCodeSchema = z.object({
    "latitude": z.number(),
    "longitude": z.number(),
});
exports.SelfSchema = z.object({
    "href": z.string(),
    "methods": z.array(z.string()),
});
exports.AnalyticsSchema = z.object({
    "travelers": exports.TravelersSchema,
});
exports.AirportAndCityResponseSchema = z.object({
    "type": z.string(),
    "subType": z.string(),
    "name": z.string(),
    "detailedName": z.string(),
    "id": z.string(),
    "self": exports.SelfSchema,
    "timeZoneOffset": z.string(),
    "iataCode": z.string(),
    "geoCode": exports.GeoCodeSchema,
    "address": exports.AddressSchema,
    "analytics": exports.AnalyticsSchema,
});
exports.AircraftSchema = z.object({
    "code": z.string(),
});
exports.ArrivalSchema = z.object({
    "iataCode": z.string(),
    "terminal": z.string().optional(),
    "at": z.coerce.date(),
});
exports.OperatingSchema = z.object({
    "carrierCode": z.string(),
});
exports.AdditionalServiceSchema = z.object({
    "amount": z.string(),
    "type": z.string(),
});
exports.PricingOptionsSchema = z.object({
    "fareType": z.array(z.string()),
    "includedCheckedBagsOnly": z.boolean(),
});
exports.AmenityProviderSchema = z.object({
    "name": z.string(),
});
exports.IncludedCBagsSchema = z.object({
    "quantity": z.number(),
});
exports.TravelerPricingPriceSchema = z.object({
    "currency": z.string(),
    "total": z.string(),
    "base": z.string(),
});
exports.SegmentSchema = z.object({
    "departure": exports.ArrivalSchema,
    "arrival": exports.ArrivalSchema,
    "carrierCode": z.string(),
    "number": z.string(),
    "aircraft": exports.AircraftSchema,
    "operating": exports.OperatingSchema,
    "duration": z.string(),
    "id": z.string(),
    "numberOfStops": z.number(),
    "blacklistedInEU": z.boolean(),
});
exports.FlightOfferSearchPriceSchema = z.object({
    "currency": z.string(),
    "total": z.string(),
    "base": z.string(),
    "fees": z.array(exports.AdditionalServiceSchema),
    "grandTotal": z.string(),
    "additionalServices": z.array(exports.AdditionalServiceSchema),
});
exports.AmenitySchema = z.object({
    "description": z.string(),
    "isChargeable": z.boolean(),
    "amenityType": z.string(),
    "amenityProvider": exports.AmenityProviderSchema,
});
exports.ItinerarySchema = z.object({
    "duration": z.string(),
    "segments": z.array(exports.SegmentSchema),
});
exports.FareDetailsBySegmentSchema = z.object({
    "segmentId": z.string(),
    "cabin": z.string(),
    "fareBasis": z.string(),
    "brandedFare": z.string(),
    "brandedFareLabel": z.string(),
    "class": z.string(),
    "includedCheckedBags": exports.IncludedCBagsSchema,
    "includedCabinBags": exports.IncludedCBagsSchema,
    "amenities": z.array(exports.AmenitySchema),
});
exports.TravelerPricingSchema = z.object({
    "travelerId": z.string(),
    "fareOption": z.string(),
    "travelerType": z.string(),
    "price": exports.TravelerPricingPriceSchema,
    "fareDetailsBySegment": z.array(exports.FareDetailsBySegmentSchema),
});
exports.FlightOffersResponseSchema = z.object({
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
    "itineraries": z.array(exports.ItinerarySchema),
    "price": exports.FlightOfferSearchPriceSchema,
    "pricingOptions": exports.PricingOptionsSchema,
    "validatingAirlineCodes": z.array(z.string()),
    "travelerPricings": z.array(exports.TravelerPricingSchema),
});
exports.SponsorshipSchema = z.object({
    "isSponsored": z.boolean(),
});
exports.RetailingSchema = z.object({
    "sponsorship": exports.SponsorshipSchema,
});
exports.HotelByCityResponseSchema = z.object({
    "chainCode": z.string(),
    "iataCode": z.string(),
    "dupeId": z.number(),
    "name": z.string(),
    "hotelId": z.string(),
    "geoCode": exports.GeoCodeSchema,
    "address": exports.AddressSchema,
    "lastUpdate": z.coerce.date(),
    "retailing": exports.RetailingSchema,
});
exports.ContactSchema = z.object({
    "phone": z.string(),
});
exports.DescriptionSchema = z.object({
    "text": z.string(),
    "lang": z.string(),
});
exports.GuestsSchema = z.object({
    "adults": z.number(),
});
exports.RefundableSchema = z.object({
    "cancellationRefund": z.string(),
});
exports.TaxSchema = z.object({
    "amount": z.string(),
    "currency": z.string(),
    "code": z.string().optional(),
    "included": z.boolean().optional(),
});
exports.AverageSchema = z.object({
    "total": z.string(),
});
exports.ChangeSchema = z.object({
    "startDate": z.string(),
    "endDate": z.string(),
    "total": z.string(),
});
exports.TypeEstimatedSchema = z.object({});
exports.NameSchema = z.object({
    "text": z.string(),
});
exports.HotelSchema = z.object({
    "type": z.string(),
    "hotelId": z.string(),
    "chainCode": z.string(),
    "dupeId": z.string(),
    "name": z.string(),
    "cityCode": z.string(),
    "latitude": z.number(),
    "longitude": z.number(),
    "contact": exports.ContactSchema,
});
exports.PoliciesSchema = z.object({
    "refundable": exports.RefundableSchema,
});
exports.VariationsSchema = z.object({
    "average": exports.AverageSchema,
    "changes": z.array(exports.ChangeSchema),
});
exports.RoomSchema = z.object({
    "type": z.string(),
    "typeEstimated": exports.TypeEstimatedSchema,
    "description": exports.DescriptionSchema,
});
exports.RoomInformationSchema = z.object({
    "description": z.string(),
    "type": z.string(),
    "typeEstimated": exports.TypeEstimatedSchema,
    "name": exports.NameSchema,
});
exports.PriceSchema = z.object({
    "currency": z.string(),
    "total": z.string(),
    "taxes": z.array(exports.TaxSchema),
    "variations": exports.VariationsSchema,
});
exports.OfferSchema = z.object({
    "id": z.string(),
    "checkInDate": z.string(),
    "checkOutDate": z.string(),
    "rateCode": z.string(),
    "description": exports.DescriptionSchema,
    "boardType": z.string(),
    "room": exports.RoomSchema,
    "guests": exports.GuestsSchema,
    "price": exports.PriceSchema,
    "policies": exports.PoliciesSchema,
    "self": z.string(),
    "roomInformation": exports.RoomInformationSchema,
});
exports.HotelOffersResponseSchema = z.object({
    "type": z.string(),
    "hotel": exports.HotelSchema,
    "available": z.boolean(),
    "offers": z.array(exports.OfferSchema),
    "self": z.string(),
});
exports.CabinSchema = z.enum([
    "ECONOMY",
]);
exports.TourNameSchema = z.enum([
    "tour",
]);
exports.TourReferenceSchema = z.enum([
    "ref",
]);
exports.BrandedFareSchema = z.enum([
    "LIGHTONE",
]);
exports.ClassEnumSchema = z.enum([
    "A",
]);
exports.FareBasisSchema = z.enum([
    "ANNNNF4K",
]);
exports.SliceDiceIndicatorSchema = z.enum([
    "ABCDEF",
]);
exports.AssociatedRecordSchema = z.object({
    "reference": z.string(),
    "creationDateTime": z.coerce.date(),
    "originSystemCode": z.string(),
    "flightOfferId": z.string(),
});
exports.PurplePhoneSchema = z.object({
    "deviceType": z.string(),
    "countryCallingCode": z.string(),
    "number": z.string(),
});
exports.CdgSchema = z.object({
    "cityCode": z.string(),
    "countryCode": z.string(),
});
exports.Co2EmissionSchema = z.object({
    "weight": z.string(),
    "weightUnit": z.string(),
    "cabin": exports.CabinSchema,
});
exports.ChargeableCheckedBagsSchema = z.object({
    "quantity": z.number(),
    "weight": z.number(),
});
exports.AllotmentDetailsSchema = z.object({
    "tourName": exports.TourNameSchema,
    "tourReference": exports.TourReferenceSchema,
});
exports.IncludedCheckedBagsSchema = z.object({
    "quantity": z.number(),
});
exports.TicketingAggreementSchema = z.object({
    "option": z.string(),
    "dateTime": z.coerce.date(),
});
exports.FluffyPhoneSchema = z.object({
    "countryCallingCode": z.string(),
    "number": z.string(),
});
exports.DocumentSchema = z.object({
    "documentType": z.string(),
    "number": z.string(),
    "expiryDate": z.string(),
    "issuanceCountry": z.string(),
    "nationality": z.string(),
    "holder": z.boolean(),
});
exports.ContactElementSchema = z.object({
    "companyName": z.string(),
    "purpose": z.string(),
    "phones": z.array(exports.PurplePhoneSchema),
    "emailAddress": z.string(),
    "address": exports.AddressSchema,
});
exports.LocationsSchema = z.object({
    "CDG": exports.CdgSchema,
    "ORY": exports.CdgSchema,
    "MAD": exports.CdgSchema,
});
exports.FlightOfferPriceSchema = z.object({
    "grandTotal": z.string(),
    "total": z.string(),
    "base": z.string(),
    "currency": z.string(),
    "billingCurrency": z.string(),
    "fees": z.array(exports.AdditionalServiceSchema),
    "additionalServices": z.array(exports.AdditionalServiceSchema),
});
exports.AdditionalServicesSchema = z.object({
    "chargeableCheckedBags": exports.ChargeableCheckedBagsSchema,
    "chargeableSeatNumber": z.string(),
});
exports.TravelerContactSchema = z.object({
    "phones": z.array(exports.FluffyPhoneSchema),
});
exports.DictionariesSchema = z.object({
    "locations": exports.LocationsSchema,
});
exports.TravelerSchema = z.object({
    "id": z.string(),
    "dateOfBirth": z.string(),
    "name": exports.NameSchema,
    "contact": exports.TravelerContactSchema.optional(),
    "documents": z.array(exports.DocumentSchema).optional(),
});
exports.FlightOfferSchema = z.object({
    "id": z.string(),
    "type": z.string(),
    "source": z.string(),
    "itineraries": z.array(exports.ItinerarySchema),
    "price": exports.FlightOfferPriceSchema,
    "pricingOptions": exports.PricingOptionsSchema,
    "validatingAirlineCodes": z.array(z.string()),
    "travelerPricings": z.array(exports.TravelerPricingSchema),
});
exports.FlightOrderStatusSchema = z.object({
    "type": z.string(),
    "id": z.string(),
    "queuingOfficeId": z.string(),
    "associatedRecords": z.array(exports.AssociatedRecordSchema),
    "travelers": z.array(exports.TravelerSchema),
    "flightOffers": z.array(exports.FlightOfferSchema),
    "ticketingAggreement": exports.TicketingAggreementSchema,
    "contacts": z.array(exports.ContactElementSchema),
    "dictionaries": exports.DictionariesSchema,
});
