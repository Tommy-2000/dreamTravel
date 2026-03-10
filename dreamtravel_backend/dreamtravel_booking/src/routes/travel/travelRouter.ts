import { Request, Response, Router } from "express";
import { cityAndAirportSearch, pointsOfInterest, pointsOfInterestBySquare } from "./travelSearch";
import { validateResponse } from "../../utils/zodValidation";
import { AirportAndCityResponseSchema } from "../../utils/zodResponses";

export const travelRouter = Router();

// Check if searching for a travel experience is available
travelRouter.get(`searchingStatus`, async (request: Request, response: Response) => {
    response.send(`Travel experience searching is available`);
})

// Select origin and destination through the airport and city search API
travelRouter.route(`/cityAndAirportSearch`).get(validateResponse(AirportAndCityResponseSchema), cityAndAirportSearch);

// Select for nearby points of interest based on latitude and longitude
travelRouter.route(`/pointsOfInterest`).get(pointsOfInterest);

// Select for nearby points of interest based on square distance
travelRouter.route(`/pointsOfInterestBySquare`).get(pointsOfInterestBySquare);

