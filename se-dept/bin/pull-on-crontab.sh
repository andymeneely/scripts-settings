#!/bin/bash

# This script is intended to be run in crontab
#
# To schedule it on crontab, run crontab -e, and add this line:
#
# 05 00 25 12 * /home/faculty/andy/bin/pull-on-crontab.sh /home/faculty/andy/sandbox/se350-grading 2>>~/crontab.err
#
# 5th minute
# 0th hour (midnight)
# 25th day
# 12th month (December)
# * Every day of the week

if [ $# -ne 1 ]
then
     echo
     echo "Usage: pull-on-crontab.sh grading_directory"
     echo 
     echo "The grading directory should have all directories that are git repositories."
     echo 
     exit 1
fi

GRADE_DIR=$1

cd $GRADE_DIR

log="$GRADE_DIR/crontab_pull_log_`date +%F_%T`.txt"
touch $log

find `pwd` -mindepth 1 -maxdepth 1 -type d -print | while read pulledpushbox; do
     echo "======================" >> $log
     echo "Pulling from $pulledpushbox..." >> $log

     cd $pulledpushbox
     git pull 1>>$log 2>>$log

done

echo "Done! Logs are in $log"
