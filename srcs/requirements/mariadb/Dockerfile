FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y && apt-get install mariadb-client -y

# RUN systemctl start mariadb && systemctl enable mariadb

RUN mysql_secure_installation
