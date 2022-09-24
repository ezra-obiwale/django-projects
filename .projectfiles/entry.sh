#!/usr/bin/env bash

pip install -r requirements.txt
dj migrate
dj runserver 0:8000