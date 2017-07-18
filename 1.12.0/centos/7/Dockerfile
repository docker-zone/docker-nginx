FROM centos:7

MAINTAINER Ding Wen Xiang "624380857@qq.com"

ENV NGINX_VERSION=1.12.0
ENV NGINX_BASE_DIRECTORY=/app/tools/nginx
ENV NGINX_NAME=nginx-$NGINX_VERSION
ENV NGINX_DIRECTORY=$NGINX_BASE_DIRECTORY/$NGINX_NAME

WORKDIR /tmp

ADD https://nginx.org/download/$NGINX_NAME.tar.gz $NGINX_NAME.tar.gz
ADD https://raw.githubusercontent.com/docker-zone/docker-nginx/master/process.sh process.sh
ADD https://raw.githubusercontent.com/docker-zone/docker-nginx/master/run.sh /run.sh

RUN yum -y update \
    && yum -y install gcc-c++ pcre pcre-devel zlib zlib-devel openssl openssl-devel \
    && chmod +x process.sh \
    && ./process.sh \
    && chmod +x /run.sh \
    && rm -rf /tmp/* \
    && yum clean all

WORKDIR /

EXPOSE 80 443

CMD ["/run.sh"]
