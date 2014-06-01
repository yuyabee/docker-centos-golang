FROM centos:6.4
MAINTAINER Yuya Yabe <yuyabee@gmail.com>

RUN yum install -y wget git
RUN yum install -y http://ftp.riken.jp/Linux/fedora/epel/6/i386/epel-release-6-8.noarch.rpm
RUN cd /etc/yum.repos.d; wget http://www.hop5.in/yum/el6/hop5.repo

RUN yum install -y golang

RUN mkdir /go
ENV GOPATH  /go
