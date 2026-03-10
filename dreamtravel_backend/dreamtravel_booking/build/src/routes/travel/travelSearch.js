"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.pointsOfInterestBySquare = exports.pointsOfInterest = exports.cityAndAirportSearch = void 0;
const amadeus_ts_1 = require("amadeus-ts");
const amadeusClient_1 = require("../../amadeusClient");
const cityAndAirportSearch = async (req, res) => {
    const { subType, keyword, countryCode, page, sort, view } = req.body;
    const searchResponse = await amadeusClient_1.amadeusClient.referenceData.locations.get({
        subType,
        keyword,
        countryCode,
        page,
        sort,
        view
    });
    try {
        await res.json(JSON.parse(searchResponse.body));
    }
    catch (responseError) {
        if (responseError instanceof amadeus_ts_1.ResponseError) {
            await res.json(responseError);
        }
    }
};
exports.cityAndAirportSearch = cityAndAirportSearch;
const pointsOfInterest = async (req, res) => {
    const { latitude, longitude, radius, page, categories } = req.body;
    const searchResponse = await amadeusClient_1.amadeusClient.referenceData.locations.pointsOfInterest.get({
        latitude,
        longitude,
        radius,
        page,
        categories
    });
    try {
        await res.json(JSON.parse(searchResponse.body));
    }
    catch (responseError) {
        if (responseError instanceof amadeus_ts_1.ResponseError) {
            await res.json(responseError);
        }
    }
};
exports.pointsOfInterest = pointsOfInterest;
const pointsOfInterestBySquare = async (req, res) => {
    const { north, west, south, east, page, categories } = req.body;
    const searchResponse = await amadeusClient_1.amadeusClient.referenceData.locations.pointsOfInterest.bySquare.get({
        north,
        west,
        south,
        east,
        page,
        categories
    });
    try {
        await res.json(JSON.parse(searchResponse.body));
    }
    catch (responseError) {
        if (responseError instanceof amadeus_ts_1.ResponseError) {
            await res.json(responseError);
        }
    }
};
exports.pointsOfInterestBySquare = pointsOfInterestBySquare;
