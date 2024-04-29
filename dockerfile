# Use Node Alpine as the base image
FROM node:alpine

# Create app directory
WORKDIR /express-repo

# Copy package.json and package-lock.json
COPY ./express-repo/package*.json .

# Install app dependencies
RUN npm install

# Copy the rest of the application
COPY ./express-repo/* .

# Expose port 3000
EXPOSE 3000

# Command to run the application
CMD [ "node", "app.js" ]
