import express from 'express';
import swaggerUi from 'swagger-ui-express';
import swaggerJsdoc from 'swagger-jsdoc';
import { Response, Request } from "express";
import { flightRouter } from './routes/flights/flightRouter';
import { hotelRouter } from './routes/hotels/hotelRouter';
import { travelRouter } from './routes/travel/travelRouter';
import { securityRouter } from './routes/security/securityRouter';
import { statusRouter } from './routes/status/statusRouter';
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
app.use('/security', securityRouter);
app.use('/flights', flightRouter);
app.use('/hotels', hotelRouter);
app.use('/travel', travelRouter);


// Use the global error handler after setting endpoint routes
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
  apis: ['./src/*.ts'],
}

// Return the Swagger specs in JSON
const swaggerDocs = swaggerJsdoc(swaggerOptions);

// Serve Swagger with the doc options to this route
app.use('/swagger-docs', swaggerUi.serve, swaggerUi.setup(swaggerDocs));

// Check if node is listening on the correct port
app.listen(nodeConfig.nodePort, () => {
    return console.log(`Express is listening at http://localhost:${nodeConfig.nodePort}`);
});

