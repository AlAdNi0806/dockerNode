# Use the official Node.js image as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install any needed packages specified in package.json
RUN npm install

# Bundle app source inside Docker image
COPY . .

# Expose port 3000 for the web server
EXPOSE 3000

# The command to run when the container starts
CMD [ "node", "app.js" ]
