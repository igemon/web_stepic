sudo unlink /etc/nginx/sites-enabled/default
sudo unlink /etc/nginx/sites-available/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo ln -sf /home/box/web/etc/ngnix.conf /etc/nginx/sites-available/test.conf
sudo /etc/init.d/nginx restart
#sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
#sudo ln -s /home/box/web/etc/hello.py   /etc/gunicorn.d/hello.py
sudo /etc/init.d/gunicorn restart
#sudo /etc/init.d/mysql start
sudo gunicorn -b 0.0.0.0:8080 hello:app