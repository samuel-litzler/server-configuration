#!/bin/bash
#####################################################
#   Created by WiseM - samuel@devfamily.fr          #
#                                                   #
#   Setup bash -> find bash location : `which bash` #
#   This script is working with Debian              #
#####################################################

# Start nginx
systemctl start nginx
# Nginx will restart when server reboot / start
systemctl enable nginx
# Create web site folder
mkdir "/var/www/html/$http_folder_name"

