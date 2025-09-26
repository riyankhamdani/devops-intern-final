#!/usr/bin/env bash
# sysinfo.sh - prints basic system info


set -e


echo "Current user: $(whoami)"
echo "Current date: $(date -u)"
echo "Disk usage:"
df -h
