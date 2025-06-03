#!/bin/bash

# --------------------------------------------
# Daily Admin Tasks Script
# --------------------------------------------
# This script is meant to be scheduled via cron
# It performs:
# - Package update
# - Cleaning temporary files
# - Log current disk usage
# --------------------------------------------

LOGFILE="/var/log/daily_admin.log"
DATE=$(date "+%Y-%m-%d %H:%M:%S")

echo "-----------------------------" >> $LOGFILE
echo "$DATE - Running daily admin tasks." >> $LOGFILE

# 1. Update system package index
echo "Updating package list." >> $LOGFILE
sudo apt update >> $LOGFILE 2>&1

# 2. Clean /tmp folder (older than 3 days)
echo "Cleaning temporary files." >> $LOGFILE
sudo find /tmp -type f -mtime +3 -exec rm -f {} \; >> $LOGFILE 2>&1

# 3. Log disk usage
echo "Logging disk usage." >> $LOGFILE
df -h >> $LOGFILE

echo "Completed." >> $LOGFILE
