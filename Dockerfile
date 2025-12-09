# Use Node 18 as base image
FROM node:18-alpine

# Set working directory inside container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json first (for better caching)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy all project files
COPY . .

# Expose app port (from your index.js default port)
EXPOSE 3000

# Command to start the Node.js app
CMD ["npm", "start"]
