#!/bin/bash

composer install --no-progress --no-interaction --ignore-platform-reqs

echo "Creating env file for env $APP_ENV"
cp .env.example .env

php artisan migrate:fresh
#php artisan db:seed --class=UserSeeder

php artisan key:generate
##For Jwt-Auth-Service:
#php artisan jwt:secret

php artisan cache:clear
php artisan config:clear
php artisan route:clear
php artisan optimize

php artisan serve --port=$PORT --host=0.0.0.0 --env=.env
exec docker-php-entrypoint "$@"

