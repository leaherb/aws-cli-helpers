#!/bin/bash

# List EC2 instances with: InstanceId, KeyName, State, Tag (values)
# Improvments: list both key/value pairs

aws ec2 describe-instances --query 'Reservations[*].Instances[*].[{InstanceId:InstanceId, KeyName:KeyName, State: State.Name, Tags:Tags[].Value | [0]}]' \
    --output table
