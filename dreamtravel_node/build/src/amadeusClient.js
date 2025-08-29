"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.tokenTestAmadeusApi = exports.baseTestAmadeusApi = exports.amadeusClient = void 0;
const nodeConfig_1 = require("./nodeConfig");
const amadeus_ts_1 = __importDefault(require("amadeus-ts"));
exports.amadeusClient = new amadeus_ts_1.default({
    clientId: nodeConfig_1.nodeConfig.amadeus_key,
    clientSecret: nodeConfig_1.nodeConfig.amadeus_secret
});
exports.baseTestAmadeusApi = "test.api.amadeus.com";
exports.tokenTestAmadeusApi = "test.api.amadeus.com/";
// export const baseProdAmadeusApi = "";
// export const tokenTestAmadeusApi = "";
