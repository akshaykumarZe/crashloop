# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies (although we don’t have any)
RUN npm install

# Copy the rest of the application files
COPY . .

# Command to start the application
CMD ["node", "server.js"]
