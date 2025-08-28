"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const statusRouter_1 = require("./statusRouter");
statusRouter_1.statusRouter.use(express_1.json);
statusRouter_1.statusRouter.get("/amadeusStatus", (request, response) => {
    const amadeusStatus = {
        "amadeusStatus": "Running"
    };
    response.send(amadeusStatus);
});
