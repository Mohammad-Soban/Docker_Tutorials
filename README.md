# DOCKER TUTORIALS

## WHAT IS DOCKER
Docker is a platform that enables the developers to build, package and deploy an application quickly and efficiently by using containerization technology. It is solving the problem of "it works on my machine" by providing a consistent environment for the application to run, regardless of where it is deployed.

So Docker containers encapsulate an application and its dependencies into a single unit that can run anywhere, be it on a developer's laptop, on-premises data center, or in the cloud, thus ensuring that the application runs reliably on any system.


## WHY DO WE NEED DOCKER

Suppose that we are creating an application, so it is an obvious fact that there are dependencies that are required for the application to run. These dependencies can be anything like a specific version of a programming language, libraries, packages, os, etc. Now, if we want to deploy this application on another machine, we need to make sure that all these dependencies are installed on that machine as well. This can be a tedious task and can lead to errors if any dependency is missing or incompatible.

Hence we introduce the concept of Docker, which helps us solve this problem.


## ADVANTAGES OF USING DOCKER
1. Portability: Docker containers can run on any system that supports Docker, making it easy to move applications between different environments.
2. Consistency: Docker ensures that the application runs the same way in different environments, reducing the chances of errors due to environment differences.
3. Isolation: Docker containers provide a level of isolation between applications, ensuring that they do not interfere with each other.
4. Scalability: Docker makes it easy to scale applications up or down by adding or removing containers as needed.
5. Efficiency: Docker containers are lightweight and use fewer resources compared to traditional virtual machines, making them more efficient.


## Why not use Virtual Machines (VMs)
While both Docker containers and Virtual Machines (VMs) provide isolation for applications, there are several reasons why Docker is often preferred over VMs:

1. Lightweight: Docker containers share the host operating system's kernel, making them much lighter in terms of resource usage compared to VMs, which require a full guest OS for each instance.

2. Faster Startup: Docker containers can start up in seconds, while VMs can take minutes to boot up since they need to load a full OS.

3. Better Resource Utilization: Docker allows for higher density of applications on a single host since containers use fewer resources compared to VMs.

4. Easier Management: Docker provides a simpler and more efficient way to manage application dependencies and configurations through Dockerfiles and images, whereas VMs often require more complex management tools.

So in simple terms, Virtual Machines are like running multiple computers on a single physical machine, each with its own operating system, while Docker containers are like running multiple applications on a single operating system, sharing the same kernel. This makes Docker more efficient and faster for deploying applications. 


## WHAT IS A DOCKER IMAGE
A Docker image is a lightweight, standalone and executable software package that includes everything needed to run a piece of software, including the code, runtime, libraries, environment variables, and configuration files. It is a read-only template used to create Docker containers.

In simpler terms, a Docker image is a copy of the entire application which was developed by the developer, with all dependencies included, that can directly run on any system that has Docker installed, without worrying about the underlying environment or dependencies.


## WHAT IS A DOCKER FILE
A Dockerfile is a text file that has all the instructions to build a Docker image. By building we mean that it contains a set of commands that are executed in sequence to create a Docker image. It is essentially a blueprint for creating Docker images. It contains a series of instructions that specify how to set up the environment, install dependencies, copy files, and configure the application.

The key components of a Dockerfile include:
1. FROM : It specifies the base image to use for the Docker image.
2. COPY : It is used to copy files and directories from the host machine to the Docker image.
3. ADD : It is similar to COPY but has additional features like extracting tar files and fetching files from URLs.
4. RUN : It is used to execute commands in the image during the build process.
5. CMD or ENTRYPOINT : It specifies the command to run when a container is started from the image.
6. EXPOSE : It indicates the ports that the container will listen on at runtime.


## HOW TO CREATE A DOCKERFILE
To create a Dockerfile, follow these steps:
1. Create a new file named `DockerFile` (without any file extension) in your project directory and then open it.

2. Start by specifying the base image using the `FROM` instruction. For example, to use the official Python image, you would write:
   
   ```FROM python:3.xx-slim```
   
    Here xx is the version of python you want to use and slim is a lightweight version of the image.

3. Next, you can set the working directory inside the container using the `WORKDIR` instruction. For example:
   
   ```WORKDIR /app```
    
    This will set the working directory to `/app` inside the container.

4. Then we can copy the application files from the host machine to the container using the `COPY` instruction. For example:
   
   ```COPY . /app```
    
    This will copy all the files from the current directory on the host machine to the `/app` directory inside the container.

5. If your application has dependencies, you can install them using the `RUN` instruction. For example, if you have a `requirements.txt` file for a Python application, you can install the dependencies like this:
   
   ```RUN pip install -r requirements.txt```

6. If your application needs to expose a port, you can use the `EXPOSE` instruction. For example, to expose port 5000, you would write:
   
   ```EXPOSE 5000```

