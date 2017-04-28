#!/bin/bash -ex

gunicorn docker_test.wsgi:application -c config/gunicorn.conf.py
python manage.py collectstatic --noinput
python manage.py migrate