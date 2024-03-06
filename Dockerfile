FROM node:16-alpine
RUN apk update
WORKDIR app
COPY ./package.json .
RUN npm install
COPY ./index.js .
COPY .env .
EXPOSE 8000
CMD ["node","index.js"]

