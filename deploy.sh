#!/bin/bash

# Остановка старого Django-сервера
pkill -f "manage.py runserver" 2>/dev/null || true

# Выполнение миграций
python manage.py migrate

# Небольшая пауза
sleep 2

# Запуск Django-сервера
python manage.py runserver 0.0.0.0:3000