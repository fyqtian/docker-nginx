FROM ubuntu:14.04
MAINTAINER VAN 
ENV DATE 2017-05-11 04


RUN mv /etc/apt/sources.list /etc/apt/sources.list.back
 
ADD sources.list /etc/apt/sources.list
RUN apt-get update

RUN apt-get -y -q install nginx

RUN apt-get -y -q install vim


RUN mkdir -p /var/www/html

ADD nginx/nginx.conf /etc/nginx/nginx.conf
ADD nginx/global.conf /etc/nginx/conf.d/



EXPOSE 80

CMD ["nginx"]
