# CentOS w/ Oracle JRE
FROM centos:6.8
MAINTAINER Kevin Stock <kevinstock@tantalic.com>

ENV JRE_VERSION 8u65
ENV BUILD_VERSION b17

RUN yum -y upgrade && \
    yum -y install wget && \
    wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie;" http://download.oracle.com/otn-pub/java/jdk/$JRE_VERSION-$BUILD_VERSION/jre-$JRE_VERSION-linux-x64.rpm -O /tmp/jre-$JRE_VERSION-linux-x64.rpm && \
    yum -y install /tmp/jre-$JRE_VERSION-linux-x64.rpm && \
    rm /tmp/jre-$JRE_VERSION-linux-x64.rpm && \
	yum clean all
