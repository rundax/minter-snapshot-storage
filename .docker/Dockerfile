FROM nginx:latest

RUN apt update && apt install -y aria2

COPY httpd.conf /etc/nginx/conf.d/default.conf

WORKDIR /mnt

EXPOSE 80
STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]