#!/usr/bin/env bash

CONTAINER="api"
ENV="dev"

cd /var/www/html/${CONTAINER} && git pull \
    && cp -a /var/www/html/${CONTAINER}/build/${ENV}/.env.${ENV} /var/www/html/${CONTAINER}/.env

if [ -d /var/www/html/${CONTAINER}/var/cache/${ENV}/ ];
  then
    rm -r /var/www/html/${CONTAINER}/var/cache/${ENV}/
fi

#if grep -Fxq "opcache.preload=/var/www/html/${CONTAINER}/var/cache/${ENV}/App_KernelDevDebugContainer.preload.php" /usr/local/etc/php/conf.d/cache.ini
#    then
#      echo "opcache.preload configured"
#    else
#      echo "opcache.preload=/var/www/html/${CONTAINER}/var/cache/${ENV}/App_KernelDevDebugContainer.preload.php" >> /usr/local/etc/php/conf.d/cache.ini
#fi

composer install --no-interaction \

