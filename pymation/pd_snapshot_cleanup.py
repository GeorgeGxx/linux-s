# Name: pd_snapshot_cleanup.py
# Description: Automate GCP Persistent Disk Snapshot Cleanup
# Purpose: Delete old Persistent Disk snapshots to control storage costs.
# Setup: Adjust `days` based on your retention policy.
# Before, install google-cloud-compute with Powershell > Run as Administrator >  pip install google-cloud-compute 

from google.cloud import compute_v1
from datetime import datetime, timezone

def cleanup_old_snapshots(days=30, project_id="YOUR_PROJECT_ID"):
    snapshot_client = compute_v1.SnapshotsClient()
    request = compute_v1.ListSnapshotsRequest(project=project_id)

    snapshots = snapshot_client.list(request=request)

    deleted = 0
    for snapshot in snapshots:
        if snapshot.creation_timestamp:
            created_at = datetime.strptime(snapshot.creation_timestamp, "%Y-%m-%dT%H:%M:%S.%f%z")
            age = (datetime.now(timezone.utc) - created_at).days

            if age > days:
                print(f"Deleting snapshot {snapshot.name} ({age} days old)")
                snapshot_client.delete(project=project_id, snapshot=snapshot.name)
                deleted += 1

    print(f"✅ Cleanup completed: {deleted} old snapshots deleted.")

# Example: delete snapshots older than 30 days
cleanup_old_snapshots(days=30, project_id="my-gcp-project")
