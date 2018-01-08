#!/bin/bash

GCS_NUMBER=$(cat /dev/urandom | tr -dc 'A-F0-9' | fold -w 8 | head -n 1)
GCS_PATH="$1"/"$GCS_NUMBER".tfrecord

echo "gcs_path=$GCS_PATH" > "$_SETUP_OUTPUT"
touch "$_SETUP_DONE"
