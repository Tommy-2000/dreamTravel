import { Request, Response } from "express";
import { ReferenceDataLocationsParams, ReferenceDataLocationsPoisBySquareParams, ReferenceDataLocationsPoisParams, ResponseError } from "amadeus-ts";
import { amadeusClient } from "../../amadeusClient";



export const cityAndAirportSearch = async (req: Request, res: Response) => {
    const { subType, keyword, countryCode, page, sort, view }: ReferenceDataLocationsParams = req.body;
    
    const searchResponse = await amadeusClient.referenceData.locations.get({
        subType,
        keyword,
        countryCode,
        page,
        sort,
        view
    });

    try {
        await res.json(JSON.parse(searchResponse.body));
    } catch (responseError: unknown) {
        if (responseError instanceof ResponseError) {
            await res.json(responseError);
        }
    }
}



export const pointsOfInterest = async (req: Request, res: Response) => {
    const { latitude, longitude, radius, page, categories }: ReferenceDataLocationsPoisParams = req.body;

    const searchResponse = await amadeusClient.referenceData.locations.pointsOfInterest.get({
        latitude,
        longitude,
        radius,
        page,
        categories
    });

    try {
        await res.json(JSON.parse(searchResponse.body));
    } catch (responseError: unknown) {
        if (responseError instanceof ResponseError) {
            await res.json(responseError);
        }
    }
}


export const pointsOfInterestBySquare = async (req: Request, res: Response) => {
    const { north, west, south, east, page, categories }: ReferenceDataLocationsPoisBySquareParams = req.body;

    const searchResponse = await amadeusClient.referenceData.locations.pointsOfInterest.bySquare.get({
        north,
        west,
        south,
        east,
        page,
        categories
    });

    try {
        await res.json(JSON.parse(searchResponse.body));
    } catch (responseError: unknown) {
        if (responseError instanceof ResponseError) {
            await res.json(responseError);
        }
    }
}

