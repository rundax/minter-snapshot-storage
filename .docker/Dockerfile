FROM nginx:latest

RUN apt update && apt install -y aria2

COPY .docker/httpd.conf /etc/nginx/conf.d/default.conf
COPY .docker/downlaod_dump.sh /downlaod_dump.sh

WORKDIR /mnt

EXPOSE 80
STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]