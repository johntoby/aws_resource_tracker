# aws_resource_tracker
This repository was created to store my Bash script to monitor 4 important AWS resources. It is a very important concept as a DevOps / Cloud engineer to have an automated way of monitoring the AWS cloud environment, in order to avoid 'stories that touch'. 

The resource monitoring logic will be accomplished using a Bash Script, and the script then sends the output to my email address 7am every morning. The resources to monitor are 
 - EC2 instances
 - S3 buckets
 - lambda functions
 - IAM roles. 
 
 The script is named aws_resource_tracker.sh
 To start, use: 
$ vim aws_resource_tracker.sh 
