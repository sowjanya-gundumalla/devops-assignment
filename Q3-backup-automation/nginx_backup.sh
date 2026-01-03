#!/bin/bash

DATE=$(date +%F)
BACKUP_FILE="/backups/nginx_backup_${DATE}.tar.gz"

tar -czf "$BACKUP_FILE" /etc/nginx /usr/share/nginx/html 2>> /backups/nginx_backup_error.log
tar -tzf "$BACKUP_FILE" > /backups/nginx_backup_verify.log
