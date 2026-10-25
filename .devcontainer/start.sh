#!/bin/bash
cd /workspaces/uts-inventory-sales-laravel
if [ ! -f .env ]; then
  cp .env.example .env
  php artisan key:generate
fi
touch database/database.sqlite
php artisan migrate --seed --force
php artisan serve --host=0.0.0.0 --port=8000
