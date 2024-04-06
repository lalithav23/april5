#!/bin/bash
disk_usage=`df -h . | awk -F " " NR==2 {print $5} | sed s/%//Ig`
if [ $disk_usage -gt 30 ]
then
echo " Disk usage reaches threshhold " | mail -s "Disk Usage Alert" lalithav233@gmail.com
fi
