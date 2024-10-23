FROM node:22.10.0-alpine3.20
LABEL authors="sholly"

RUN mkdir -p /home/node/app/node_modules && \
    chown -R node:node /home/node/app

WORKDIR /home/node/app

USER node
COPY --chown=node:node package*.json ./
COPY --chown=node:node app.js ./

RUN id
RUN npm install

EXPOSE 8080
ENTRYPOINT ["node", "app.js"]