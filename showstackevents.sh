aws cloudformation describe-stack-events --stack-name $STACKNAME --query 'StackEvents[].[{Resource:LogicalResourceId, Status:ResourceStatus, Reason:ResourceStatusReason}]' --output table
