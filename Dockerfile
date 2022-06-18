FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install -y apache2 apache2-utils
COPY . /var/www/html
EXPOSE 80
WORKDIR /var/www/html

CMD /usr/sbin/apache2ctl -D FOREGROUND