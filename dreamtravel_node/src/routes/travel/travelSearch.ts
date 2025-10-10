import { Request, Response, Router } from "express";
import { amadeusClient } from "../../amadeusClient";
import Amadeus, { ReferenceDataLocationsParams, ResponseError } from "amadeus-ts";
import { TypedRequestQuery } from "../../utils/custom_types";

export const travelRouter = Router();

// Check if searching for a travel experience is available
travelRouter.get(`status`, async (request: Request, response: Response) => {
    response.send(`Travel experience searching is available`);
})

// Select origin and destination through the airport and city search API
travelRouter.get(`/cityAndAirportSearch`, async (req: TypedRequestQuery<
    {
        query: string,
        subType: "AIRPORT,CITY" | "AIRPORT" | "CITY",
        countryCode: string,
        page: { limit: number, offset: number },
        sort: "analytics.travelers.score",
        view: "FULL" | "LIGHT"
    }>, res: Response) => {
    const cityAndAirportSearchParams: ReferenceDataLocationsParams = {
        keyword: req.params.parameter,
        subType: Amadeus.location.any // Either an AIRPORT or CITY subtype
    }
    
    const searchResponse = await amadeusClient.referenceData.locations.get(cityAndAirportSearchParams);

    try {
        await res.json(JSON.parse(searchResponse.body));
    } catch (responseError: unknown) {
        if (responseError instanceof ResponseError) {
            await res.json(responseError);
        }
    }
});


travelRouter.get(`/pointsOfInterest`)

