"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.QueryHandler = void 0;
const QueryHandler = async (req) => {
    return req.query.query;
};
exports.QueryHandler = QueryHandler;
