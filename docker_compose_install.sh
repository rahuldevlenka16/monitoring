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

# Create CLI plugins directory
mkdir -p ~/.docker/cli-plugins/

# Download latest Docker Compose v2
curl -SL https://github.com/docker/compose/releases/latest/download/docker-compose-linux-x86_64 \
  -o ~/.docker/cli-plugins/docker-compose

# Make it executable
chmod +x ~/.docker/cli-plugins/docker-compose


# Verify installations
echo "Docker version:"
docker --version

echo "Docker Compose version:"
docker compose version

echo "Done! Logout and login again to use docker without sudo."
