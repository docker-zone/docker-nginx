# Supported tags and respective `Dockerfile` links

 - [`1.12.0.c7_sshd` (1.12.0.c7_sshd/Dockerfile)](https://github.com/docker-zone/docker-nginx/blob/1.12.0.c7_sshd/1.12.0/centos/7_sshd/Dockerfile)

Subscribe to project updates by watching the [docker-nginx GitHub repo](https://github.com/docker-zone/docker-nginx/).
 
# Get this image

The recommended way to get the Dingwenxiang0 Nginx Docker Image is to pull the prebuilt image from the [Docker Hub Registry](https://hub.docker.com/r/dingwenxiang0/nginx/).

```bash
docker pull dingwenxiang0/nginx
```

To use a specific version, you can pull a versioned tag. You can view the [list of available versions](https://hub.docker.com/r/dingwenxiang0/nginx/tags/) in the Docker Hub Registry.

```bash
docker pull dingwenxiang0/nginx:[TAG]
```

# Running Container on nginx

`docker run -d --name nginx -p 8080:80 dingwenxiang0/nginx:[TAG]`

# Running Container on nginx with sshd

`docker run -d --name nginx -p 8080:80 -p 10022:22 dingwenxiang0/nginx:[TAG]`

For SSHD, you can view the [docker-os-sshd GitHub repo](https://github.com/docker-zone/docker-os-sshd/).

# Open a shell on it

`docker exec -it nginx bash`

# Kill and remove the container

`docker rm -f nginx`

# Remarks

file path: /app/tools/nginx