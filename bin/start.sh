#!/bin/bash -x

# Get the nameserver "kube-dns" ip address
nameserver=$(cat /etc/resolv.conf | grep nameserver | awk {'print $2'})
echo $nameserver

# Replace resolver in nginx conf with kube-dns ip address
sed -i -e "s/10\.0\.0\.10/$nameserver/g" /etc/nginx/conf.d/default.conf
rm -f /etc/nginx/conf.d/default.conf-e

echo "Starting nginx server"
nginx -g "daemon off;"
