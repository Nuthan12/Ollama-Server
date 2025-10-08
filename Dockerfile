# Simple Ollama Docker setup
FROM ollama/ollama:latest

# Expose default Ollama port
EXPOSE 11434

# Download a model when building (optional)
# Uncomment one of the following lines if you want it preloaded:
# RUN ollama pull llama3
# RUN ollama pull mistral

# Start the Ollama API server
CMD ["serve"]
