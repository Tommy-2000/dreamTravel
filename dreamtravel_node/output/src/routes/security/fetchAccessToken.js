"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const amadeusClient_1 = require("../../amadeusClient");
const tokenRouter_1 = require("./tokenRouter");
const nodeConfig_1 = require("../../nodeConfig");
// Access Granted Client Credentials
tokenRouter_1.tokenRouter.post(`${amadeusClient_1.testAmadeusApi}/accessToken`, async (req, res) => {
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
