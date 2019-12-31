# List key pairs used by EC2 instances. 
aws ec2 describe-instances \
  --query 'Reservations[*].Instances[*].[InstanceId, KeyName,State.Name]' \
  --filters Name=instance-state-name \
  --output table
