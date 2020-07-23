#!/bin/sh
# Installing Nginx
    clear
    echo '--------------------------------------------------------------------------------'
    echo ' INSTALLING  Nginx'
    echo '--------------------------------------------------------------------------------'
    echo
    #pkg install -y nginx
    mv /usr/local/etc/nginx/nginx.conf /usr/local/etc/nginx/nginx.conf.bak
    mv /root/openspeedtest.conf /usr/local/etc/nginx/nginx.conf
    echo 'nginx_enable="YES"' >> /etc/rc.conf
    # Start services
    service nginx start