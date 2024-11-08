#!/bin/bash
I=1
sgids='sg-0250f03e2b9a9179a'
for subnet in 'subnet-01f2d2f56dd65f5fa' 'subnet-0faee5dc14ad3de40' 'subnet-0a9e8ef4ff2a2cdcd'
do
    echo "Creating EC2 Instance in $subnet ..."
    aws ec2 run-instances --instance-type t2.nano --launch-template LaunchTemplateId=lt-033d78b822bc9c165 --security-group-ids $sgids --subnet-id $subnet --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=AWSB28-Server-'${I}'}]' >> /dev/null 2>&1
    echo "Created EC2 Machine with the name Testserver-${I}"
    I=$((I+1))
done