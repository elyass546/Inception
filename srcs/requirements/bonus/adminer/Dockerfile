FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y \
	&& apt-get install wget php php-mysql ca-certificates -y

RUN wget https://www.adminer.org/latest-en.php -O /var/www/html/index.php \
	&& chown www-data:www-data /var/www/html \
	&& chmod 755 /var/www/html/index.php

WORKDIR /var/www/html

RUN rm -rf index.html

CMD ["php", "-S", "0.0.0.0:8181"]