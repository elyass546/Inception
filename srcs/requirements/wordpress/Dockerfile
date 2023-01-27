FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y && apt-get install php-fpm php-mysql -y

RUN apt-get install curl -y

COPY ./tools/script.sh /

COPY ./tools/wp-config.php /

CMD [ "/script.sh" ]