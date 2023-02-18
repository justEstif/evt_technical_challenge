FROM nginx:1.23.3-alpine
COPY ./html/*.html /usr/share/nginx/html/
