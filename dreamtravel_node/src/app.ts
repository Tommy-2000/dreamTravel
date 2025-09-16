import express from 'express';
import swaggerUi from 'swagger-ui-express';
import swaggerJsdoc from 'swagger-jsdoc';
import { Response, Request } from "express";
// import { errorHandler } from './middleware/errorHandler';
import { flightRouter } from './routes/flights/flightBooking';
import { hotelRouter } from './routes/hotels/hotelBooking';
import { experienceRouter } from './routes/experiences/experienceRouter';
import { tokenRouter } from './routes/security/accessTokenFetch';
import { statusRouter } from './routes/status/statusFetch';
import { nodeConfig } from './nodeConfig';

const app = express();

// Use JSON parsing
app.use(express.json());

// Set the endpoints to use their corresponding routers
app.get(`/`, async (request: Request, response: Response) => {
  response.send("root");
})

app.get(`/test`, async (request: Request, response: Response) => {
  response.send("test");
});

app.use('/status', statusRouter);
app.use('/security', tokenRouter);
app.use('/flights', flightRouter);
app.use('/hotels', hotelRouter);
app.use('/experience', experienceRouter);


// Use the global error handler -- AFTER setting endpoint routes
// app.use(errorHandler);


// In development mode, use Swagger to test API routers
const swaggerOptions = {
    swaggerDefinition: {
    openapi: '3.0.0',
    info: {
      title: 'dreamTravel API',
      version: '1.0.0',
      description: '',
    },
  },
  apis: ['./src/routes/*.ts'],
}

// Return the Swagger specs in JSON
const swaggerDocs = swaggerJsdoc(swaggerOptions);

// Serve Swagger with the doc options to this route
app.use('/dreamtravel-docs', swaggerUi.serve, swaggerUi.setup(swaggerDocs));

// Check if node is listening on the correct port
app.listen(nodeConfig.nodePort, () => {
    return console.log(`Express is listening at http://localhost:${nodeConfig.nodePort}`);
});

