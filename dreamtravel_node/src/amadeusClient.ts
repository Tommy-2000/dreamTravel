import { nodeConfig } from './nodeConfig';
import Amadeus from 'amadeus-ts';

export const amadeusClient = new Amadeus({
    clientId: nodeConfig.amadeus_key,
    clientSecret: nodeConfig.amadeus_secret
});

export const baseTestAmadeusApi = "test.api.amadeus.com";

export const tokenTestAmadeusApi = "test.api.amadeus.com/";

// export const baseProdAmadeusApi = "";

// export const tokenTestAmadeusApi = "";
