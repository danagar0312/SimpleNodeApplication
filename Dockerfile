#node not found with just FROM alpine
FROM node:alpine 

#changing the working directory
WORKDIR /usr/app

#package.json not found
COPY ./package.json ./

RUN npm install

COPY ./ ./

CMD ["npm","start"]