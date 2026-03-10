"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.travelRouter = void 0;
const express_1 = require("express");
const travelSearch_1 = require("./travelSearch");
const zodValidation_1 = require("../../utils/zodValidation");
const zodResponses_1 = require("../../utils/zodResponses");
exports.travelRouter = (0, express_1.Router)();
// Check if searching for a travel experience is available
exports.travelRouter.get(`searchingStatus`, async (request, response) => {
    response.send(`Travel experience searching is available`);
});
// Select origin and destination through the airport and city search API
exports.travelRouter.route(`/cityAndAirportSearch`).get((0, zodValidation_1.validateResponse)(zodResponses_1.AirportAndCityResponseSchema), travelSearch_1.cityAndAirportSearch);
// Select for nearby points of interest based on latitude and longitude
exports.travelRouter.route(`/pointsOfInterest`).get(travelSearch_1.pointsOfInterest);
// Select for nearby points of interest based on square distance
exports.travelRouter.route(`/pointsOfInterestBySquare`).get(travelSearch_1.pointsOfInterestBySquare);
