"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.roomSearch = exports.hotelSearch = void 0;
const amadeus_ts_1 = require("amadeus-ts");
const amadeusClient_1 = require("../../amadeusClient");
const hotelSearch = async (req, res) => {
    // Shape the request body with the params from the Amadeus-TS library
    const { cityCode, radius, radiusUnit, chainCodes, amenities, ratings, hotelScore } = req.body;
    // Pass the params to the amadeusClient
    const searchResponse = await amadeusClient_1.amadeusClient.referenceData.locations.hotels.byCity.get({
        cityCode,
        radius,
        radiusUnit,
        chainCodes,
        amenities,
        ratings,
        hotelScore
    });
    try {
        await res.json(JSON.parse(searchResponse.body)); // Return the JSON body if successful
    }
    catch (responseError) {
        if (responseError instanceof amadeus_ts_1.ResponseError) {
            await res.json(responseError);
        } // Return a JSON error from the reponse if failed
    }
};
exports.hotelSearch = hotelSearch;
const roomSearch = async (req, res) => {
    // Shape the request body with the params from the Amadeus-TS library
    const { hotelIds, adults, checkInDate, checkOutDate, countryOfResidence, priceRange, currencyCode, paymentPolicy, boardType } = req.body;
    // Pass the params to the amadeusClient
    const searchReponse = await amadeusClient_1.amadeusClient.shopping.hotelOffersSearch.get({
        hotelIds,
        adults,
        checkInDate,
        checkOutDate,
        countryOfResidence,
        priceRange,
        currencyCode,
        paymentPolicy,
        boardType
    });
    try {
        await res.json(JSON.parse(searchReponse.body));
    }
    catch (err) {
        if (err instanceof amadeus_ts_1.ResponseError) {
            await res.json(err);
        }
    }
};
exports.roomSearch = roomSearch;
