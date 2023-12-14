#!/bin/bash

# Find the container ID for the stopped container using the image 'martinkarlssonio/gen-ai-image:base'
container_id=$(docker ps -aqf "ancestor=martinkarlssonio/gen-ai-image:base" --latest)

# Check if the container ID was found
if [ -z "$container_id" ]; then
    echo "No container found for the image 'martinkarlssonio/gen-ai-image:base'"
    exit 1
fi

# Output the logs for the found container
echo "Fetching logs for container ID: $container_id"
docker logs $container_id
