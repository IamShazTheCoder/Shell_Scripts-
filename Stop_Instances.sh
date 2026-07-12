#!/bin/bash 

##############################
# AUTHOR: SHAHZAIB KHAN 
# DATE: 29-JUNE-2026
#
# SCRIPT WHICH TAKE INSTANCE ID AS A  PARAMETER 
# AND THEN STOP THAT INSTANCE
#
# VERSION: 1.0(V1)
##############################

set -x 

aws ec2 stop-instances --instance-ids $1 


