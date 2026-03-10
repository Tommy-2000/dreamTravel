import { Request, Response } from 'express';
import { HotelOffersSearchParams, ReferenceDataLocationsHotelsByCityParams, ResponseError } from "amadeus-ts";
import { amadeusClient } from "../../amadeusClient";

export const hotelSearch = async (req: Request, res: Response) => {

    // Shape the request body with the params from the Amadeus-TS library
    const { cityCode, radius, radiusUnit, chainCodes, amenities, ratings, hotelScore }: ReferenceDataLocationsHotelsByCityParams = req.body;
    
    // Pass the params to the amadeusClient
    const searchResponse = await amadeusClient.referenceData.locations.hotels.byCity.get({
        cityCode,
        radius,
        radiusUnit,
        chainCodes,
        amenities,
        ratings,
        hotelScore
    });

    try {
        await res.json(JSON.parse(searchResponse.body)); // Return the JSON body if successful
    } catch (responseError: unknown) {
        if (responseError instanceof ResponseError) {
            await res.json(responseError);
        } // Return a JSON error from the reponse if failed
    }
}


export const roomSearch = async (req: Request, res: Response) => {
    
    // Shape the request body with the params from the Amadeus-TS library
    const { hotelIds, adults, checkInDate, checkOutDate, countryOfResidence, priceRange, currencyCode, paymentPolicy, boardType }: HotelOffersSearchParams = req.body;
    
    // Pass the params to the amadeusClient
    const searchReponse = await amadeusClient.shopping.hotelOffersSearch.get({
        hotelIds, 
        adults, 
        checkInDate, 
        checkOutDate, 
        countryOfResidence, 
        priceRange, 
        currencyCode, 
        paymentPolicy, 
        boardType
    });

    try {
        await res.json(JSON.parse(searchReponse.body));
    } catch (err: unknown) {
        if (err instanceof ResponseError) {
            await res.json(err);
        }
    }
}


