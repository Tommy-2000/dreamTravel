"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.validateRequest = validateRequest;
exports.validateResponse = validateResponse;
const http_status_codes_1 = require("http-status-codes");
const zod_1 = __importDefault(require("zod"));
function validateRequest(zodSchema) {
    return async (req, res, next) => {
        try {
            zodSchema.safeParse(req.body);
            next(); // Continue with amadeus function if zod parsed the req.body correctly
        }
        catch (zodError) {
            if (zodError instanceof zod_1.default.ZodError) {
                res.status(http_status_codes_1.StatusCodes.BAD_REQUEST).json({ error: 'Zod detected invalid data', details: zodError.issues });
                res.status(http_status_codes_1.StatusCodes.INTERNAL_SERVER_ERROR).json({ error: 'Internal Server Error' });
            }
        }
    };
}
function validateResponse(zodSchema) {
    return async (req, res, next) => {
        try {
            zodSchema.safeParse(res.json);
            next(); // Continue with amadeus function if zod parsed the json response correctly
        }
        catch (zodError) {
            if (zodError instanceof zod_1.default.ZodError) {
                res.json({ error: 'Zod detected invalid data', details: zodError.issues });
            }
        }
    };
}
