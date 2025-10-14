import { Router } from 'express';
import { testAmadeusApi } from '../../amadeusClient'; 
import { tokenFetch } from './tokenFetch';

// Declare the router for security
export const securityRouter = Router();

// Access Granted Client Credentials
securityRouter.post(`${testAmadeusApi}/v1/security/oauth2/token`, tokenFetch)



