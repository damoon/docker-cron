#!/bin/bash
touch /var/log/cron.log
echo "$CRON_SCHEDULE $CRON_USER $@ >> /var/log/cron.log 2>&1" > /etc/cron.d/crontab
cron
tail -f /var/log/cron.log
