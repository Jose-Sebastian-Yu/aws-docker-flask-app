#!/bin/bash

echo "🚀 Starting deployment..."

cd ~/docker-app || exit

echo "📦 Building Docker image..."
docker build -t my-app .

echo "🛑 Stopping old container..."
docker stop my-app || true

echo "🗑️ Removing old container..."
docker rm my-app || true

echo "▶️ Starting new container..."
docker run -d -p 80:5000 --name my-app my-app

echo "✅ Deployment complete!"
