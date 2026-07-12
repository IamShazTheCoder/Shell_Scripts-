#!/bin/bash

##################################
# AUTHOR: SHAHZAIB KHAN 
# DATE: 29-JUNE-2026
#
# SCRIPT THAT TAKE INSTANCE_ID AS AN
# INPUT AND THEN TERMINATE THAT INSTANCE
#
# VERSION: 1.0(V1)
##################################

set -x 

#Command that terminate the instance by ID 
aws ec2 terminate-instances --instance-ids $1 



