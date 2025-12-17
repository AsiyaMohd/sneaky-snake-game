# Sneaky Snake Game - Implementation Guide

## Prerequisites
- Docker and Docker Compose installed on your local machine or server
- GitHub account with access to repository
- Docker Hub account for pushing Docker images (optional)
- Python 3.11 (for local development without Docker)

## Repository Setup
1. Clone the repository:
   ```bash
   git clone https://github.com/AsiyaMohd/sneaky-snake-game.git
   cd sneaky-snake-game
   ```

## Environment Variables
- None required currently, but CI uses `DOCKERHUB_USERNAME` and `DOCKERHUB_TOKEN` secrets for pushing Docker images.

## Local Development
### Running without Docker
- Install Python 3.11 and pip
- Install dependencies:
  ```bash
  pip install -r requirements.txt
  ```
- Run the Flask app:
  ```bash
  python3 -m flask run
  ```
- Open browser on `http://localhost:5000`

### Running with Docker
- Build and run the Docker container:
  ```bash
  docker build -t sneaky-snake-game .
  docker run -p 5000:5000 sneaky-snake-game
  ```
- Alternatively, use Docker Compose:
  ```bash
  docker-compose up --build
  ```
- Open browser on `http://localhost:5000`

## CI/CD Pipeline
- On push or pull request to `main` branch, GitHub Actions pipeline runs:
  - Installs dependencies
  - Runs tests (currently no tests)
  - Builds Docker image
  - Logs into Docker Hub (credentials must be set up in repo secrets)
  - Pushes Docker image to Docker Hub repository `${{ secrets.DOCKERHUB_USERNAME }}/sneaky-snake-game`

## Notes
- The current backend is a Flask app serving the front-end game assets.
- No database or external services are required.
- The game runs fully client-side in the browser.

## Troubleshooting
- Ensure Python version and dependencies are correctly installed.
- Ensure Docker is running with proper permissions.
- Check GitHub Actions logs for CI pipeline errors.

## Contributing
- Please follow the guidelines in CONTRIBUTING.md when submitting pull requests.

## Additional Resources
- Project README.md contains game overview and controls.
- Source code in `statics/js/` has JavaScript game logic.

Thank you for using Sneaky Snake Game!
