# DynamoDB Data Export to S3
# Purpose: Regularly export data from DynamoDB tables to S3 for analytics or backup.
# Setup: Define table and bucket names, and run the script periodically.

import boto3
dynamodb = boto3.resource('dynamodb')
s3 = boto3.client('s3')

def export_dynamodb_to_s3(table_name, bucket_name, file_name):
    table = dynamodb.Table(table_name)
    data = table.scan()['Items']
    s3.put_object(Bucket=bucket_name, Key=file_name, Body=str(data))
    print(f"Data exported to s3://{bucket_name}/{file_name}")

export_dynamodb_to_s3('my-table', 'my-bucket', 'backup.json')