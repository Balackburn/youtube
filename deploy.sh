#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Ensure you're on the main branch
git checkout main

# Pull the latest changes from main
git pull origin main

# Install dependencies
npm install

# Build the site
npm run build

# Deploy to GitHub Pages
npm run deploy

# Push changes if any updates are required on the main branch
git add -A
git commit -m "Build and deploy to GitHub Pages"
git push origin main

echo "Deployment to GitHub Pages complete."