#!/bin/bash

# Test Tensorflow package installation.
/usr/local/bin/pip install --user tf-nightly

# Test Tensorflow interaction with GCS.
python tensorflow/gcs_smoke_test/gcs_smoke.py "$@"
