#define the base image to download nodejs
FROM node:alpine
WORKDIR '/usr/app'
COPY package*.json ./
RUN npm install
COPY ./ ./
CMD npm run start
