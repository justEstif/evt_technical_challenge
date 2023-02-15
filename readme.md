# Notes

## Tech Stack

- [docker](#docker)
- [docker compose](#docker-compose)
- [nginx](#nginx)

## TODO

- [ ] learn more about [docker](https://docker-curriculum.com/)
- [ ] learn more about [docker compose](https://docs.docker.com/compose/)
- [ ] learn more about [nginx](https://www.nginx.com/resources/glossary/nginx/)

## Ideas

- bash script instead of docker compose?
- apache instead of nginx
- vagrant?

## docker

- lets you run micro-service applications in a distributed architecture.
- a container is a lightweight, stand-alone, executable package of a piece of software that includes everything needed to run it.
- since containers are platform-independent, Docker can run across both windows and linux based platforms.

### why docker?

1. os support and architecture
2. portability
3. performance

## docker compose

With Compose, we can create a YAML file to define the services and with a single command, can spin everything up or tear it all down.

## nginx

### Why nginx?

- it is stable, scalable, and can handle concurrency better than apache.  


## Setup

1. `docker pull nginx`: get the official nginx container from dockerhub

2. `docker run -it --rm -d -p 8000:80 --name website nginx`

- `-it`: allocate an interactive pseudo-tty connection
  - `-i`: keep STDIN open
  - `-t`: Allocate a pseudo-TTY.
- `-rm`: automatically remove the container when it exits.
- `-d`: daemon/run continuously in the background
- `-p`: publish to port, by default web applications run on port 80
- `--name`: assign name to the container

- `docker top docker`: list of services running
- attach shell to docker:
  - `docker exec -it <container name> /bin/bash`
  - `nginx -v`: version
  - `service nginx start`
  - `service nginx stop`
- get root location:
  - `nginx -T`
    ```yml
    location / {
    	root   /usr/share/nginx/html;
    	index  index.html index.htm;
    }
    ```
  - nginx serves a default page: a index either html or htm at root dir
    - nginx default folder: /usr/share/nginx/html/
      - default folder that nginx uses to serve static content
