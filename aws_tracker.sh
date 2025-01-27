###################
# Author: Devesh
# Date: 27/01/25
# Version: v1
#
# This script will report the AWS resource usage
########################

set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# list s3 buckets
echo "List of s3 buckets"
aws s3 ls

# list EC2 Instances
echo "List of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list lambda
echo "List of lambda functions"
aws lambda list-functions

# list IAM Users
echo "List of iam users"
aws iam list-users

