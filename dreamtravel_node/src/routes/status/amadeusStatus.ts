import { json, Request, Response } from "express";
// import { amadeusClient } from "../../amadeusClient";
import { statusRouter } from "./statusRouter";
// import Amadeus, { ReferenceDataLocationsParams, ResponseError } from "amadeus-ts";

statusRouter.use(json);

statusRouter.get("/amadeusStatus", (request: Request, response: Response) => {
    
    
    const amadeusStatus = {
        "amadeusStatus": "Running"
    };

    response.send(amadeusStatus);
});