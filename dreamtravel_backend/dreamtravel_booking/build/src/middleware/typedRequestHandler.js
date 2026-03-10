"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.TypedQueryHandler = void 0;
const TypedQueryHandler = async (req) => {
    return req.query.query;
};
exports.TypedQueryHandler = TypedQueryHandler;
