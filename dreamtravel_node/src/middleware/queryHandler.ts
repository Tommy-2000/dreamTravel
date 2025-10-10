import { RequestHandler, Request } from "express";
import { ResParams, ResBody, ReqBody, ReqQuery } from "../utils/custom_types";


export const QueryHandler: RequestHandler<ResParams, ResBody, ReqBody, ReqQuery> = async (req: Request) => {
    return req.query.query;
}

