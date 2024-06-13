#!/bin/bash

###########################################
#Author: John Toby
#Date: 13th June, 2024
#Version: v1
#About: A simple script to report AWS resource usage

######################################################

set -x

#AWS Rescources to track
#AWS s3
#AWS ec2
#AWS Lambda
#AWS IAM Users

#get a list of all s3 buckets on my network
echo "Print a list of all s3 buckets on my network"
aws s3 ls  

#list all ec2 instances, showing only the instance ID
echo "Print a list of all ec2 instances on my network"
# I need only the InstanceId of every ec2 instance on my account. Thus, I will pipe jq to the output of my command to select my desired item from the json array  
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#List all AWS lambda functions
echo "Print a list of all Lambda functions on my network"

aws lambda list-functions


#List all IAM users
echo "Print a list of all IAM users on my network"
# I will also pipe jq to the outcome of my command here to select only the IAM username from the array. 
aws iam list-users | jq '.Users[].UserName'  


echo "End of script"
##################################################

  
