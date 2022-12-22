#!/bin/bash
#####################################################
#   Created by WiseM - samuel@devfamily.fr          #
#                                                   #
#   Setup bash -> find bash location : `which bash` #
#   This script is working with Debian              #
#####################################################

# Setup https
certbot --nginx -d jobbiz.devfamily.fr -d www.jobbiz.devfamily.fr
#TODO -> automatiser les étapes de confirmation ?