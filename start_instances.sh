#!/bin/bash

##################################
#
# AUTHOR: SHAHZAIB KHAN 
# DATE: 29-JUNE-2026
#  
# SCRIPT THAT START THE INSTANCE WHICH IS STOPED PREVIOUSLY
# 
# Version: 1.0(V1) 
#
##################################

set -x 

aws ec2 start-instances --instance-ids $1 


