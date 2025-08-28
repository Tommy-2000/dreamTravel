import { json, Request, Response } from "express";
import { amadeusClient } from "../../amadeusClient";
import { experienceRouter } from "./experienceRouter";
import Amadeus, { ReferenceDataLocationsParams, ResponseError } from "amadeus-ts";

experienceRouter.use(json);

// Select origin and destination through the airport and city search API
experienceRouter.get(`/cityAndAirportSearch/:parameter`, async (req: Request, res: Response) => {
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

experienceRouter.post("");

experienceRouter.put("");

