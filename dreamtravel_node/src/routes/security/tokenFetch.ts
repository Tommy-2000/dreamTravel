import { Request, Response } from 'express';
import { nodeConfig } from '../../nodeConfig';

export const tokenFetch = async (req: Request, res: Response) => {
    res.contentType('application/x-www-form-urlencoded')
    res.header('Authorisation: Bearer') // Set the headers with the client API keys
    req.body({
        grantType: "client_credentials",
        client_id: nodeConfig.amadeus_key,
        client_secret: nodeConfig.amadeus_secret
    })
}

