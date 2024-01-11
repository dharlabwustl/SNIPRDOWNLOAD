import os,glob,sys,subprocess
from download_with_session_ID import *
print(" I AM READY TO DOWNLOAD SCANS")
SESSION_ID=sys.argv[1]
XNAT_USER=sys.argv[2]
XNAT_PASS=sys.argv[3]
XNAT_HOST=sys.argv[4]
## download meta-data for a session:
get_metadata_session(SESSION_ID,outputfile=str(SESSION_ID)+".csv")

