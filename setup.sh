#!/bin/bash

# Exit on any error
set -e

# Function to display messages
log() {
  echo -e "\033[0;34m[INFO]\033[0m $1"
}

error() {
  echo -e "\033[0;31m[ERROR]\033[0m $1"
  exit 1
}

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
  error "Docker is not installed. Please install Docker before proceeding."
fi

# Check if Docker Compose is installed
if ! command -v docker-compose &> /dev/null; then
  error "Docker Compose is not installed. Please install Docker Compose before proceeding."
fi

log "Checking environment file..."
if [ ! -f .env ]; then
  log "Creating .env file from example"
  cp .env.example .env
  log "Please update the .env file with your actual settings."
fi

log "Setting up web configuration..."
if [ ! -f web/config.js ]; then
  log "Creating web config.js from example"
  cp web/config.example.js web/config.js
  log "Please update web/config.js with your backend API address."
fi

log "Building Docker containers..."
docker-compose build

log "Setup complete! You can now start the backend services with:"
log "docker-compose up -d"
log ""
log "Start the web server on your VM with:"
log "cd web && npm install && npm start"
