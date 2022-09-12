#!/bin/bash
cd /var/www/application/
cp .env.node.prod .env
#cp .env.test .env
composer install
#while ! nc -z database 3306; do sleep 3; done
#php bin/console doctrine:database:create
symfony server:start --port=80
symfony server:stop
symfony server:start --port=80