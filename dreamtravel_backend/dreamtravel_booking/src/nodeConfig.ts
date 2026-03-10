import dotenv from 'dotenv';

dotenv.config(); // Call on dotenv to fetch variables from env file

interface Config {
    nodePort: number;
    nodeEnv: string;
    amadeus_key: string;
    amadeus_secret: string;
}

// Export the amadeus API props and node props as a Config object

export const nodeConfig: Config = {
    nodePort: Number(process.env.NODE_PORT) || 3000,
    nodeEnv: process.env.NODE_DEV_ENV || 'Development',
    amadeus_key: process.env.AMADEUS_API_KEY || 'Amadeus Key Missing from Env File',
    amadeus_secret: process.env.AMADEUS_SECRET || 'Amadeus Secret Missing from Env File'
}




