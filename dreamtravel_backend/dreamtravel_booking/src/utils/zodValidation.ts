// Setup query validator for all queries fetched from the Amadeus API
import { Request, Response, NextFunction } from "express";
import { StatusCodes } from "http-status-codes";
import zod from "zod";

export function validateRequest(zodSchema: zod.ZodObject) {
    return async (req: Request, res: Response, next: NextFunction) => {
        try {
            zodSchema.safeParse(req.body);
            next(); // Continue with amadeus function if zod parsed the req.body correctly
        } catch (zodError) {
            if (zodError instanceof zod.ZodError) {
                res.status(StatusCodes.BAD_REQUEST).json({ error: 'Zod detected invalid data', details: zodError.issues });
                res.status(StatusCodes.INTERNAL_SERVER_ERROR).json({ error: 'Internal Server Error' });
            }
        }
    }
}

export function validateResponse(zodSchema: zod.ZodObject) {
    return async (req: Request, res: Response, next: NextFunction) => {
        try {
            zodSchema.safeParse(res.json);
            next(); // Continue with amadeus function if zod parsed the json response correctly
        } catch (zodError) {
            if (zodError instanceof zod.ZodError) {
                res.json({ error: 'Zod detected invalid data', details: zodError.issues });
            }
        }
    }
}
