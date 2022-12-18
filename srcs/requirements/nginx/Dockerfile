FROM debian:buster

RUN apt-get update && apt-get upgrade && apt-get install -y nginx openssl

COPY conf/nginx.conf .

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
