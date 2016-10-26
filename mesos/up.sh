#!/bin/sh

# Cleanup slaves
docker-compose -f docker-compose.yaml -f docker-compose.cleanup.yaml up slave

# Run
docker-compose -f docker-compose.yaml up -d