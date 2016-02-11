#!/bin/bash

if [ $# -ne 1 ]
then
    echo
    echo "Usage: who-has-not-pushed.sh [--go]\n\n  You must be in a directory with git repositories (e.g. cloned from /pushbox). This script will iterate over those directories, pull, and then give you the names of those who have not committed in the last hour. 
    echo
    exit 1
fi

