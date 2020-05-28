default_vpc_id=$(aws ec2 describe-vpcs \
    --filters Name=isDefault,Values=true \
    --query Vpcs[*].VpcId --output text)

echo ${default_vpc_id}
