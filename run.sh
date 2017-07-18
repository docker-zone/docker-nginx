#!/bin/sh

## run nginx server
$NGINX_DIRECTORY/sbin/nginx

## keep lived
while [ 1 ];
do 
    sleep 3600;
done