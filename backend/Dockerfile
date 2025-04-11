FROM node:16-alpine

WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy application files
COPY . .

# Expose the API port
EXPOSE 8080

# Start the application
CMD ["npm", "start"]
