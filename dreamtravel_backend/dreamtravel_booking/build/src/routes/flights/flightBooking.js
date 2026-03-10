"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.flightSeatMap = exports.flightBook = exports.flightConfirm = exports.flightSearch = void 0;
const amadeus_ts_1 = require("amadeus-ts");
const amadeusClient_1 = require("../../amadeusClient");
const flightSearch = async (req, res) => {
    // Shape the request body with the params from the Amadeus-TS library
    const { originLocationCode, destinationLocationCode, departureDate, returnDate, adults } = req.body;
    // Pass the params to the amadeusClient
    const searchResponse = await amadeusClient_1.amadeusClient.shopping.flightOffersSearch.get({
        originLocationCode,
        destinationLocationCode,
        departureDate,
        returnDate,
        adults
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
exports.flightSearch = flightSearch;
const flightConfirm = async (req, res) => {
    const flightOffersPricingParams = req.body;
    const postResponse = await amadeusClient_1.amadeusClient.shopping.flightOffers.pricing.post(flightOffersPricingParams);
    try {
        await res.json(JSON.parse(postResponse.body)); // Return the JSON body if successful
    }
    catch (responseError) {
        if (responseError instanceof amadeus_ts_1.ResponseError) {
            await res.json(responseError);
        } // Return a JSON error from the response if failed
    }
};
exports.flightConfirm = flightConfirm;
const flightBook = async (req, res) => {
    const flightOrdersParams = req.body;
    const postResponse = await amadeusClient_1.amadeusClient.booking.flightOrders.post(flightOrdersParams);
    try {
        await res.json(JSON.parse(postResponse.body)); // Return the JSON body if successful
    }
    catch (responseError) {
        if (responseError instanceof amadeus_ts_1.ResponseError) {
            await res.json(responseError);
        } // Return a JSON error from the response if failed
    }
};
exports.flightBook = flightBook;
// export const flightBookingStatus = async (req: Request, res: Response) => {
//     const { data }: FlightOrderGetResult = req.body;
//     const flightOrder = await amadeusClient.booking.flightOrder(data.id);
//     const flightOrderStatus = flightOrder.get();
//     try {
//         await res.json(JSON.parse((await flightOrderStatus).body)); // Return the JSON body if successful
//     } catch (responseError: unknown) {
//         if (responseError instanceof ResponseError) {
//             await res.json(responseError);
//         } // Return a JSON error from the response if failed
//     }
// }
const flightSeatMap = async (req, res) => {
    const seatmapsParams = req.body;
    const getResponse = await amadeusClient_1.amadeusClient.shopping.seatmaps.get(seatmapsParams);
    try {
        await res.json(JSON.parse(getResponse.body)); // Return the JSON body if successful
    }
    catch (responseError) {
        if (responseError instanceof amadeus_ts_1.ResponseError) {
            await res.json(responseError);
        } // Return a JSON error from the response if failed
    }
};
exports.flightSeatMap = flightSeatMap;
