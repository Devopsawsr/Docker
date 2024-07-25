#!/bin/bash

# Define the image name and container name
IMAGE_NAME="httpd:latest"
CONTAINER_NAME="httpd-container"

# Pull the latest httpd image
echo "Pulling the Docker image ${IMAGE_NAME}..."
docker pull ${IMAGE_NAME}

# Run the Docker container with the httpd image
echo "Running the Docker container ${CONTAINER_NAME}..."
docker run -d --name ${CONTAINER_NAME} -p 80:80 ${IMAGE_NAME}

# Check if the container is running
echo "Checking container status..."
docker ps
