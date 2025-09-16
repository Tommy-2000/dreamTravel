import { Request, Response } from "express";
import { Router } from "express";

// Declare the router for checking status
export const statusRouter = Router();

statusRouter.get(`/amadeusStatus`, async (request: Request, response: Response) => {
  response.send("Amadeus Server Connected");
});

statusRouter.get(`/clientStatus`, async (request: Request, response: Response) => {
  response.send("Node Server Connected");
});
