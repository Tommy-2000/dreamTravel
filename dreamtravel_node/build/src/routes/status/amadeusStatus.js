"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
// import { amadeusClient } from "../../amadeusClient";
const statusRouter_1 = require("./statusRouter");
// import Amadeus, { ReferenceDataLocationsParams, ResponseError } from "amadeus-ts";
statusRouter_1.statusRouter.use(express_1.json);
statusRouter_1.statusRouter.get("/amadeus", (request, response) => {
    const amadeusStatus = {
        "amadeusStatus": "Running"
    };
    response.send(amadeusStatus);
});
