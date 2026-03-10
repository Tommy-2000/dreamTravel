import { Request, Response, Router } from "express";
import { flightBook, flightConfirm, flightSearch } from "./flightBooking";
import { flightStatus } from "./flightSchedule";
import { validateRequest, validateResponse } from "../../utils/zodValidation";
import { FlightOffersResponseSchema, FlightOrderStatusSchema } from "../../utils/zodResponses";

export const flightRouter = Router();

// Check if the flight router is available
flightRouter.get(`routerStatus`, async (request: Request, response: Response) => {
    response.send(`Flight Router is available`);
});

// Flight Booking

// Following from the City and Airport Search, find flights between cities at specific dates
flightRouter.route(`/flightSearch`).get(validateResponse(FlightOffersResponseSchema), flightSearch);

// When a flight is chosen, check its price and availability with the airline with a POST
flightRouter.route(`/flightConfirm`).post(validateRequest(FlightOffersResponseSchema), flightConfirm);

// When price and availablity is chosen, book the flight
flightRouter.route(`/flightBook`).post(validateRequest(FlightOffersResponseSchema), flightBook);


// Flight Schedule

flightRouter.route(`/flightStatus`).get(validateResponse(FlightOrderStatusSchema), flightStatus);
