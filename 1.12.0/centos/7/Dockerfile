FROM centos:7

MAINTAINER Ding Wen Xiang "624380857@qq.com"

# set arg: nginx version, default stable version: 1.12.0, added 2017-06-12
ARG NGINX_VERSION=1.12.0

# yum install nginx
ADD http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm /tmp/nginx-release-centos-7-0.el7.ngx.noarch.rpm

RUN yum -y update \
    && yum -y install /tmp/nginx-release-centos-7-0.el7.ngx.noarch.rpm \
    && yum -y install nginx-$NGINX_VERSION \
    && yum clean all \
    && echo "daemon off;" >> /etc/nginx/nginx.conf
    
# remove rpm file
RUN rm /tmp/nginx-release-centos-7-0.el7.ngx.noarch.rpm

#RUN /usr/bin/echo "NGINX ${NGINX_VERSION} on CentOS 7" > /usr/share/nginx/html/index.html

EXPOSE 80 443

#CMD ["nginx","-g","daemon off;"]
CMD ["nginx"]