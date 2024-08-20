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
  - **`docker-compose.yml`**: Defines and manages multi-container Docker applications.
- **`Makefile`**: Used for building images, running containers, stopping containers, and deleting images.

  
1. **Clone the Repository**

    ```bash
    git clone https://github.com/m-zeroual/inception.git
    cd inception
    ```

2. **Setup Virtual Machine**

    Set up a virtual machine environment to run Docker. You can use tools like VirtualBox or VMware.

3. **Install Docker**

    Install Docker following the official guide for your operating system:
    [Docker Installation Guide](https://docs.docker.com/get-docker/)
4. **.env File**

    The `.env` file is used to define environment variables that Docker containers will use. Environment variables are a way to configure containerized applications and services without hardcoding values directly into configuration files. This approach provides flexibility and allows you to manage configurations more effectively.
    
    ### Structure and Purpose
    
    - **General Structure**: The `.env` file typically contains key-value pairs, where each key represents an environment variable name, and each value represents the variable's value. The file should be placed in the root directory of your project or in the `srcs/` directory depending on your Docker Compose setup.
    
      **Example `.env` file**:
      
        ```
        # DATABASE
        DATABASE_NAME=wordpress
        DATABASE_USER=username
        DATABASE_PASS=password
        
        # Admin User
        ADMIN_URL=username.42.fr
        ADMIN_TITLE=wordpress
        ADMIN_USER=username
        ADMIN_PASS=admin-password
        ADMIN_EMAIL=exemple@gmail.com
        
        # Normal USER
        USER_NAME=name
        USER_PASS=password
        USER_EMAIL=exemple@gmail.com
        USER_ROLE=author
        
        # Nginx ENV
        DOMAIN_NAME=username.42.fr
  
4. **Makefile Targets**

    The `Makefile` provides several targets to manage Docker images and containers. Here’s a brief explanation of each target:
    
    - **`build`**: Builds Docker images using the cache. This is the default behavior and is generally faster but may not incorporate recent changes to   Dockerfiles.
    
    - **`build-no-cache`**: Builds Docker images without using the cache (`--no-cache` option). This ensures that the images are built from scratch and incorporates any recent changes to Dockerfiles or dependencies.
    
    - **`up`**: Starts Docker containers in detached mode. This runs the containers in the background, allowing you to use your terminal for other tasks.
    
    - **`down`**: Stops and removes Docker containers. This cleans up any running containers without deleting the images or volumes.
    
    - **`clean`**: Stops containers, removes images, and deletes volumes. This is a comprehensive cleanup that frees up space and ensures that no residual data is left behind.
    
    - **`rebuild`**: A convenience target that first cleans up by stopping containers and removing images, then rebuilds Docker images without using the cache, and finally restarts the containers. This is useful for ensuring a fresh build environment.
    
    You can run `make build-no-cache` to build your Docker images without using the cache. This might be necessary to ensure that all components are updated properly.


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
