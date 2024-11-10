# Automate EC2 Instance Start/Stop
# Purpose: Automatically start and stop EC2 instances to reduce costs during off-hours.
# Setup: Define instance IDs and action (start or stop). Run this script manually or schedule it using AWS Lambda and CloudWatch Events.

import boto3
ec2 = boto3.client('ec2')

def manage_ec2(action, instance_ids):
    ec2.start_instances(InstanceIds=instance_ids) if action == 'start' else ec2.stop_instances(InstanceIds=instance_ids)
    print(f"Instances {action}ped: {instance_ids}")

manage_ec2('stop', ['i-1234567890abcdef0'])