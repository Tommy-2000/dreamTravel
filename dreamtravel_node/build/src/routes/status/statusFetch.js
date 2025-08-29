"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.statusRouter = void 0;
const express_1 = require("express");
// Declare the router for checking status
exports.statusRouter = (0, express_1.Router)();
exports.statusRouter.get(`/amadeusStatus`, async (request, response) => {
    response.send("Amadeus Server Connected");
});
exports.statusRouter.get(`/clientStatus`, async (request, response) => {
    response.send("Node Server Connected");
});
