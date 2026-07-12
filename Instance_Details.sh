#!/bin/bash

##############################
# Author: Shahzaib Khan
# 
# The Script will all neccessary 
# info of all EC2 instances 
# in tabular format.
#
# Date: 11-JULY-2026
#
# Version: 1.0
##############################

set -x

#Command that print instance info in table 
aws ec2 describe-instances \
--query 'Reservations[].Instances[].{Name:Tags[?Key==`Name`]|[0].Value,InstanceId:InstanceId,PublicIP:PublicIpAddress,PrivateIP:PrivateIpAddress,State:State.Name}' \
--output table
