#!/bin/bash

rm db.sqlite3
rm -rf ./winecalculatorapi/migrations
python3 manage.py migrate
python3 manage.py makemigrations winecalculatorapi
python3 manage.py migrate winecalculatorapi
python3 manage.py loaddata users
python3 manage.py loaddata tokens

