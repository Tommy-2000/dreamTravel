"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
// import qs from "qs";
const amadeus_ts_1 = require("amadeus-ts");
const amadeusClient_1 = require("../../amadeusClient");
const flightRouter_1 = require("./flightRouter");
// Set the content type for the router to use JSON
flightRouter_1.flightRouter.use(express_1.json);
// Start the flight booking process by calling each endpoint in the correct order
// Following from the City and Airport Search, find flights between cities at specific dates
flightRouter_1.flightRouter.get(`${amadeusClient_1.testAmadeusApi}/flightSearch`, async (req, res) => {
    // Define the param object containing the search params to request
    const flightOffersSearchParams = {
        originLocationCode: req.query.originLocationCode,
        destinationLocationCode: req.query.destinationLocationCode,
        departureDate: req.query.departureDate,
        returnDate: req.query.returnDate,
        adults: req.query.adults
    };
    const searchResponse = await amadeusClient_1.amadeusClient.shopping.flightOffersSearch.get(flightOffersSearchParams);
    try {
        await res.json(JSON.parse(searchResponse.body)); // Return the JSON body if successful
    }
    catch (responseError) {
        if (responseError instanceof amadeus_ts_1.ResponseError) {
            await res.json(responseError);
        } // Return a JSON error from the reponse if failed
    }
});
// When a flight is chosen, check its price and availability with the airline with a POST
// flightRouter.post(`${testAmadeusApi}/flightConfirmation`, async (req: RequestBody<{flight: string}>, res: Response) => {
//     const hotelOffersSearchParams: FlightOffersPricingParams = {
//         data: req.body.flight
//     }
//     const searchReponse = await amadeusClient.shopping.flightOffers.pricing.post(hotelOffersSearchParams);
//     try {
//         await res.json(JSON.parse(searchReponse.body));
//     } catch (err: unknown) {
//         if (err instanceof ResponseError) {
//             await res.json(err);
//         }
//     }
// });
