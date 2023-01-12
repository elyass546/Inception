FROM debian:buster

RUN apt-get update && apt-get upgrade -y && apt-get install -y nginx openssl

COPY conf/nginx.conf  /etc/nginx/conf.d

RUN	mkdir -p /etc/nginx/ssl

COPY ./myhost.key /etc/nginx/ssl

COPY ./myhost.crt /etc/nginx/ssl

# RUN openssl genrsa -des3 4096

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
