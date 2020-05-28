aws cloudformation describe-stacks --stack-name $1 \
--query 'Stacks[].Outputs[].[OutputValue]' --output text
