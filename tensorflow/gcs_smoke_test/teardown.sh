#!/bin/bash

GSUTIL_BIN="/var/gcloud/google-cloud-sdk/bin/gsutil"

echo "Got teardown argument $1"

if "${GSUTIL_BIN}" rm "$1"
then
  echo "Cleaned up new tfrecord file in GCS: '$1'"
else
  echo "FAIL: Unable to clean up new tfrecord file in GCS: '$1'"
  exit 1
fi
