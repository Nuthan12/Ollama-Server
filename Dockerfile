# Base Ollama image
FROM ollama/ollama:latest

# Expose Ollama API port
EXPOSE 11434

# Preload a model so it’s available immediately on container start
RUN /bin/bash -c "ollama serve & sleep 15 && ollama pull llama3 && pkill ollama"

# Start Ollama server
CMD ["serve"]