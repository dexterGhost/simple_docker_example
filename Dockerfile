# Specify a base image
FROM node:alpine

WORKDIR /usr/app

#Install dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

#Run command(s)
CMD ["npm", "start"]