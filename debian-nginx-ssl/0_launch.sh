#!/bin/bash
#####################################################
#   Created by WiseM - samuel@devfamily.fr          #
#                                                   #
#   Setup bash -> find bash location : `which bash` #
#   This script is working with Debian              #
#####################################################

# Declare script variables
declare domain_name="api.jobbiz.fr"
declare http_folder_name=$domain_name
declare install_node=false

# Export script variables used in other files
export domain_name
export http_folder_name
export install_node

bash ./1_setup-server.sh
bash ./2_install-software.sh
bash ./3_setup-nginx.sh
bash ./4_setup-ssl.sh