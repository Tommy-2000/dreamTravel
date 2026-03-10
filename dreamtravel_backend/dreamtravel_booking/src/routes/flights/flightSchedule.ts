import { Request, Response } from 'express';
import { amadeusClient } from '../../amadeusClient';
import { ScheduleFlightsParams, ResponseError } from 'amadeus-ts';


export const flightStatus = async (req: Request, res: Response) => {

    // Shape the request body with the params from the Amadeus-TS library
    const { carrierCode, flightNumber, scheduledDepartureDate, operationalSuffix }: ScheduleFlightsParams = req.body;

    // Pass the params to the amadeusClient
    const searchResponse = await amadeusClient.schedule.flights.get({
        carrierCode, flightNumber, scheduledDepartureDate, operationalSuffix
    });
    try {
        await res.json(JSON.parse(searchResponse.body)); // Return the JSON body if successful
    } catch (responseError: unknown) {
        if (responseError instanceof ResponseError) {
            await res.json(responseError);
        } // Return a JSON error from the reponse if failed
    }

}

