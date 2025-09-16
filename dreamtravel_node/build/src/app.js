"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const swagger_ui_express_1 = __importDefault(require("swagger-ui-express"));
const swagger_jsdoc_1 = __importDefault(require("swagger-jsdoc"));
// import { errorHandler } from './middleware/errorHandler';
const flightBooking_1 = require("./routes/flights/flightBooking");
const hotelBooking_1 = require("./routes/hotels/hotelBooking");
const experienceRouter_1 = require("./routes/experiences/experienceRouter");
const accessTokenFetch_1 = require("./routes/security/accessTokenFetch");
const statusFetch_1 = require("./routes/status/statusFetch");
const nodeConfig_1 = require("./nodeConfig");
const app = (0, express_1.default)();
// Use JSON parsing
app.use(express_1.default.json());
// Set the endpoints to use their corresponding routers
app.get(`/`, async (request, response) => {
    response.send("root");
});
app.get(`/test`, async (request, response) => {
    response.send("test");
});
app.use('/status', statusFetch_1.statusRouter);
app.use('/security', accessTokenFetch_1.tokenRouter);
app.use('/flights', flightBooking_1.flightRouter);
app.use('/hotels', hotelBooking_1.hotelRouter);
app.use('/experience', experienceRouter_1.experienceRouter);
// Use the global error handler -- AFTER setting endpoint routes
// app.use(errorHandler);
// In development mode, use Swagger to test API routers
const swaggerOptions = {
    swaggerDefinition: {
        openapi: '3.0.0',
        info: {
            title: 'dreamTravel API',
            version: '1.0.0',
            description: '',
        },
    },
    apis: ['./src/routes/*.ts'],
};
// Return the Swagger specs in JSON
const swaggerDocs = (0, swagger_jsdoc_1.default)(swaggerOptions);
// Serve Swagger with the doc options to this route
app.use('/dreamtravel-docs', swagger_ui_express_1.default.serve, swagger_ui_express_1.default.setup(swaggerDocs));
// Check if node is listening on the correct port
app.listen(nodeConfig_1.nodeConfig.nodePort, () => {
    return console.log(`Express is listening at http://localhost:${nodeConfig_1.nodeConfig.nodePort}`);
});
