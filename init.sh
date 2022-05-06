
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/nginx.conf
sudo /etc/init.d/nginx restart

sudo ln -sf /home/box/web/hello.py /etc/gunicorn.d/hello.py
sudo /etc/init.d/gunicorn restart

sudo rm /etc/nginx/sites-enabled/default
sudo cp /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/ && sudo mv nginx.conf default

gunicorn  --bind="0.0.0.0:8080" -c ~/web/hello.py  hello:app