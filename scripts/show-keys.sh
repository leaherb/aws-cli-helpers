# List key pairs used by EC2 instances. 
aws ec2 describe-instances \
  --query 'Reservations[*].Instances[*].{InstanceId:InstanceId, KeyName:KeyName, Status:State.Name}' \
  --output table
