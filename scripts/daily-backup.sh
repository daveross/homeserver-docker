#!/usr/bin/env bash
#
# backup the opt directory!
#
cd /mnt/backup
tar cJPf $(date +%F)-$(hostname)-opt-tar.xz /opt/
# remove older backups
find /mnt/backup -type f -name '*-opt-tar.xz' -mtime +90 -delete

