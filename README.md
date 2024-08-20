# Inception

## Overview

The **Inception** project provides hands-on experience in system administration using Docker within a virtual machine. It covers key aspects of virtualization and containerization, focusing on Docker utilization, configuration management, custom Docker image creation, server management in containers, container resilience, user management, domain configuration, and security best practices.

## Project Objectives

- **Docker Utilization**: Learn to deploy and manage Docker containers.
- **Configuration Management**: Implement configurations for performance and security.
- **Custom Docker Images**: Create and manage Docker images tailored to project needs.
- **Server Management**: Run servers in Docker containers, ensuring effective management.
- **Container Resilience**: Ensure containers are resilient and maintain uptime.
- **User Management**: Manage users and permissions within Docker.
- **Domain Configuration**: Configure domains and networking.
- **Security Best Practices**: Apply security measures to protect the Docker environment.

## Getting Started

To get started with the Inception project, follow these steps:

1. **Clone the Repository**

    ```bash
    git clone https://github.com/yourusername/inception.git
    cd inception
    ```

2. **Setup Virtual Machine**

    Set up a virtual machine environment to run Docker. You can use tools like VirtualBox or VMware.

3. **Install Docker**

    Install Docker following the official guide for your operating system:
    [Docker Installation Guide](https://docs.docker.com/get-docker/)

4. **Configuration**

    - Configure Docker and the virtual machine according to the project requirements.
    - Create necessary Docker images and containers using the provided configuration files.

5. **Run the Setup**

    Use the `Makefile` to build images, run containers, stop containers, or delete images:

    ```bash
    make build       # Build Docker images
    make up          # Run Docker containers
    make down        # Stop Docker containers
    make clean       # Delete Docker images
    ```

6. **Verify**

    Check the status of running containers:

    ```bash
    docker ps
    ```

## Project Structure

- **`srcs/`**: Contains all project-related Docker configurations and files.
  - **`nginx/`**: Nginx container configuration.
  - **`wordpress/`**: WordPress setup files.
  - **`mariadb/`**: MariaDB configuration and initialization.
- **`.env`**: Environment variables file.
- **`Makefile`**: Used for building images, running containers, stopping containers, and deleting images.

Each folder inside `srcs/` contains a `Dockerfile`, and all container base images use Debian Bookworm.

## Security Considerations

- Follow best security practices for Docker containers and configurations.
- Regularly update Docker images to address vulnerabilities.
- Use strong passwords and manage access controls effectively.

## Contributions

Contributions are welcome! Submit issues or pull requests for improvements or fixes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

For questions or additional information, please contact:

- **Email**: your.email@example.com
- **GitHub**: [yourusername](https://github.com/yourusername)
