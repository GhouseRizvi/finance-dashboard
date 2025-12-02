#!/bin/bash

# Build and start containers
docker-compose down
docker-compose build --no-cache
docker-compose up -d

# Show logs
docker-compose logs -f

# Check services
echo "Services running:"
docker-compose ps

echo "Access points:"
echo "Frontend: http://localhost:3000"
echo "Backend API: http://localhost:8000"
echo "API Docs: http://localhost:8000/docs"
echo "PgAdmin: http://localhost:5050"