# Automated IAM User and Role Management
# Purpose: Automate management of IAM users, such as creating or deleting users.
# Setup: Define IAM username in the script.

import boto3
iam = boto3.client('iam')

def create_iam_user(username):
    iam.create_user(UserName=username)
    print(f"IAM user {username} created")

create_iam_user('new-user')