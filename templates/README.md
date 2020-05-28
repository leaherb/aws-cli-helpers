## Snippets

### IAM Group with Amazon managed policies
https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html#cfn-iam-group-policies

    MyGroup:
        Type: AWS::IAM::Group
        Properties: 
            GroupName: !Sub "mygroup-${AWS::Region}"
            ManagedPolicyArns: 
                - arn:aws:iam::aws:policy/AmazonVPCFullAccess
                - arn:aws:iam::aws:policy/AmazonEC2FullAccess
                - arn:aws:iam::aws:policy/AmazonS3FullAccess

> Note: according to Amazon ... "Naming an IAM resource can cause an unrecoverable error if you reuse the same template in multiple Regions." For this reason, I postfix GroupName with Region.
