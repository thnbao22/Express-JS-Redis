FROM node:18-alpine

EXPOSE 80
WORKDIR /app

COPY package-lock.json .
COPY package.json .
RUN npm install

COPY app.js .
ENTRYPOINT [ "app.js", "node" ]