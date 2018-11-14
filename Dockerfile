FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf
COPY docker/nginx/conf /etc/nginx

RUN mkdir -p /var/www/html/web1
RUN chmod -R 755 /var/www/html/web1
COPY web1 /var/www/html/web1

RUN mkdir -p /var/www/html/web2
RUN chmod -R 755 /var/www/html/web2
COPY web2 /var/www/html/web2

RUN mkdir -p /etc/nginx/certs
COPY certs /etc/nginx/certs 