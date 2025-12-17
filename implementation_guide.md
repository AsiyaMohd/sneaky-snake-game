# Sneaky Snake Game - Implementation and Deployment Guide

## Overview

Sneaky Snake is a modern web-based implementation of the classic Snake game built with vanilla HTML, CSS, and JavaScript. It is a purely front-end application which runs completely in the browser.

## Prerequisites

- Docker installed locally for building and running the container image.
- Docker Hub account (or other container registry) for pushing images (for CI/CD).
- GitHub account with repository secrets configured for CI/CD.

## Required GitHub Secrets

For the provided GitHub Actions workflow to build and push the Docker image, you need to set these repository secrets:

- `DOCKER_USERNAME`: Your Docker Hub username.
- `DOCKER_PASSWORD`: Your Docker Hub password or access token.

## Local Development

You can simply open the `index.html` file directly in your browser to play the game:

```bash
# Clone the repository
 git clone https://github.com/AsiyaMohd/sneaky-snake-game.git
 cd sneaky-snake-game

# Open index.html directly in browser
 open index.html  # or just double-click index.html in your file explorer
```

## Building and Running with Docker

To build and run the application using Docker:

```bash
# Build Docker image locally
 docker build -t sneaky-snake-game .

# Run container
 docker run -p 80:80 sneaky-snake-game

# Visit http://localhost in your browser to play the game
```

Or using docker-compose:

```bash
docker-compose up
```

## Deployment Process

This repository includes a GitHub Actions workflow that automatically builds and pushes the Docker image to Docker Hub upon pushes to the `main` branch. You must configure your Docker Hub credentials in the repository secrets for this to work.

## Environment Variables

No environment variables are required as this is a static frontend project.

## Database and External Services

No database or external service is used. All high scores are saved locally in the browser's localStorage.

## Troubleshooting

- Ensure Docker is installed and running.
- Verify Docker Hub credentials in GitHub secrets.
- If the app does not load, check browser console for JavaScript errors.

## Additional Notes

- If you want to customize the image name or push to another registry, modify the GitHub Actions workflow accordingly.
