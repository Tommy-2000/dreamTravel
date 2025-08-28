"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const errorHandler_1 = require("./middleware/errorHandler");
const flightRouter_1 = require("./controllers/flights/flightRouter");
const hotelRouter_1 = require("./controllers/hotels/hotelRouter");
const experienceRouter_1 = require("./controllers/experiences/experienceRouter");
const tokenRouter_1 = require("./controllers/security/tokenRouter");
const statusRouter_1 = require("./controllers/status/statusRouter");
const app = (0, express_1.default)();
// Use JSON parsing
app.use(express_1.default.json());
// Set the endpoints to use their corresponding routers
app.use('/status', statusRouter_1.statusRouter);
app.use('/security', tokenRouter_1.tokenRouter);
app.use('/flights', flightRouter_1.flightRouter);
app.use('/hotels', hotelRouter_1.hotelRouter);
app.use('/experience', experienceRouter_1.experienceRouter);
// Use the global error handler -- AFTER setting endpoint routes
app.use(errorHandler_1.errorHandler);
exports.default = app;
