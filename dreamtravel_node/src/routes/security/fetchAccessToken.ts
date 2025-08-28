import { Request, Response } from 'express';
import { testAmadeusApi } from '../../amadeusClient'; 
import { tokenRouter } from './tokenRouter';
import { nodeConfig } from '../../nodeConfig';


// Access Granted Client Credentials
tokenRouter.post(`${testAmadeusApi}/accessToken`, async (req: Request, res: Response) => {
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


