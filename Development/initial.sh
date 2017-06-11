aws ec2 create-security-group --group-name team2 --description "Academy:Team2:AWSCLI" --vpc-id [ID-HERE]

aws ec2 authorize-security-group-ingress --group-name team2 --protocol tcp --port 22 --cidr 0.0.0.0/0

aws ec2 run-instances --image-id ami-f1d7c395 --security-groups team2 --count 1 --instance-type t2.micro --key-name [KEYNAME-HERE] --query 'Instances[0].InstanceId' --subnet-id [SUBNET-ID-HERE] --user-data file://my_script.txt