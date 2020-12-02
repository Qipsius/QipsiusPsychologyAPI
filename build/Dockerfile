ARG DOCKER_ENV

FROM qipsius/php-fpm-8.0:latest

ARG DOCKER_ENV
ARG CONTAINER

WORKDIR /var/www/html/${CONTAINER}/

# Add Update.sh
COPY build/${DOCKER_ENV}/update.sh /usr/local/bin/

RUN chmod 777 /usr/local/bin/update.sh; \
    ln -s /usr/local/bin/update.sh /

WORKDIR /var/www/html/${CONTAINER}
