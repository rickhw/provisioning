#!/bin/bash
## run by crontab
# */5 * * * * cd [REDMINE_HOME] && ./receiving-email.sh

DATETIME=$(date +%Y%m%d)
TS=$(date +"%Y/%m/%d %H:%m:%S")
RAKEFILE="[REDMINE_HOME]/Rakefile"
IMAP_HOST="imap.gmail.com"
USERNAME="[SUPPORT_EMAIL]"
PASSWORD="[PASSWORD]"
LOGFILE="[REDMINE_HOME]/log/receiving-email_${DATETIME}.log"

echo "$TS Start receiving email" >> $LOGFILE

rake -f ${RAKEFILE} redmine:email:receive_imap \
    RAILS_ENV=production \
    host=${IMAP_HOST} port=993 ssl=true \
    username=${USERNAME} \
    password=${PASSWORD} \
    folder=Inbox \
    project=customer-support \
    tracker=support \
    unknown_user=accept \
    allow_override=project,tracker \
    move_on_success=ACCEPTED move_on_failure=REJECTED \
    --trace >>${LOGFILE} 2>&1

TS=$(date +"%Y/%m/%d %H:%m:%S")
echo "$TS Finish receiving email" >> $LOGFILE
echo "------" >> $LOGFILE
