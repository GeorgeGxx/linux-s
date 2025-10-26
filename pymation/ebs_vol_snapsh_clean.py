# Name: ebs_vol_snapsh_clean.py
# Description: Automate EBS Volume Snapshot Cleanup
# Purpose: Delete old EBS snapshots to control storage costs.
# Setup: Adjust days based on retention policy.
# Before, install boto3 with Powershell > Run as Administrator >  pip install boto3

import boto3
ec2 = boto3.client('ec2')

def cleanup_old_snapshots(days=30):
    snapshots = ec2.describe_snapshots(OwnerIds=['self'])['Snapshots']
    for snapshot in snapshots:
        age = (datetime.now(timezone.utc) - snapshot['StartTime']).days
        if age > days:
            ec2.delete_snapshot(SnapshotId=snapshot['SnapshotId'])
            print(f"Deleted snapshot {snapshot['SnapshotId']}")

cleanup_old_snapshots()