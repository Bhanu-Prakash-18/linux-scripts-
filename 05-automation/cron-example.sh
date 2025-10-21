#!/bin/bash
# cron-example.sh - Example to show cron job setup

echo "This is a test script to demonstrate cron scheduling."
date >> $HOME/cron_test.log
echo "Cron job executed."


Later you can schedule it using cron:


crontab -e
# Add line to run every day at 10am:
# 0 10 * * * /home/youruser/linux-scripts-/05-automation/cron-example.sh

