# PowerShell Script (.ps1)

# Prompt the user for input
Write-Host "Enter your prompt text:"
$user_input = Read-Host

# Create the output directory
New-Item -ItemType Directory -Force -Path ".\output"

# Run the Docker container with the user's input as the PROMPT environment variable
docker run -v "$(PWD)\output:/output" -e "PROMPT=$user_input" -it martinkarlssonio/genai-image:latest