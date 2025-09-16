import { Request, Response, Router } from 'express';
import { tokenTestAmadeusApi } from '../../amadeusClient'; 
import { nodeConfig } from '../../nodeConfig';

// Declare the router for accessing token credentials
export const tokenRouter = Router();

// Access Granted Client Credentials
tokenRouter.post(`${tokenTestAmadeusApi}/accessToken`, async (req: Request, res: Response) => {
    res.contentType('application/x-www-form-urlencoded')
    res.header('Authorisation: Bearer') // Set the headers with the client API keys
    req.body({
        grantType: "client_credentials",
        client_id: nodeConfig.amadeus_key,
        client_secret: nodeConfig.amadeus_secret
    })
})


// Get Token Information
// tokenRouter.get(`${testAmadeusApi}/v1/security/oauth2/token`, async (req: Request, res: Response) => {
    
// })


