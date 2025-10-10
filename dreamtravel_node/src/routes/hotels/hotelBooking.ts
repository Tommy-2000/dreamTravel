import { Request, Response, Router } from "express";
import { HotelScore, ReferenceDataLocationsHotelsByCityParams, ResponseError } from "amadeus-ts";
import { amadeusClient } from "../../amadeusClient";
import { TypedRequestQuery } from "../../utils/custom_types";

export const hotelRouter = Router();

// Check if booking a hotel is available
hotelRouter.get(`bookingStatus`, async (request: Request, response: Response) => {
    response.send(`Hotel booking is available`);
})

// Start the hotel booking process by calling each endpoint in the correct order

// Find all available hotels in a given city or location
hotelRouter.route(`/hotelSearch`).get(async (req: TypedRequestQuery<
    {query: string, cityCode: string, radius: number, radiusUnit: "MILE" | "KM", chainCodes: string, amenities: (string & {}), ratings: string, hotelScore: HotelScore}
    >, res: Response) => {
    // Define the param object containing the search params to request
    const hotelbyCityParams: ReferenceDataLocationsHotelsByCityParams = {
        cityCode: req.query.cityCode,
        radius: req.query.radius,
        radiusUnit: req.query.radiusUnit,
        chainCodes: req.query.chainCodes,
        amenities: req.query.amenities,
        ratings: req.query.ratings,
        hotelScore: req.query.hotelScore
    }
    const searchResponse = await amadeusClient.referenceData.locations.hotels.byCity.get(hotelbyCityParams);

    try {
        await res.json(JSON.parse(searchResponse.body)); // Return the JSON body if successful
    } catch (responseError: unknown) {
        if (responseError instanceof ResponseError) {
            await res.json(responseError);
        } // Return a JSON error from the reponse if failed
    }
});


// Search rooms and rates within chosen hotel
// hotelRouter.get(`${testAmadeusApi}/hotels`, async (req: Request, res: Response) => {
//     const hotelOffersSearchParams: HotelOffersSearchParams = {
//         hotelIds: req.query.hotelIds
//     }
//     const searchReponse = await amadeusClient.shopping.hotelOffersSearch.get(hotelOffersSearchParams);

//     try {
//         await res.json(JSON.parse(searchReponse.body));
//     } catch (err: unknown) {
//         if (err instanceof ResponseError) {
//             await res.json(err);
//         }
//     }
// });


// Verify and confirm hotel offer at chosen hotel
// hotelRouter.get(`${testAmadeusApi}/ConfirmHotelOffer`, async (req: Request, res: Response) => {
//     const { hotelIDQ } = req.query;
//     const hotelOffersSearchParams = {
//         hotelIds: hotelIDQ
//     }
//     const searchReponse = await amadeusConfig.shopping.hotelOffersSearch.get(hotelOffersSearchParams);

//     try {
//         await res.json(JSON.parse(searchReponse.body));
//     } catch (err: unknown) {
//         if (err instanceof ResponseError) {
//             await res.json(err);
//         }
//     }
// });
