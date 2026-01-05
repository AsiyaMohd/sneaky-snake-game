# Use Python base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files (mainly static files and index.html)
COPY . .

# Expose port if Flask app will be run (default flask port 5000)
EXPOSE 5000

# Set environment variables to avoid python buffering
ENV PYTHONUNBUFFERED=1

# Command to run the flask app
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
