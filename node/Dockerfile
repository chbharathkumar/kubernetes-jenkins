FROM node:8

# Create app directory
WORKDIR /usr/src/app

COPY module/package*.json ./

RUN npm install -g

# Bundle app source
COPY module/* .

EXPOSE 8080
CMD [ "npm", "start" ]
