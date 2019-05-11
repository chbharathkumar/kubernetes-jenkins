FROM node:8

# Create app directory
WORKDIR /usr/src/app

COPY Module/package*.json ./

RUN npm install -g

# Bundle app source
COPY Module/* .

EXPOSE 8080
CMD [ "npm", "start" ]
