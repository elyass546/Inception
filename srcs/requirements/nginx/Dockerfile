FROM debian:buster

RUN apt-get update && apt-get upgrade && apt-get install -y nginx

EXPOSE 20

CMD ["nginx", "-g", "daemon off"]
