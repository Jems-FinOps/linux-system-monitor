#!/bin/bash

REPORT_FILE="reports/system_report_$(date +%Y-%m-%d_%H-%M-%S).txt"

echo "===================================" > $REPORT_FILE
echo " Linux System Monitoring Report" >> $REPORT_FILE
echo "===================================" >> $REPORT_FILE
echo "" >> $REPORT_FILE

echo "Hostname:" >> $REPORT_FILE
hostname >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "System Uptime:" >> $REPORT_FILE
uptime >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "CPU Information:" >> $REPORT_FILE
lscpu | head >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "Memory Usage:" >> $REPORT_FILE
free -h >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "Disk Usage:" >> $REPORT_FILE
df -h >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "Top Processes:" >> $REPORT_FILE
ps aux | head >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "Logged in Users:" >> $REPORT_FILE
who >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "Report Generated At:" >> $REPORT_FILE
date >> $REPORT_FILE

echo "Report saved to $REPORT_FILE"
