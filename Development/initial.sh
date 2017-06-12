#!/bin/bash

aws ec2 create-security-group --group-name team2DEV --description "Academy:Team2:AWSCLI" --vpc-id vpc-dbd86eb2


SGName=$(aws ec2 describe-security-groups --filters Name=vpc-id,Values=vpc-dbd86eb2 Name=group-name,Values=team2DEV --query 'SecurityGroups[0].GroupId' --output text)

echo $SGName

aws ec2 authorize-security-group-ingress --group-id $SGName --protocol tcp --port 22 --cidr 0.0.0.0/0


aws ec2 run-instances --tag-specifications 'ResourceType=instance,Tags=[{Key=webserver,Value=production}]' --image-id ami-f1d7c395 --security-group-id $SGName --count 1 --instance-type t2.micro --key-name AcademyKeyPair --query 'Instances[0].InstanceId' --subnet-id subnet-7d578c06 --user-data file://AWSscript.txt
