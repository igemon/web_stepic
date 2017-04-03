sudo rm -rf /etc/nginx/sites-enabled/default
sudo rm -rf /etc/nginx/sites-available/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo ln -sf /home/box/web/etc/ngnix.conf /etc/nginx/sites-available/test.conf
sudo /etc/init.d/nginx restart
sudo ln -s /home/box/web/ask/gunicorn.py   /etc/gunicorn.d/gunicorn.py
sudo /etc/init.d/gunicorn restart
sudo /etc/init.d/mysql start