#!/bin/bash 

####################################
#
# AUTHOR: SHAHZAIB KHAN 
#
# DATE: 27-JUNE-2026
#
# SCRIPT FOR RESOURCE MANAgMENT 
# RESOURSES...........
# 
#####################################

# Debuging Mode 
#set -x 

#set -o 

#set -e 

echo "TOTAL EC2 INSTANCES"

aws ec2 describe-instances --query "Reservations[].Instances[].InstanceId"



