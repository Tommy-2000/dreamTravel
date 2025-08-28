"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || (function () {
    var ownKeys = function(o) {
        ownKeys = Object.getOwnPropertyNames || function (o) {
            var ar = [];
            for (var k in o) if (Object.prototype.hasOwnProperty.call(o, k)) ar[ar.length] = k;
            return ar;
        };
        return ownKeys(o);
    };
    return function (mod) {
        if (mod && mod.__esModule) return mod;
        var result = {};
        if (mod != null) for (var k = ownKeys(mod), i = 0; i < k.length; i++) if (k[i] !== "default") __createBinding(result, mod, k[i]);
        __setModuleDefault(result, mod);
        return result;
    };
})();
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const amadeusClient_1 = require("../../amadeusClient");
const experienceRouter_1 = require("./experienceRouter");
const amadeus_ts_1 = __importStar(require("amadeus-ts"));
experienceRouter_1.experienceRouter.use(express_1.json);
// Select origin and destination through the airport and city search API
experienceRouter_1.experienceRouter.get(`/cityAndAirportSearch/:parameter`, async (req, res) => {
    const cityAndAirportSearchParams = {
        keyword: req.params.parameter,
        subType: amadeus_ts_1.default.location.any // Either an AIRPORT or CITY subtype
    };
    const searchResponse = await amadeusClient_1.amadeusClient.referenceData.locations.get(cityAndAirportSearchParams);
    try {
        await res.json(JSON.parse(searchResponse.body));
    }
    catch (responseError) {
        if (responseError instanceof amadeus_ts_1.ResponseError) {
            await res.json(responseError);
        }
    }
});
experienceRouter_1.experienceRouter.post("");
experienceRouter_1.experienceRouter.put("");
