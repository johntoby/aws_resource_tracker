# aws_resource_tracker
This repository was created to store my Bash script to monitor 4 important AWS resources. It is a very important concept as a DevOps / Cloud engineer to have an automated way of monitoring the AWS cloud environment, in order to avoid 'stories that touch'. 

The resource monitoring logic will be accomplished using a Bash Script, and the script then sends the output to my email address 7am every morning. The resources to monitor are 
 - EC2 instances
 - S3 buckets
 - lambda functions
 - IAM roles. 
 
 The script is named aws_resource_tracker.sh
 To start, use: 
 ```bash
$ vim aws_resource_tracker.sh
```


To add the cronjob, follow the following steps: 
```bash
#configure the email settings of your vm
$apt-get update
$apt-get install mailutils
```


edit the cron file using this command:
```bash
$ crontab -e
0 7 * * * /root/aws_resource_tracker.sh | mail -s "Daily AWS Resource tracker' >
```

#this will ensure the script aws_resource_tracker run 7am everrday and sends the output to my email.
