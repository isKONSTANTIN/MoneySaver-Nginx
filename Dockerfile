FROM nginx

MAINTAINER isKONSTANTIN <me@knst.su>

ENV TZ=Europe/Moscow

COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
