#!/bin/bash
cpu=$(LANG=C top -bn1 | awk '/Cpu/ {print $2 + $4}')
free_memory=$(free -b | awk '/Mem/ {printf "%.0f" , ($7*100)/$2}')
used_memory=$(free -b | awk '/Mem/ {printf "%.0f", ($3*100)/$2}')
used_disk_space=$(df | awk '/etc/ {print $5}')
free_disk_space=$(df | awk '/etc/ {printf "%.0f", ($4*100)/$2}')
process_usage=$(top -bn1 | awk '$1 ~ /[0-9]/ {print $9}' | head -5)
process_name=$(top -bn1 | awk '$1 ~ /[0-9]/ {print $12}' | head -5)

echo  "CPU USAGE: ${cpu}%"
echo  "TOTAL MEMORY USAGE: used ${used_memory}% | free ${free_memory}%"
echo  "TOTAL DISK SPACE :  used ${used_disk_space} | free ${free_disk_space}% "

echo  "==PROCESSES BY CPU USAGE=="
top -bn1 | awk '$1 ~ /[0-9]/ {print $9"%" " " $12}' | head -5

echo  "==PROCESSES BY MEMORY USAGE=="
top -bn1 | awk '$1 ~ /[0-9]/ {print $10"%" " " $12}' | sort -n -r | head -5
