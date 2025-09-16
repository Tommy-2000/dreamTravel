import { Request, Response, Router } from "express";
// import qs from "qs";
import { FlightOffersSearchGetParams, ResponseError } from "amadeus-ts";
import { amadeusClient } from "../../amadeusClient";
import { TypedRequestQuery } from "../../utils/custom_types";

// Declare the router for searching and booking flights
export const flightRouter = Router();

// Set the content type for the router to use JSON
// flightBookingRouter.use(json);


flightRouter.get("/flightBookingStatus", async (request: Request, response: Response) => {

    response.send("flightBookingStatus");
})

// Start the flight booking process by calling each endpoint in the correct order

// Following from the City and Airport Search, find flights between cities at specific dates
flightRouter.route(`/flightSearch`).get(async (req: TypedRequestQuery<{query: string, originLocationCode: string, destinationLocationCode: string, departureDate: string, returnDate: string, adults: number }>, res: Response) => {
    // Define the param object containing the search params to request
    const flightOffersSearchParams: FlightOffersSearchGetParams = {
        originLocationCode: req.query.originLocationCode,
        destinationLocationCode: req.query.destinationLocationCode,
        departureDate: req.query.departureDate,
        returnDate: req.query.returnDate,
        adults: req.query.adults
    }
    const searchResponse = await amadeusClient.shopping.flightOffersSearch.get(flightOffersSearchParams);

    try {
        await res.json(JSON.parse(searchResponse.body)); // Return the JSON body if successful
    } catch (responseError: unknown) {
        if (responseError instanceof ResponseError) {
            await res.json(responseError);
        } // Return a JSON error from the reponse if failed
    }

});


// When a flight is chosen, check its price and availability with the airline with a POST
// flightRouter.post(`flightConfirmation`, async (req: RequestBody<{flight: string}>, res: Response) => {

//     const hotelOffersSearchParams: FlightOffersPricingParams = {
//         data: req.body.flight
//     }
//     const searchReponse = await amadeusClient.shopping.flightOffers.pricing.post(hotelOffersSearchParams);

//     try {
//         await res.json(JSON.parse(searchReponse.body));
//     } catch (err: unknown) {
//         if (err instanceof ResponseError) {
//             await res.json(err);
//         }
//     }
// });


