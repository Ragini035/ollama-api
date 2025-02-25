# Use Ubuntu as the base image
FROM ubuntu:latest

# Update system and install necessary packages
RUN apt update && apt install -y curl

# Install Ollama
RUN curl -fsSL https://ollama.ai/install.sh | sh

# Expose the default port for Ollama API
EXPOSE 11434

# Start the Ollama server
CMD ["ollama", "serve"]