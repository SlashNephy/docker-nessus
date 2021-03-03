# docker-nessus
🐋 Docker image: Nessus on Ubuntu

[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/slashnephy/nessus/latest)](https://hub.docker.com/r/slashnephy/nessus)

`docker-compose.yml`

```yml
version: '3.8'

services:
  nessus:
    container_name: Nessus
    image: slashnephy/nessus:latest
    restart: always
    network_mode: host
    expose:
      - 8834
```
