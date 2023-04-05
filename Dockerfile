FROM node:alpine as build-api

WORKDIR /app

COPY package.json ./

RUN npm install

COPY . .

EXPOSE 3000

ENV STORY_FOLDER=story

VOLUME [ "/app/story" ]

CMD [ "node", "app.js" ]