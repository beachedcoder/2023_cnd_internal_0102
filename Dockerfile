# Use base image for NodeJS
FROM node:19-alpine

# Copy application code.
COPY . /app/

# Change the working directory
WORKDIR /app

# Install dependencies.
RUN npm ci

# Start the Express app
CMD ["node", "server.js"]
