"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.flightRouter = void 0;
const express_1 = require("express");
const flightBooking_1 = require("./flightBooking");
const flightSchedule_1 = require("./flightSchedule");
const zodValidation_1 = require("../../utils/zodValidation");
const zodResponses_1 = require("../../utils/zodResponses");
exports.flightRouter = (0, express_1.Router)();
// Check if the flight router is available
exports.flightRouter.get(`routerStatus`, async (request, response) => {
    response.send(`Flight Router is available`);
});
// Flight Booking
// Following from the City and Airport Search, find flights between cities at specific dates
exports.flightRouter.route(`/flightSearch`).get((0, zodValidation_1.validateResponse)(zodResponses_1.FlightOffersResponseSchema), flightBooking_1.flightSearch);
// When a flight is chosen, check its price and availability with the airline with a POST
exports.flightRouter.route(`/flightConfirm`).post((0, zodValidation_1.validateRequest)(zodResponses_1.FlightOffersResponseSchema), flightBooking_1.flightConfirm);
// When price and availablity is chosen, book the flight
exports.flightRouter.route(`/flightBook`).post((0, zodValidation_1.validateRequest)(zodResponses_1.FlightOffersResponseSchema), flightBooking_1.flightBook);
// Flight Schedule
exports.flightRouter.route(`/flightStatus`).get((0, zodValidation_1.validateResponse)(zodResponses_1.FlightOrderStatusSchema), flightSchedule_1.flightStatus);
