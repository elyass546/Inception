FROM debian:buster

RUN apt-get update && \
    apt-get install -y nodejs npm
 

COPY ./tools /home/app

WORKDIR /home/app

RUN npm init -y && npm install express -y

CMD ["node", "app.js"]