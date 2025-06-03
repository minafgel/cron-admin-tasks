# Automating Daily Admin Tasks with cron

This project demonstrates how to schedule daily administrative tasks using a Bash script and `cron`.

## Tasks Automated

- Update package list using `apt`
- Clean temporary files from `/tmp`
- Log current disk usage to `/var/log/daily_admin.log`

## Scheduled with cron

To run the script daily at 2 AM, add the following to root's crontab:


## Log Location

All output is saved in:

* /usr/local/bin/daily_tasks.sh # The script
* /var/log/daily_admin.log # Daily log
