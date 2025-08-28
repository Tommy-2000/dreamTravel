import { RequestHandler, Request } from "express";
import { ResParams, ResBody, ReqBody, TypedQuery } from "../utils/custom_types";


export const QueryHandler: RequestHandler<ResParams, ResBody, ReqBody, TypedQuery> = async (req: Request) => {
    return req.query.query;
}

