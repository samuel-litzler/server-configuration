#!/bin/bash
#####################################################
#   Created by WiseM - samuel@devfamily.fr          #
#                                                   #
#   Setup bash -> find bash location : `which bash` #
#   This script is working with Debian              #
#####################################################

###### Declare script variables
# Edit as you want values
declare domain_name="api.jobbiz.fr"
declare http_folder_name=$domain_name # edit if not the same as the domain_name
#### Script options
## Optional install
declare install_node=false # if true then install and setup node/pm
declare install_pm2=true # if true then install and setup pm2
declare install_firewall=true # if true then install and setup ufw
declare install_ssl=true # if true then install and setup free ssl with certbot
declare install_nginx=true # if true then install and setup free ssl with certbot

## SSH config
declare ssh_port=5735 #! Change ssh port 22, warning -> ufw will block port 22 connection

## Git config

######

# DO NOT EDIT THE FOLLOWING SCRIPT -> use 0.1_customLaunch.sh to personalyse
# Export script variables used in other files
export domain_name
export http_folder_name
export install_node
export install_firewall
export install_ssl
export install_nginx

bash ./1_setup-server.sh
bash ./2_install-software.sh

if [ "$install_nginx" = true ] ; then
  bash ./3_setup-nginx.sh
fi

if [ "$install_pm2" = true ] ; then
  bash ./5_setup-pm2.sh
fi

if [ "$install_ssl" = true ] ; then
  bash ./5_setup-ssl.sh
fi

if [ "$install_firewall" = true ] ; then
  bash ./6_setup-firewall.sh
fi