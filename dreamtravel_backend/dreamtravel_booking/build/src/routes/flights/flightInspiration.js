"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.flightInspirationRouter = void 0;
const express_1 = require("express");
// import qs from "qs";
const amadeus_ts_1 = require("amadeus-ts");
const amadeusClient_1 = require("../../amadeusClient");
// Declare the router for searching and booking flights
exports.flightInspirationRouter = (0, express_1.Router)();
// Set the content type for the router to use JSON
exports.flightInspirationRouter.use(express_1.json);
// Start the flight booking process by calling each endpoint in the correct order
// Find all available hotels in a given city or location
exports.flightInspirationRouter.get(`/hotelSearch`, async (req, res) => {
    // Define the param object containing the search params to request
    const hotelOffersSearch = {
        hotelIds: req.query.hotelIds,
        countryOfResidence: req.query.countryOfResidence,
        adults: req.query.adults,
        checkInDate: req.query.checkInDate,
        checkOutDate: req.query.checkOutDate,
        priceRange: req.query.priceRange,
        boardType: req.query.boardType
    };
    const searchResponse = await amadeusClient_1.amadeusClient.shopping.hotelOffersSearch.get(hotelOffersSearch);
    try {
        await res.json(JSON.parse(searchResponse.body)); // Return the JSON body if successful
    }
    catch (err) {
        if (err instanceof amadeus_ts_1.ResponseError) {
            await res.json(err);
        } // Return a JSON error from the reponse if failed
    }
});
// // Find
// amadeusRouter.get(`${testAmadeusApi}/hotels`, async (req: Request, res: Response) => {
//     const { countryOfResidenceQ, adultsQ, checkInDateQ, checkOutDateQ, priceRangeQ, boardTypeQ } = req.query;
//     // Define an object containing the search params
//     try {
//         await res.json(JSON.parse(searchResponse.body)); // Return the JSON body if successful
//     } catch (err: unknown) {
//         if (err instanceof ResponseError) {
//             await res.json(err);
//         } // Return a JSON error from the reponse if failed
//     }
// });
