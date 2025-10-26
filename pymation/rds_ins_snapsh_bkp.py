# RDS Instance Snapshot Backup
# Purpose: Take regular snapshots of RDS instances to ensure data safety.
# Setup: Replace db_instance_identifier and snapshot_id. Schedule through Lambda.

import boto3
rds = boto3.client('rds')

def create_rds_snapshot(db_instance_identifier, snapshot_id):
    rds.create_db_snapshot(DBSnapshotIdentifier=snapshot_id, DBInstanceIdentifier=db_instance_identifier)
    print(f"Snapshot {snapshot_id} created for {db_instance_identifier}")

create_rds_snapshot('my-db-instance', 'my-db-snapshot')