aws cloudformation list-exports --query 'Exports[].[Name,Value]' --output table

# another option:
#aws cloudformation list-exports | jq -r '.Exports[] | "\(.Name): \(.Value)"'
