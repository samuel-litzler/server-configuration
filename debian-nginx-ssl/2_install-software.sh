#!/bin/bash
#####################################################
#   Created by WiseM - samuel@devfamily.fr          #
#                                                   #
#   Setup bash -> find bash location : `which bash` #
#   This script is working with Debian              #
#####################################################

# Install web server
apt install nginx -y

# Install nano editor
apt install nano -y

# Install certbot for SSL
if [ "$install_ssl" = true ] ; then
  apt install certbot python3-certbot-nginx -y
fi

# Install node js and npm
if [ "$install_node" = true ] ; then
  curl -sL https://deb.nodesource.com/setup_16.x | sudo bash -
  apt install nodejs -y
  apt install npm -y
fi

if [ "$install_firewall" = true ] ; then
  apt install ufw -y
fi

if [ "$install_pm2" = true ] ; then
  npm install pm2 -g
fi
