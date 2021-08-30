FROM node:12-buster-slim

WORKDIR /usr/src/lhci
COPY package.json .
COPY server.js .
RUN npm install

ARG DATABASE_URL
ENV DATABASE_URL=$DATABASE_URL

EXPOSE 5000
CMD [ "npm", "start" ]
