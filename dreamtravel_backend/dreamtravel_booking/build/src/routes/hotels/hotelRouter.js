"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.hotelRouter = void 0;
const express_1 = require("express");
const hotelBooking_1 = require("./hotelBooking");
const zodValidation_1 = require("../../utils/zodValidation");
const zodResponses_1 = require("../../utils/zodResponses");
exports.hotelRouter = (0, express_1.Router)();
// Check if booking a hotel is available
exports.hotelRouter.get(`bookingStatus`, async (request, response) => {
    response.send(`Hotel booking is available`);
});
// Start the hotel booking process by calling each endpoint in the correct order
// Find all available hotels in a given city or location
exports.hotelRouter.route(`/hotelSearch`).get((0, zodValidation_1.validateResponse)(zodResponses_1.HotelByCityResponseSchema), hotelBooking_1.hotelSearch);
// Search rooms and rates within chosen hotel
exports.hotelRouter.route(`/roomSearch`).get((0, zodValidation_1.validateResponse)(zodResponses_1.HotelOffersResponseSchema), hotelBooking_1.roomSearch);
