#!/bin/bash

# Prompt the user for input
echo "Enter your prompt text:"
read user_input

# Create the output directory
mkdir -p output

# Run the Docker container with the user's input as the PROMPT environment variable
docker run -v $(pwd)/output:/output -e PROMPT="$user_input" -it martinkarlssonio/genai-image:latest