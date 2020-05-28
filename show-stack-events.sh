aws cloudformation describe-stack-events --stack-name $1 \
--query 'StackEvents[].[{Resource:LogicalResourceId, Status:ResourceStatus, Reason:ResourceStatusReason}]' --output table
