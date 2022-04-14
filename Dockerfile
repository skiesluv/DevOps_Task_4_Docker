FROM ubuntu

RUN apt-get update
RUN apt-get install -y nginx 
RUN rm /etc/nginx/sites-enabled/default 
RUN rm -v /etc/nginx/nginx.conf

COPY nginx.conf /etc/nginx

COPY index.html /var/www/html/

EXPOSE 80

CMD ["/usr/sbin/nginx"]
