#!/bin/sh
sudo /etc/init.d/mysql start
mysql -uroot -e "CREATE USER 'admin'@'localhost'"
mysql -uroot -e "SET PASSWORD FOR 'admin'@'localhost' = PASSWORD('pass111')"
mysql -uroot -e "CREATE DATABASE mybase"
mysql -uroot -e "GRANT ALL ON mybase.* TO 'admin'@'localhost'"
python ~/web/ask/manage.py makemigrations
python ~/web/ask/manage.py migrate
