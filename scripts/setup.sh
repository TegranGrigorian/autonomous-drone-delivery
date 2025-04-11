#!/bin/bash
# Setup script for development environment

echo "Setting up development environment..."

# Install backend dependencies
echo "Installing backend dependencies..."
cd ../backend
npm install

# Install frontend dependencies
echo "Installing frontend dependencies..."
cd ../frontend
npm install

# Install drone dependencies
echo "Installing drone dependencies..."
cd ../drone
pip install -r requirements.txt

echo "Setup complete!"
