import { RequestHandler, Request } from "express";
import { ResParams, ResBody, ReqBody, ReqQuery } from "../utils/customTypes";


export const TypedQueryHandler: RequestHandler<ResParams, ResBody, ReqBody, ReqQuery> = async (req: Request) => {
    return req.query.query;
}

