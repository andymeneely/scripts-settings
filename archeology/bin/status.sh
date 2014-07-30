#!/bin/bash

#wc ~/chromium-real-data/codereviews/issues_completed.log
#wc ~/chromium-real-data/codereviews/ids-from-gitlog.txt
#wc ~/chromium-real-data/codereviews/err*.log
#du -h --max-depth=1 ~/chromium-real-data

ps -ef | grep axmvse

psql -U archeology chromium_real2 -c "SELECT COUNT(*) num_code_reviews, (ROUND(100.0*COUNT(*)/160000.0,1)) percent FROM code_reviews"

cat $(ls ~/logs/log* | tail -n1)

