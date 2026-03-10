"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
// import qs from 'qs';
// import { ReferenceDataLocationsCitiesParams, ResponseError } from "amadeus-ts";
// import { testAmadeusApi, amadeusClient } from "../../amadeusClient";
const hotelRouter = (0, express_1.Router)();
// Set the content type for the router to use JSON
hotelRouter.use(express_1.json);
// Hotel Offers Search
// hotelRouter.get(`${testAmadeusApi}/search`, async (req: Request, res: Response) => {
//     // Define an object containing the search params
//     const hotelOffersSearch: ReferenceDataLocationsCitiesParams = {
//         keyword: req.query.keyword
//     }
//     const searchResponse = await amadeusClient.referenceData.locations.get(hotelOffersSearch);
//     try {
//         await res.json(JSON.parse(searchResponse.body)); // Return the JSON body if successful
//     } catch (err: unknown) {
//         if (err instanceof ResponseError) {
//             await res.json(err);
//         } // Return a JSON error from the reponse if failed
//     }
// });
