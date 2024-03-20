# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Install MySQL dependencies
RUN apt-get update && apt-get install -y default-mysql-client

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the mysql package and other dependencies for Node.js
RUN npm install

# Copy the updated application code
COPY . .

# Specify the command to run your application
CMD ["node", "app.js"]