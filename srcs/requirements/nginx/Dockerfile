FROM debian:buster

RUN apt update && apt install nginx openssl -y

RUN  mkdir /etc/nginx/ssl && openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/ssl/mtourham.crt -keyout /etc/nginx/ssl/mtourham.key -subj "/C=MA/ST=bengrir/L=bengrir/O=1337/OU=mtourham/CN=mtourham/"

COPY conf/nginx.conf /etc/nginx/conf.d/

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]