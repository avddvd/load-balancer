FROM nginx

VOLUME /var/www/html
WORKDIR /var/www/html

COPY src/ /var/www/html/
COPY conf/lb.conf /etc/nginx/conf.d/default.conf
COPY bin/start.sh /start.sh

CMD ["bash", "/start.sh"]
