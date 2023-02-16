# alphine linux is super lightweight
# alpine + nginx = 5mb => reducing the attack surface(number of vulnerabilities)
FROM nginx:1.23.3-alpine

# copy in a custom nginx config
COPY ./nginx/nginx.conf /etc/nginx/nginx/nginx.conf

# copy the local html to the default nginx serving directory
COPY ./html/*.html /usr/share/nginx/html/
