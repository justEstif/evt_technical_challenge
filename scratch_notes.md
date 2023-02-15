`docker run -it --rm -d -p 8000:80 --name website nginx`

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
