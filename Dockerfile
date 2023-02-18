# alphine linux is lightweight and secure
# alpine + nginx = 5mb => reducing the attack surface(number of vulnerabilities)
FROM nginx:1.23.3-alpine

# copy the local html to the default nginx serving directory
COPY ./html/*.html /usr/share/nginx/html/
