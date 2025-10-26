# Automated S3 Bucket Backup and Sync
# Purpose: Sync data between two S3 buckets for backup.
# Setup: Replace bucket names and run. Schedule with Lambda or as a local cron job.

import boto3
s3 = boto3.resource('s3')

def sync_s3_buckets(source_bucket, destination_bucket):
    copy_source = {'Bucket': source_bucket, 'Key': obj.key}
    for obj in s3.Bucket(source_bucket).objects.all():
        s3.Object(destination_bucket, obj.key).copy(copy_source)
    print(f"Data synced from {source_bucket} to {destination_bucket}")

sync_s3_buckets('source-bucket-name', 'destination-bucket-name')

