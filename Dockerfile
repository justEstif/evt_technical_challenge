# Base image we will be user; get the latest nginx image from dockerhub
FROM nginx:latest
# copy the local/custom index.html to the default nginx serving directory
COPY ./html/index.html /usr/share/nginx/html/index.html
