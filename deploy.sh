#!/bin/bash

echo "Stopping old container..."
sudo docker stop my-app || true
sudo docker rm my-app || true

echo "Building image..."
sudo docker build -t my-app .

echo "Running new container..."
sudo docker run -d -p 5000:5000 --name my-app my-app

echo "Deployment complete!"
