FROM ubuntu:16.04
MAINTAINER Kiel Rodriguez "kr.rdz@example.com"

WORKDIR /usr/share/nginx/html/

ENV RAIL_ENV produccion
ENV WORK_DIR ejemplo

RUN pwd
RUN apt-get update; apt-get install -y nginx

COPY ./mi-dockerfile.html /usr/share/nginx/html/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
