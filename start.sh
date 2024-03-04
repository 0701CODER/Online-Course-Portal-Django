#!/bin/sh
set -ex
python3 manage.py makemigrations onlinecourse
python manage.py sqlmigrate onlinecourse 0001
python manage.py migrate
python manage.py collectstatic --noinput
python manage.py runserver 0.0.0.0:8000