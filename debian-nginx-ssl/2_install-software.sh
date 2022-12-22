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
apt install certbot python3-certbot-nginx -y

if [ "$install_node" = true ] ; then
  apt install node -y
  apt install npm -y
fi