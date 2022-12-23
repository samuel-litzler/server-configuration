#!/bin/bash
#####################################################
#   Created by WiseM - samuel@devfamily.fr          #
#                                                   #
#   Setup bash -> find bash location : `which bash` #
#   This script is working with Debian              #
#####################################################

# Setup https
certbot --nginx -d $domain_name -d "www.$domain_name"
#TODO -> automatiser les étapes de confirmation ?