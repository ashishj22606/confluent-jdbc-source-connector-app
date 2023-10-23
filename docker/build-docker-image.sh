#!/bin/bash

# Set the name and tag for your Docker image
IMAGE_NAME="your-docker-image-name"
IMAGE_TAG="latest"

# Build the Docker image
docker build -t $IMAGE_NAME:$IMAGE_TAG -f docker/Dockerfile .

# Push the Docker image to a Docker registry (if needed)
# docker push $IMAGE_NAME:$IMAGE_TAG

echo "Docker image $IMAGE_NAME:$IMAGE_TAG has been built successfully."
