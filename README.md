# Inception

## Overview

The **Inception** project provides hands-on experience in system administration using Docker within a virtual machine. It covers key aspects of virtualization and containerization, focusing on Docker utilization, configuration management, custom Docker image creation, server management in containers.

## Getting Started

To get started with the Inception project, follow these steps:

## Project Structure

- **`srcs/`**: Contains all project-related Docker configurations and files.
  - **`nginx/`**: Nginx container configuration.
  - **`wordpress/`**: WordPress setup files.
  - **`mariadb/`**: MariaDB configuration and initialization.
- **`.env`**: Environment variables file.
- **`Makefile`**: Used for building images, running containers, stopping containers, and deleting images.

  
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

## Contributions

Contributions are welcome! Submit issues or pull requests for improvements or fixes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

For questions or additional information, please contact:

- **Email**: mohammedzeroual200@gmail.com
- **GitHub**: [m-zeroual](https://github.com/yourusername)
