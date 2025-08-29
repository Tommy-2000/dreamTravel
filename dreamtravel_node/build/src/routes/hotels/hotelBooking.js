"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.hotelRouter = void 0;
const express_1 = require("express");
// import qs from "qs";
const amadeus_ts_1 = require("amadeus-ts");
const amadeusClient_1 = require("../../amadeusClient");
// Declare the router for searching and booking hotels
exports.hotelRouter = (0, express_1.Router)();
// Find all available hotels in a given city or location
exports.hotelRouter.get(`${amadeusClient_1.baseTestAmadeusApi}/hotels`, async (req, res) => {
    // Define the param object containing the search params to request
    const hotelbyCityParams = {
        cityCode: req.query.cityCode,
        radius: req.query.radius,
        radiusUnit: req.query.radiusUnit
    };
    const searchResponse = await amadeusClient_1.amadeusClient.referenceData.locations.hotels.byCity.get(hotelbyCityParams);
    try {
        await res.json(JSON.parse(searchResponse.body)); // Return the JSON body if successful
    }
    catch (responseError) {
        if (responseError instanceof amadeus_ts_1.ResponseError) {
            await res.json(responseError);
        } // Return a JSON error from the reponse if failed
    }
});
// Search rooms and rates within chosen hotel
// hotelRouter.get(`${testAmadeusApi}/hotels`, async (req: Request, res: Response) => {
//     const hotelOffersSearchParams: HotelOffersSearchParams = {
//         hotelIds: req.query.hotelIds
//     }
//     const searchReponse = await amadeusClient.shopping.hotelOffersSearch.get(hotelOffersSearchParams);
//     try {
//         await res.json(JSON.parse(searchReponse.body));
//     } catch (err: unknown) {
//         if (err instanceof ResponseError) {
//             await res.json(err);
//         }
//     }
// });
// Verify and confirm hotel offer at chosen hotel
// hotelRouter.get(`${testAmadeusApi}/ConfirmHotelOffer`, async (req: Request, res: Response) => {
//     const { hotelIDQ } = req.query;
//     const hotelOffersSearchParams = {
//         hotelIds: hotelIDQ
//     }
//     const searchReponse = await amadeusConfig.shopping.hotelOffersSearch.get(hotelOffersSearchParams);
//     try {
//         await res.json(JSON.parse(searchReponse.body));
//     } catch (err: unknown) {
//         if (err instanceof ResponseError) {
//             await res.json(err);
//         }
//     }
// });
