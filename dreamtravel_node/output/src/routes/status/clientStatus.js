"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const statusRouter_1 = require("./statusRouter");
statusRouter_1.statusRouter.use(express_1.json);
statusRouter_1.statusRouter.get("/clientStatus", (request, response) => {
    const apiClientStatus = {
        "apiClientStatus": "Running"
    };
    response.send(apiClientStatus);
});