7. Finally, you can specify the command to run your application using the `CMD` or `ENTRYPOINT` instruction. For example, to run a Python application, you would write:

   ```CMD ["python", "app.py"]```

    This will run the `app.py` file when the container starts.

8. Apart from that we can also use the `ENV` instruction to set environment variables, the `VOLUME` instruction to create mount points for data persistence, and the `LABEL` instruction to add metadata to the image. There are many other instructions available in Dockerfile that can be used to customize the image as per the requirements.


## WHAT IS DOCKER DESKTOP
Docker Desktop is an application that provides an easy-to-use interface for managing Docker containers and images on your local machine. It is available for Windows and macOS operating systems.

Docker Desktop includes a graphical user interface (GUI) that allows users to manage Docker containers, images, networks, and volumes without using the command line. It also includes a command-line interface (CLI) for advanced users who prefer to work with Docker using terminal commands.

Docker desktop provides features like automatic updates, integration with popular development tools, and support for Kubernetes, making it a comprehensive solution for containerized application development and deployment on local machines.

## WHAT IS DOCKER HUB
Docker Hub is a cloud-based registry service provided by Docker that allows users to store, share,
and manage Docker images. It is a central repository where developers can find and download pre-built Docker images for various applications and services.

Docker Hub provides a wide range of features, including:
1. Public and Private Repositories: Users can create public repositories that are accessible to everyone or private repositories that are only accessible to authorized users.

2. Automated Builds: Docker Hub can automatically build Docker images from source code repositories, making it easy to keep images up-to-date.

3. Image Versioning: Docker Hub allows users to tag and version their Docker images, making it easy to manage different versions of an application.

4. Collaboration: Docker Hub provides collaboration features that allow teams to work together on Docker images and share them with others.

5. Integration with CI/CD Tools: Docker Hub can be integrated with popular continuous integration and continuous deployment (CI/CD) tools, making it easy to automate the build and deployment process.


## WHAT IS A DOCKER CONTAINER
A Docker container is a lightweight, standalone, and executable package that includes everything needed to run a piece of software, including the code, runtime, libraries, environment variables, and configuration files. It is created from a Docker image and runs in an isolated environment on the host operating system.

The basic difference between a Docker image and a Docker container is that an image is a static snapshot of an application and its dependencies, while a container is a running instance of that image. When a Docker image is executed, it creates a Docker container that runs the application in an isolated environment. So in simple terms, a Docker container is running instance of a Docker image.


## CREATING A DOKCER IMAGE AND RUNNING A CONTAINER
After creating a Dockerfile, we can create a Docker image and run a container using the following steps:

1. Open a terminal and navigate to the directory where the Dockerfile is located. Then run the following command to build the Docker image:

   ```docker build -t image_name:tag .```

   Here, `image_name` is the name you want to give to your Docker image, `tag` is an optional version tag (e.g., `latest`), and the `.` indicates that the Dockerfile is in the current directory.

2. Once the image is built successfully, you can run a container from the image using the following command:

   ```docker run -d -p host_port:container_port --name container_name image_name:tag``` 

    Here, `-d` runs the container in detached mode (in the background), `-p` maps a port on the host machine to a port in the container, `container_name` is the name you want to give to your container, and `image_name:tag` specifies the image to use for the container.

    We need to do port mapping so that we can access the application running inside the container from the host machine. The `host_port` is the port on the host machine that you want to use to access the application, and the `container_port` is the port inside the container where the application is running.

3. To check if the container is running, you can use the following command:
    ```docker ps```

4. To stop the container, you can use the following command:
   ```docker stop container_name```

5. To remove the container, you can use the following command:
   ```docker rm container_name```


## TAGGING A DOCKER IMAGE
Tagging a Docker image is the process of assigning a human-readable name and version to a Docker image. This helps in identifying and managing different versions of the same image. To tag a Docker image, you can use the following command:
   
   ```docker tag image_id image_name:tag```

   OR

   ``` docker tag image_name dockerhub_username/image_name:tag ```

    Here, `image_id` is the unique identifier of the Docker image, `image_name` is the name you want to give to the image, and `tag` is an optional version tag (e.g., `latest`). If you do not specify a tag, Docker will use `latest` by default.


## PUSHING A DOCKER IMAGE TO DOCKER HUB
To push a Docker image to Docker Hub, you can follow these steps:

1. First, make sure you have a Docker Hub account. If you don't have one, you can create it at https://hub.docker.com/.

2. After logging in, you can push your Docker image to Docker Hub using the following command:
   ```docker push dockerhub_username/image_name:tag```


## PULLING A DOCKER IMAGE FROM DOCKER HUB
To pull a Docker image from Docker Hub, you can use the following command:
    ```docker pull dockerhub_username/image_name:tag```

Here, `dockerhub_username` is your Docker Hub username, `image_name` is the name of the image you want to pull, and `tag` is the version tag of the image. If you do not specify a tag, Docker will pull the `latest` version by default.