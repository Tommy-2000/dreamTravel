FROM node:24-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

USER node

RUN pnpm add

COPY --chown=node:node . .

EXPOSE 8080

CMD [ "node", "app.ts" ]