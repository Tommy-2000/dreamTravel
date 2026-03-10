"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.securityRouter = void 0;
const express_1 = require("express");
const amadeusClient_1 = require("../../amadeusClient");
const tokenFetch_1 = require("./tokenFetch");
// Declare the router for security
exports.securityRouter = (0, express_1.Router)();
// Access Granted Client Credentials
exports.securityRouter.post(`${amadeusClient_1.testAmadeusApi}/v1/security/oauth2/token`, tokenFetch_1.tokenFetch);
