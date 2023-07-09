From ubuntu:latest

RUN apt-get update
RUN apt-get install -y nginx git

RUN echo "daemon off;" >> /etc/nginx/nginx.conf


RUN cd /var/www/html/ && git clone https://github.com/gabrielecirulli/2048.git && mv 2048/* . 

EXPOSE 80

CMD ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]
