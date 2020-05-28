#!/bin/bash

STACKNAME=$1
TEMPLATE=$2
PARMFILE=$3

# Get My local IP so I can restrict SSH to EC2 instance(s)
MYIP=$(curl -s ifconfig.me)
THISPARMFILE=$MYIP$PARMFILE
sed -e "s/TEMPMYIP/$MYIP\/32/" $PARMFILE >$THISPARMFILE

aws cloudformation create-stack \
--stack-name $STACKNAME \
--template-body file://$TEMPLATE \
--parameters file://$THISPARMFILE \
--capabilities "CAPABILITY_NAMED_IAM" "CAPABILITY_IAM" \
--region=us-west-2

aws cloudformation wait stack-create-complete --stack-name $STACKNAME