"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.tokenFetch = void 0;
const nodeConfig_1 = require("../../nodeConfig");
const tokenFetch = async (req, res) => {
    res.contentType('application/x-www-form-urlencoded');
    res.header('Authorisation: Bearer'); // Set the headers with the client API keys
    req.body({
        grantType: "client_credentials",
        client_id: nodeConfig_1.nodeConfig.amadeus_key,
        client_secret: nodeConfig_1.nodeConfig.amadeus_secret
    });
};
exports.tokenFetch = tokenFetch;
