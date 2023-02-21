# Image to build from (from Docker Hub)
FROM node:16
# create a directory to hold the application code inside the image, this will be the working directory for your application
WORKDIR /usr/src/app
# Install dependencies
COPY package*.json ./

RUN npm install
# bundle your app's source code inside the Docker image#
COPY . .
# choose the port
EXPOSE 8080
# command to run the app node server.js
CMD [ "node", "server.js" ]
