import { Request, Response } from "express";
import { Query } from 'express-serve-static-core';

// Declare custom types when handling requests

// Custom Response and Request Types
export type ResParams = { [key: string]: string }; // ParamsDirectory
export type ResBody = object; // Any
export type ReqBody = object; // Any
export type ReqQuery = { // Use this if all query params have different param types
    query: string
}

// Type Interfaces

export interface RequestBody<Type> extends Request {
    body: Type
}

export interface ResponseBody<Type> extends Response {
    body: Type
}

export interface TypedRequestQuery<Type extends ReqQuery> extends Request {
    query: Type
}

export interface TypedResponseQuery<Type extends ReqQuery> extends Request {
    query: Type
}

export interface RequestQuery<Type extends Query> extends Request {
    query: Type // QueryString.ParsedQs
}

export interface ResponseQuery<Type extends Query> extends Response {
    query: Type // QueryString.ParsedQs
}


