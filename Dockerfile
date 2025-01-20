# Use an appropriate Python base image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app
ENV GIT_DISCOVERY_ACROSS_FILESYSTEM 1

# Copy requirements.txt into the container
COPY requirements.txt .

# Install system dependencies for mysqlclient
RUN apt-get update && apt-get install -y \
    build-essential \
    default-libmysqlclient-dev \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Set the entry point or command for your application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
