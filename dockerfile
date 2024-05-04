# Use Node Alpine as the base image
FROM node:alpine

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app 

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application
COPY * ./

# Expose port 3000
EXPOSE 3000

# Command to run the application
CMD [ "node", "app.js" ]
