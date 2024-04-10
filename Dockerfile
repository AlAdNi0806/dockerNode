# Use the official Node.js image as the base
FROM node:18.16.0-alpine3.17

# Set up the application directory
RUN mkdir -p /opt/app
WORKDIR /opt/app

# Install dependencies
RUN npm install express

# Write a simple Node.js application
RUN echo 'const express = require("express"); const app = express(); app.get("/", (req, res) => res.send("Hello World!")); app.listen(3000, () => console.log("App listening on port 3000!"));' > app.js

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run the application
CMD [ "node", "app.js" ]
