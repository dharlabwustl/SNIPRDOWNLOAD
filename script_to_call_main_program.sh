#!/bin/bash
SESSION_ID=${1}
XNAT_USER=${2}
XNAT_PASS=${3}
TYPE_OF_PROGRAM=${4}
echo TYPE_OF_PROGRAM::${TYPE_OF_PROGRAM}
export XNAT_HOST=${5}
echo ${TYPE_OF_PROGRAM}::TYPE_OF_PROGRAM

if [[ ${TYPE_OF_PROGRAM} == "DOWNLOAD_SCANS" ]]; then
  SESSION_ID=${1}
  python3 /software/download_ct_scans.py   ${SESSION_ID} $XNAT_USER $XNAT_PASS $XNAT_HOST
fi