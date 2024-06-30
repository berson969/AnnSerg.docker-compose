#!/bin/sh

# Собираем статические файлы (если нужно)
python manage.py collectstatic --noinput

# Применяем миграции
python manage.py migrate

# Запускаем Gunicorn
gunicorn stocks_products.wsgi:application --bind 0.0.0.0:8000