# File: .dockerignore
node_modules
.env
tests
*.log
docker-compose.override.yml


# Updated Dockerfile
FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# Create non-root user
RUN useradd -m appuser
USER appuser

EXPOSE 3001
CMD ["npm", "start"]


# Updated docker-compose.yml
version: '3.8'

services:
  thoughtstream:
    container_name: thoughtstream-api
    build: .
    ports:
      - "3001:3001"
    env_file:
      - .env
    environment:
      - DB_PATH=/data/thoughtstream.db
    volumes:
      - thought_data:/data
    restart: unless-stopped

volumes:
  thought_data:


# Updated ecosystem.config.js
module.exports = {
  apps: [
    {
      name: 'thoughtstream-api',
      script: './index.js',
      instances: 'max',
      exec_mode: 'cluster',
      autorestart: true,
      watch: false,
      max_memory_restart: '200M',
      env: {
        NODE_ENV: 'production',
        PORT: 3001,
        DB_PATH: './thoughtstream.db'
      }
    }
  ]
};
