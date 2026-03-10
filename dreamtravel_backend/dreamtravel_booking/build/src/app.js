"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const swagger_ui_express_1 = __importDefault(require("swagger-ui-express"));
const swagger_jsdoc_1 = __importDefault(require("swagger-jsdoc"));
const flightRouter_1 = require("./routes/flights/flightRouter");
const hotelRouter_1 = require("./routes/hotels/hotelRouter");
const travelRouter_1 = require("./routes/travel/travelRouter");
const securityRouter_1 = require("./routes/security/securityRouter");
const statusRouter_1 = require("./routes/status/statusRouter");
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
app.use('/status', statusRouter_1.statusRouter);
app.use('/security', securityRouter_1.securityRouter);
app.use('/flights', flightRouter_1.flightRouter);
app.use('/hotels', hotelRouter_1.hotelRouter);
app.use('/travel', travelRouter_1.travelRouter);
// Use the global error handler after setting endpoint routes
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
    apis: ['./src/*.ts'],
};
// Return the Swagger specs in JSON
const swaggerDocs = (0, swagger_jsdoc_1.default)(swaggerOptions);
// Serve Swagger with the doc options to this route
app.use('/swagger-docs', swagger_ui_express_1.default.serve, swagger_ui_express_1.default.setup(swaggerDocs));
// Check if node is listening on the correct port
app.listen(nodeConfig_1.nodeConfig.nodePort, () => {
    return console.log(`Express is listening at http://localhost:${nodeConfig_1.nodeConfig.nodePort}`);
});
