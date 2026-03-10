#!/bin/bash

# Deployment script for Vite React app on Azure
set -e

echo "Starting deployment..."

echo "Installing dependencies..."
npm ci --production=false

echo "Building React app..."
npm run build

echo "Build complete! Output in dist/"

echo "Copying web.config to dist..."
cp web.config dist/

echo "Deployment preparation complete!"
