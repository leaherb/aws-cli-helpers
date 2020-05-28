NAME_TAG=${2}
aws ec2 run-instances --image-id ${1} \
    --instance-type t2.micro \
    --tag-specifications \
        "ResourceType=instance,Tags=[{Key=Name,Value=$NAME_TAG}]" \
        "ResourceType=volume,Tags=[{Key=Name,Value=$NAME_TAG}]"
