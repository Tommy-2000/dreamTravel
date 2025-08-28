import { json, Request, Response } from "express";
import { statusRouter } from "./statusRouter";

statusRouter.use(json);

statusRouter.get("/clientStatus", (request: Request, response: Response) => {
    const apiClientStatus = {
        "apiClientStatus": "Running"
    };

    response.send(apiClientStatus);
});
