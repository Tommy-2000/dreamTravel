import { nodeConfig } from './nodeConfig';
import Amadeus from 'amadeus-ts';

export const amadeusClient = new Amadeus({
    clientId: nodeConfig.amadeus_key,
    clientSecret: nodeConfig.amadeus_secret
});

export const testAmadeusApi = "test.api.amadeus.com";

// const prodAmadeusApi = "";
