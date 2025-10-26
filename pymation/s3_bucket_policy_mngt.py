# S3 Bucket Policy Management
# Purpose: Manage S3 bucket policies for secure access control.
# Setup: Define policy JSON with the access rules.

def update_s3_bucket_policy(bucket_name, policy):
    s3 = boto3.client('s3')
    s3.put_bucket_policy(Bucket=bucket_name, Policy=policy)
    print(f"Policy updated for {bucket_name}")