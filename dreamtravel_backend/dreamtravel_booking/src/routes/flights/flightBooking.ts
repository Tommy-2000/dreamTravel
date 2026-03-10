import { Request, Response } from 'express';
import { FlightOffersPricingParams, FlightOffersSearchGetParams, FlightOrdersParams, ResponseError, SeatmapsGetParams } from 'amadeus-ts';
import { amadeusClient } from '../../amadeusClient';


export const flightSearch = async (req: Request, res: Response) => {

    // Shape the request body with the params from the Amadeus-TS library
    const { originLocationCode, destinationLocationCode, departureDate, returnDate, adults }: FlightOffersSearchGetParams = req.body;

    // Pass the params to the amadeusClient
    const searchResponse = await amadeusClient.shopping.flightOffersSearch.get({
        originLocationCode,
        destinationLocationCode,
        departureDate,
        returnDate,
        adults
    });
    try {
        await res.json(JSON.parse(searchResponse.body)); // Return the JSON body if successful
    } catch (responseError: unknown) {
        if (responseError instanceof ResponseError) {
            await res.json(responseError);
        } // Return a JSON error from the reponse if failed
    }
}


export const flightConfirm = async (req: Request, res: Response) => {

    const flightOffersPricingParams: FlightOffersPricingParams = req.body;

    const postResponse = await amadeusClient.shopping.flightOffers.pricing.post(flightOffersPricingParams);

    try {
        await res.json(JSON.parse(postResponse.body)); // Return the JSON body if successful
    } catch (responseError: unknown) {
        if (responseError instanceof ResponseError) {
            await res.json(responseError);
        } // Return a JSON error from the response if failed
    }
}


export const flightBook = async (req: Request, res: Response) => {

    const flightOrdersParams: FlightOrdersParams = req.body;

    const postResponse = await amadeusClient.booking.flightOrders.post(flightOrdersParams);

    try {
        await res.json(JSON.parse(postResponse.body)); // Return the JSON body if successful
    } catch (responseError: unknown) {
        if (responseError instanceof ResponseError) {
            await res.json(responseError);
        } // Return a JSON error from the response if failed
    }
}


// export const flightBookingStatus = async (req: Request, res: Response) => {

//     const { data }: FlightOrderGetResult = req.body;

//     const flightOrder = await amadeusClient.booking.flightOrder(data.id);

//     const flightOrderStatus = flightOrder.get();

//     try {
//         await res.json(JSON.parse((await flightOrderStatus).body)); // Return the JSON body if successful
//     } catch (responseError: unknown) {
//         if (responseError instanceof ResponseError) {
//             await res.json(responseError);
//         } // Return a JSON error from the response if failed
//     }

// }


export const flightSeatMap = async (req: Request, res: Response) => {

    const seatmapsParams: SeatmapsGetParams = req.body;

    const getResponse = await amadeusClient.shopping.seatmaps.get(seatmapsParams);

     try {
        await res.json(JSON.parse(getResponse.body)); // Return the JSON body if successful
    } catch (responseError: unknown) {
        if (responseError instanceof ResponseError) {
            await res.json(responseError);
        } // Return a JSON error from the response if failed
    }

}

