#!/usr/bin/env bash

pip install -r requirements.txt
python manage.py migrate
python manage.py runserver 0:8000