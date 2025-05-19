# Use a valid base image
FROM node:18

# Set the working directory
WORKDIR /app

# Try to copy a file that doesn't exist
COPY package.json .  # This file doesn't exist in the context

# Install dependencies (won't reach here)
RUN npm install

# Copy the rest of the app
COPY . .

# Start the app
CMD ["node", "index.js"]
