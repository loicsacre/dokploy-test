# Use official Node.js image
FROM node:20-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package files and install deps
COPY package*.json ./
RUN npm install --production

# Copy app source
COPY . .

# Expose the port used by the app
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
