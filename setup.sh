#!/bin/bash

# Vaihe 1: Kloonaa FastCVE-repository
if [ ! -d "FastCVE" ]; then
  echo "Cloning FastCVE repository..."
  git clone https://github.com/binareio/FastCVE.git
else
  echo "FastCVE repository already exists."
fi

cd FastCVE || exit

echo "Creating .env file..."
cat <<EOT > .env
POSTGRES_PASSWORD=postgres_password
FCDB_USER=fcdb_user
FCDB_PASS=fcdb_password
EOT

echo "Building Docker images..."
docker-compose build

echo "Starting Docker containers..."
docker-compose up

docker exec fastcve load --data cve cpe cwe capec

echo "Setup complete. FastCVE is now running."

docker run -d --name=grafana --network=fastcve_backend -p 3000:3000 grafana/grafana



