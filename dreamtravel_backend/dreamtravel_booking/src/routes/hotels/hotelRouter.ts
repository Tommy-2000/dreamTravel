import { Request, Response, Router } from "express";
import { hotelSearch, roomSearch } from "./hotelBooking";
import { validateResponse } from "../../utils/zodValidation";
import { HotelByCityResponseSchema, HotelOffersResponseSchema } from "../../utils/zodResponses";

export const hotelRouter = Router();

// Check if booking a hotel is available
hotelRouter.get(`bookingStatus`, async (request: Request, response: Response) => {
    response.send(`Hotel booking is available`);
})

// Start the hotel booking process by calling each endpoint in the correct order

// Find all available hotels in a given city or location
hotelRouter.route(`/hotelSearch`).get(validateResponse(HotelByCityResponseSchema), hotelSearch);


// Search rooms and rates within chosen hotel
hotelRouter.route(`/roomSearch`).get(validateResponse(HotelOffersResponseSchema), roomSearch);

