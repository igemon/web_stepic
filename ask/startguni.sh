#!/bin/sh
gunicorn -b 0.0.0.0:8000 -c ~/web/etc/qa.py ask.wsgi:application &
