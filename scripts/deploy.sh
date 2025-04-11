#!/bin/bash
# Deployment script

echo "Deploying autonomous drone delivery system..."

# Build and start Docker containers
docker-compose up -d --build

echo "Deployment complete!"
