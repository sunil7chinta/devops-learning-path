#!/bin/bash

###################
#Author: Sunil Kumar C
#Date:22/12/2025
#Version: v1
#Desc: This scripts will report the aws resource usage.
###################

set -x

#aws s3
#aws ec2
#aws lambda
#aws IAM users

#List s3 buckets
echo "Print the list of s3 buckets"
aws s3 ls

#List ec2 instances
echo "Print the list of ec2 intaces"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' 

#List lamda functions
echo "Print list of lambda functions"
aws lambda list-functions

#List IAM users
echo "Print list of IAM users"
aws iam list-users


