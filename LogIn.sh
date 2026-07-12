#!/bin/bash 

####################################
#
# AUTHOR := SHAHZAIB KHAN 
# DATE := 2nd-July-2026 
#
# SCRIPT THAT WILL TAKE PUBLIC IP AS 
# AN ARGUMENT AND LOGIN TO THAT VM's
#  
####################################

set -x 

ssh -i /home/kali/TEST111.pem ubuntu@$1


