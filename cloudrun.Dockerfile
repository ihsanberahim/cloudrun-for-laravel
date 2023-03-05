FROM php:8.1-fpm-alpine

ARG NODE_VERSION=18

RUN apk add --no-cache nginx wget bash nodejs npm

RUN mkdir -p /run/nginx

COPY cloudrun/nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /app
COPY . /app

RUN sh -c "wget http://getcomposer.org/composer.phar && chmod a+x composer.phar && mv composer.phar /usr/local/bin/composer"
RUN cd /app \
    && /usr/local/bin/composer install --no-dev \
    && npm i \
    && npm run build


RUN chown -R www-data: /app

CMD sh /app/cloudrun/startup.sh