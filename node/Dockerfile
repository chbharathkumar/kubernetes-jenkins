FROM node:8

# Create app directory
WORKDIR /usr/src/app

COPY Repo/package*.json ./

RUN npm install -g

# Bundle app source
COPY Repo/* .

EXPOSE 8080
CMD [ "npm", "start" ]
