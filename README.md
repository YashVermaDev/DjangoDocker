# DjangoDocker

This project demonstrates how to containerize a Django application using Docker and Docker Compose, providing an isolated and reproducible development environment.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
  - [Clone the Repository](#clone-the-repository)
  - [Build and Run the Containers](#build-and-run-the-containers)
- [Accessing the Application](#accessing-the-application)
- [Managing Dependencies](#managing-dependencies)
- [Stopping the Application](#stopping-the-application)
- [Cleaning Up](#cleaning-up)
- [Contributing](#contributing)
- [License](#license)

## Prerequisites

Before you begin, ensure you have the following installed on your system:

- [Docker](https://docs.docker.com/get-docker/): To containerize and run the application.
- [Docker Compose](https://docs.docker.com/compose/install/): To manage multi-container applications.

## Project Structure

```
DjangoDocker/
├── app/
│   ├── manage.py
│   ├── myproject/
│   │   ├── __init__.py
│   │   ├── settings.py
│   │   ├── urls.py
│   │   └── wsgi.py
│   └── ...
├── Dockerfile
├── docker-compose.yml
└── requirements.txt
```

- `app/`: Contains the Django application code.
- `Dockerfile`: Defines the image for the Django application.
- `docker-compose.yml`: Configures the services, networks, and volumes for Docker Compose.
- `requirements.txt`: Lists the Python dependencies for the project.

## Getting Started

Follow these steps to set up and run the project:

### Clone the Repository

```bash
git clone https://github.com/YashVermaDev/DjangoDocker.git
cd DjangoDocker
```

### Build and Run the Containers

Use Docker Compose to build and start the application:

```bash
docker-compose up --build
```

This command performs the following actions:

1. Builds the Docker image for the Django application using the `Dockerfile`.
2. Starts the Django development server within a Docker container.

## Accessing the Application

Once the containers are up and running, access the Django application at:

```
http://localhost:8000/
```

## Managing Dependencies

To add new Python packages:

1. Add the package to the `requirements.txt` file.
2. Rebuild the Docker image to install the new dependencies:

   ```bash
   docker-compose up --build
   ```

## Stopping the Application

To stop the running containers:

```bash
docker-compose down
```

This command stops and removes the containers defined in `docker-compose.yml`.

## Cleaning Up

To remove all Docker images and containers associated with this project:

```bash
docker system prune -a
```

**Warning**: This command removes all unused containers, networks, images, and optionally, volumes. Use with caution.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request with your changes.

## License

This project is licensed under the [MIT License](LICENSE).

