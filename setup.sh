#!/bin/bash
set -e

# geOrchestra Server Setup Script
# This script helps set up and start the geOrchestra server

echo "================================================"
echo "geOrchestra Server Setup"
echo "================================================"
echo ""

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "Error: Docker is not installed. Please install Docker first."
    echo "Visit: https://docs.docker.com/engine/installation/"
    exit 1
fi

# Check if Docker Compose V2 is available
if ! docker compose version &> /dev/null; then
    echo "Error: Docker Compose V2 is not available."
    echo "Please install Docker Compose V2: https://docs.docker.com/compose/install/"
    exit 1
fi

echo "✓ Docker is installed: $(docker --version)"
echo "✓ Docker Compose V2 is available: $(docker compose version)"
echo ""

# Check if submodules are initialized
if [ ! -f "docker/docker-compose.yml" ]; then
    echo "Initializing git submodules..."
    git submodule update --init --recursive
    echo "✓ Submodules initialized"
    echo ""
fi

# Navigate to docker directory
cd docker

echo "Starting geOrchestra server..."
echo "This may take a few minutes on first run..."
echo ""

docker compose up -d

echo ""
echo "================================================"
echo "geOrchestra server started successfully!"
echo "================================================"
echo ""
echo "Access the application at:"
echo "  https://georchestra-127-0-0-1.nip.io/"
echo ""
echo "Login credentials:"
echo "  User:  testuser / testuser"
echo "  Admin: testadmin / testadmin"
echo ""
echo "To view logs:"
echo "  docker compose logs -f"
echo ""
echo "To stop the server:"
echo "  docker compose down"
echo ""
echo "Note: You may need to accept a security warning"
echo "      or trust the TLS certificate (see README.md)"
echo "================================================"
