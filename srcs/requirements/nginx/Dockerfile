FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y nginx openssl -y

COPY conf/nginx.conf  /etc/nginx/sites-available/default

RUN	mkdir -p /etc/nginx/ssl

COPY ./tools/myhost.key /etc/nginx/ssl

COPY ./tools/myhost.crt /etc/nginx/ssl

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
