import { Request, Response, Router } from "express";
import { CurrencyCode, FlightOffersSearchGetParams, ResponseError, TravelClass } from "amadeus-ts";
import { amadeusClient } from "../../amadeusClient";
import { TypedRequestQuery } from "../../utils/custom_types";

export const flightRouter = Router();

// Check if booking a flight is available
flightRouter.get(`bookingStatus`, async (request: Request, response: Response) => {
    response.send(`Flight booking is available`);
})

// Start the flight booking process by calling each endpoint in the correct order

// Following from the City and Airport Search, find flights between cities at specific dates
flightRouter.route(`/flightSearch`).get(async (req: TypedRequestQuery<{query: string, originLocationCode: string, destinationLocationCode: string, departureDate: string, returnDate: string, adults: number, children: number, infants: number, travelClass: TravelClass, includedAirlineCodes: string, excludedAirlineCodes: string, nonStop: boolean, currencyCode: CurrencyCode, maxPrice: number, max: number }>, res: Response) => {
    // Define the param object containing the search params to request
    const flightOffersGetParams: FlightOffersSearchGetParams = {
        originLocationCode: req.query.originLocationCode,
        destinationLocationCode: req.query.destinationLocationCode,
        departureDate: req.query.departureDate,
        returnDate: req.query.returnDate,
        adults: req.query.adults,
        children: req.query.children,
        infants: req.query.infants,
        travelClass: req.query.travelClass,
        includedAirlineCodes: req.query.includedAirlineCodes,
        excludedAirlineCodes: req.query.excludedAirlineCodes,
        nonStop: req.query.nonStop,
        currencyCode: req.query.currencyCode,
        maxPrice: req.query.maxPrice,
        max: req.query.max

    }
    const searchResponse = await amadeusClient.shopping.flightOffersSearch.get(flightOffersGetParams);

    try {
        await res.json(JSON.parse(searchResponse.body)); // Return the JSON body if successful
    } catch (responseError: unknown) {
        if (responseError instanceof ResponseError) {
            await res.json(responseError);
        } // Return a JSON error from the reponse if failed
    }
});


// When a flight is chosen, check its price and availability with the airline with a POST
// flightRouter.route(`/flightConfirm`).post(async (req: Request, res: Response) => {

//     const flightOfferPostParams: FlightOffersPricingParams = {
//         data: req.query.data
//     }

//     const postResponse = await amadeusClient.shopping.flightOffers.pricing.post(flightOfferPostParams);

//     try {
//         await res.json(JSON.parse(postResponse.body)); // Return the JSON body if successful
//     } catch (responseError: unknown) {
//         if (responseError instanceof ResponseError) {
//             await res.json(responseError);
//         } // Return a JSON error from the response if failed
//     }
// });



// flightRouter.route(`/flightBook`).post(async (req: Request, res: Response) => {

//     const flightOfferPostParams: FlightOrdersParams = {
//         data: req.query.data
//     }

//     const postResponse = await amadeusClient.shopping.flightOffers.pricing.post(flightOfferPostParams);

//     try {
//         await res.json(JSON.parse(postResponse.body)); // Return the JSON body if successful
//     } catch (responseError: unknown) {
//         if (responseError instanceof ResponseError) {
//             await res.json(responseError);
//         } // Return a JSON error from the response if failed
//     }
// })

