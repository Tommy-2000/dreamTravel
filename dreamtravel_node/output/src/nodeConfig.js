"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.nodeConfig = void 0;
const dotenv_1 = __importDefault(require("dotenv"));
dotenv_1.default.config(); // Call on dotenv to fetch variables from env file
// Export the amadeus API props and node props as a Config object
exports.nodeConfig = {
    nodePort: Number(process.env.NODE_PORT) || 3000,
    nodeEnv: process.env.NODE_DEV_ENV || 'Development',
    amadeus_key: process.env.AMADEUS_API_KEY || 'Amadeus Key Missing from Env File',
    amadeus_secret: process.env.AMADEUS_SECRET || 'Amadeus Secret Missing from Env File'
};
