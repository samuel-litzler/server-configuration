#!/bin/bash
#####################################################
#   Created by WiseM - samuel@devfamily.fr          #
#                                                   #
#   Setup bash -> find bash location : `which bash` #
#   This script is working with Debian              #
#####################################################

# Declare script variables
# Edit as you want values
declare domain_name="api.jobbiz.fr"
declare http_folder_name=$domain_name # edit if not the same as the domain_name
# Script options
declare install_node=false # if true then install and setup node/pm
declare install_pm2=false # if true then install and setup pm2
declare install_firewall=false # if true then install and setup ufw
declare install_ssl=true # if true then install and setup free ssl with certbot
declare ssh_port=5735 #! Change ssh port 22, warning -> ufw will block port 22 connection

# Export script variables used in other files
export domain_name
export http_folder_name
# export install_node
# export install_firewall
export install_ssl

bash ./1_setup-server.sh
bash ./2_install-software.sh
# bash ./3_setup-nginx.sh

# if [ "$install_pm2" = true ] ; then
#   bash ./5_setup-pm2.sh
# fi

if [ "$install_ssl" = true ] ; then
  bash ./5_setup-ssl.sh
fi

# if [ "$install_firewall" = true ] ; then
#   bash ./6_setup-firewall.sh
# fi