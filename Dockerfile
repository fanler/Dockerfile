#Version:0.0.1
#Author:fanler
#A new custom docker images for nginx
FROM ubuntu:20.04
MAINTAINER fanler "fanler@example.com"
#RUN rm /bin/sh 
#RUN ln -s /bin/bash /bin/sh
RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak
RUN echo >>/etc/apt/sources.list "deb http://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse"
RUN echo >>/etc/apt/sources.list "deb http://mirrors.aliyun.com/ubuntu/ focal-security main restricted universe multiverse"
RUN echo >>/etc/apt/sources.list "deb http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse"
RUN echo >>/etc/apt/sources.list "deb http://mirrors.aliyun.com/ubuntu/ focal-proposed main restricted universe multiverse"
RUN echo >>/etc/apt/sources.list "deb http://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse"
RUN apt-get update
RUN apt-get install -y nginx
RUN echo 'Hi,I am in your container' >/usr/share/nginx/html/index.html
EXPOSE 80/tcp  443/tcp
