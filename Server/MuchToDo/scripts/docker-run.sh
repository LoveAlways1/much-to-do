#!/bin/bash
set -e

echo "Starting MuchTodo with Docker Compose..."
docker compose -f docker-compose.yml up --build
