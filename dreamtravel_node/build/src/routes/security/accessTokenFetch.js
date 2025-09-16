"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.tokenRouter = void 0;
const express_1 = require("express");
const amadeusClient_1 = require("../../amadeusClient");
const nodeConfig_1 = require("../../nodeConfig");
// Declare the router for accessing token credentials
exports.tokenRouter = (0, express_1.Router)();
// Access Granted Client Credentials
exports.tokenRouter.post(`${amadeusClient_1.tokenTestAmadeusApi}/accessToken`, async (req, res) => {
    res.contentType('application/x-www-form-urlencoded');
    res.header('Authorisation: Bearer'); // Set the headers with the client API keys
    req.body({
        grantType: "client_credentials",
        client_id: nodeConfig_1.nodeConfig.amadeus_key,
        client_secret: nodeConfig_1.nodeConfig.amadeus_secret
    });
});
// Get Token Information
// tokenRouter.get(`${testAmadeusApi}/v1/security/oauth2/token`, async (req: Request, res: Response) => {
// })
