#!/bin/bash

# Update system
sudo dnf update -y

# Install Docker
sudo dnf install -y docker

# Start and enable Docker
sudo systemctl start docker
sudo systemctl enable docker

# Add current user to docker group
sudo usermod -aG docker $USER

# Install Docker Compose plugin (v2)
sudo dnf install -y docker-compose-plugin

# Verify installations
echo "Docker version:"
docker --version

echo "Docker Compose version:"
docker compose version

echo "Done! Logout and login again to use docker without sudo."
