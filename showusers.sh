# List users: Username, Last login with password, ARN.
# Default list of columns:  Arn, CreateDate, PasswordLastUsed, Path, UserId, UserName 

aws iam list-users --query 'Users[*].[UserName,PasswordLastUsed,Arn]' --output table
