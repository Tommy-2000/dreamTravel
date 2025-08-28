import { Response } from "express";
// import qs from "qs";
import { ReferenceDataLocationsHotelsByCityParams, ResponseError } from "amadeus-ts";
import { testAmadeusApi, amadeusClient } from "../../amadeusClient";
import { hotelRouter } from "./hotelRouter";
import { TypedRequestQuery } from "../../utils/custom_types";

// Find all available hotels in a given city or location
hotelRouter.get(`${testAmadeusApi}/hotels`, async (req: TypedRequestQuery<{query: string, cityCode: string, radius: number, radiusUnit: "MILE" | "KM" | undefined}>, res: Response) => {
    // Define the param object containing the search params to request
    const hotelbyCityParams: ReferenceDataLocationsHotelsByCityParams = {
        cityCode: req.query.cityCode,
        radius: req.query.radius,
        radiusUnit: req.query.radiusUnit
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

