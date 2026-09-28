#!/bin/bash

# Start Qdrant in Docker and persist its database under qdrant_storage.
# Ensure the qdrant_storage directory exists
mkdir -p "$(pwd)/qdrant_storage"

# Run the Qdrant container in the background
docker run -d -p 6333:6333 -p 6334:6334 \
    -v "$(pwd)/qdrant_storage:/qdrant/storage:z" \
    qdrant/qdrant

# Print running containers
docker ps | grep qdrant