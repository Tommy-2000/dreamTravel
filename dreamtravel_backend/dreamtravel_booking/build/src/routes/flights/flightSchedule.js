"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.flightStatus = void 0;
const amadeusClient_1 = require("../../amadeusClient");
const amadeus_ts_1 = require("amadeus-ts");
const flightStatus = async (req, res) => {
    // Shape the request body with the params from the Amadeus-TS library
    const { carrierCode, flightNumber, scheduledDepartureDate, operationalSuffix } = req.body;
    // Pass the params to the amadeusClient
    const searchResponse = await amadeusClient_1.amadeusClient.schedule.flights.get({
        carrierCode, flightNumber, scheduledDepartureDate, operationalSuffix
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
exports.flightStatus = flightStatus;
