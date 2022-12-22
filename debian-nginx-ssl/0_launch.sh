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
declare install_node=false # if true then install and setup node/pm
declare install_firewall=false # if true then install and setup ufw
declare install_ssl=false # if true then install and setup

# Export script variables used in other files
export domain_name
export http_folder_name
export install_node
export install_firewall
export install_ssl

bash ./1_setup-server.sh
bash ./2_install-software.sh
bash ./3_setup-nginx.sh
bash ./4_setup-ssl.sh