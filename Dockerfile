FROM node:8-alpine

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

RUN npm init -y

RUN npm install express

COPY ./server.js .

RUN npm install -y

EXPOSE 3000

CMD [ "node", "server.js" ]
