#!/bin/bash
#Crontab entry: 
if ps -ef | grep -v grep | grep 'run-scrape.sh'; then
    echo "Process is running!"
    exit 0
else
    echo "Process dead."
    echo "Process died. Check the server" | /usr/bin/mail "andy.meneely@gmail.com,9194136436@txt.att.net" -s "Check the server scraper. Process died"
    exit 0
fi
