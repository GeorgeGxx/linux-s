# pd_snapshot_cleanup_cf.py
# Cloud Function entry point to clean old GCP Persistent Disk snapshots
# Features: dry-run, logging, whitelist, error handling
# Before, install:
# Google Cloud CLI - GCLOUDSDK (gcloud) - https://cloud.google.com/sdk/docs/install
# Google Cloud Compute with Powershell > Run as Administrator >  pip install google-cloud-compute
from google.cloud import compute_v1
from datetime import datetime, timezone
import logging
import os

PROJECT = os.environ.get("GCP_PROJECT") or os.environ.get("PROJECT_ID") or "your-project-id"
RETENTION_DAYS = int(os.environ.get("RETENTION_DAYS", "30"))
DRY_RUN = os.environ.get("DRY_RUN", "true").lower() == "true"
WHITELIST = set(os.environ.get("WHITELIST", "").split(",")) if os.environ.get("WHITELIST") else set()

logging.basicConfig(level=logging.INFO)

def cleanup_old_snapshots(request=None):
    client = compute_v1.SnapshotsClient()
    deleted = 0
    try:
        for snapshot in client.list(project=PROJECT):
            name = snapshot.name
            if name in WHITELIST:
                logging.info(f"Skipping whitelisted snapshot: {name}")
                continue
            ts = snapshot.creation_timestamp
            if not ts:
                continue
            created_at = datetime.strptime(ts, "%Y-%m-%dT%H:%M:%S.%f%z")
            age_days = (datetime.now(timezone.utc) - created_at).days
            if age_days > RETENTION_DAYS:
                logging.info(f"{'DRY-RUN:' if DRY_RUN else ''} Deleting snapshot {name} ({age_days} days)")
                if not DRY_RUN:
                    op = client.delete(project=PROJECT, snapshot=name)
                    # Optionally wait for operation to complete or log op self-link
                deleted += 1
        logging.info(f"Completed: {deleted} snapshots identified for deletion.")
        return ("OK", 200)
    except Exception as e:
        logging.exception("Snapshot cleanup failed")
        return (f"Error: {e}", 500)
