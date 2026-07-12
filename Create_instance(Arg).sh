#!/bin/bash 

#------------------------------#
# Script will launch an EC2 
# instance on AWS and store 
# the instance id in variable 
# and print the basic info of
# newly created instance. 
#
# Author: Shahzaib Khan
# Date: 12-JULY-2026
# 
# Version: 1.0
#------------------------------#

set -x

# Validating argument while creation of EC2 instance...

# Command that will launch an EC2 instance on AWS.($1 is the argument[Number of Instances] pass by user)

INSTANCE_ID=$(aws ec2 run-instances --image-id ami-0b6d9d3d33ba97d99 --instance-type t3.micro --count 1\
                --security-group-ids sg-07fd4b2b0ffc8e550 --key-name TEST111\
	        --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$1}]"\

		--query "Instances[0].InstanceId"\
		--output text)

echo
echo
echo "Printing detail for: $INSTANCE_ID"
echo
echo

#Know printing the basic info of that newly create instance...

 aws ec2 describe-instances --instance-ids "$INSTANCE_ID" \
 --query "Reservations[0].Instances[0].{InstanceId: InstanceId , PublicIP: PublicIpAddress, PrivateIP: PrivateIpAddress, State: state.name, Name: Tags[?Key=='Name'].Value | [0]}"\
	     --output table







