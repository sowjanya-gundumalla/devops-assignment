# DevOps Assignment: System Monitoring, User Management, and Backup Automation

## Overview
This repository contains the implementation of a DevOps assignment focused on setting up system monitoring, secure user management, and automated backups on an Ubuntu Linux environment. The tasks were executed locally and documented with logs, scripts, and verification outputs.

---

# Q1: System Monitoring Setup

## Objective
To configure system monitoring on an Ubuntu server to track CPU usage, memory utilization, running processes, and disk usage, and to log system metrics for troubleshooting and capacity planning.

---

## Tools Used
- htop
- df
- du
- top (batch mode)
- Log files stored under `/var/log/system_monitoring`

---

## Implementation

### 1. Monitoring Tool Installation
The `htop` utility was installed and verified to monitor CPU, memory, and running processes in real time.

[Add screenshot of htop output ]

---

### 2. CPU, Memory, and Process Monitoring
System resource usage was observed using `htop`. Processes were sorted to identify resource-intensive applications.

[Add screenshot of htop sorted by CPU or memory ]

---

### 3. Disk Usage Monitoring
Filesystem-level disk usage was monitored using `df -h`, and directory-level disk usage was analyzed using `du`.

[Add screenshot of df -h output ]  
[Add screenshot of du output ]

---

### 4. System Metrics Logging
A dedicated logging directory was created at:

```

/var/log/system_monitoring

```

System metrics were saved into log files:
- process_log.txt
- disk_usage.log
- home_usage.log

Timestamps were appended to logs to record when metrics were collected.

[Add screenshot of log files listing ]  
[Add screenshot of log file contents ]

---

## Outcome
- CPU, memory, disk, and process usage successfully monitored
- Resource-intensive processes identified
- System metrics logged for analysis and troubleshooting

---

# Q2: User Management and Access Control

## Objective
To create secure user accounts for new developers and enforce access control through directory isolation, permissions, and password policies.

---

## Implementation

### 1. User Account Creation
Two user accounts were created:
- Sarah
- Mike

Each user was assigned a unique user ID and group.

[Add screenshot of user creation and id verification ]

---

### 2. Password Configuration
Secure passwords were configured for both users using the system password management utility.

[Add screenshot showing successful password update ]

---

### 3. Workspace Directory Setup
Dedicated workspace directories were created:
- `/home/sarah/workspace`
- `/home/mike/workspace`

[Add screenshot of workspace directory structure ]

---

### 4. Ownership and Permission Configuration
Ownership of each user’s home directory was assigned to the respective user. Permissions were restricted so only the owner could access their files.

[Add screenshot of directory permissions ]

---

### 5. Password Expiration Policy
A password expiration policy was enforced to require password changes every 30 days.

[Add screenshot of password policy verification ]

---

### 6. Access Isolation Verification
Access isolation was verified by switching users and attempting to access another user’s home directory. Unauthorized access was correctly denied.

[Add screenshot showing permission denied error ]

---

## Outcome
- Secure user accounts created
- Isolated workspace directories configured
- Permissions enforced confidentiality
- Password expiration policy applied

---

# Q3: Backup Configuration for Web Servers

## Objective
To configure automated backups for Apache and Nginx web servers, schedule backups using cron jobs, and verify backup integrity.

---

## Backup Scope

### Apache (Sarah)
- Configuration directory: `/etc/apache2`
- Document root: `/var/www/html`

### Nginx (Mike)
- Configuration directory: `/etc/nginx`
- Document root: `/usr/share/nginx/html`

---

## Implementation

### 1. Backup Directory Setup
A secure backup directory was created at:

```

/backups

```

Access to the directory was restricted to root.

[Add screenshot of /backups directory ]

---

### 2. Backup Scripts
Two backup scripts were created:
- `apache_backup.sh`
- `nginx_backup.sh`

Each script:
- Compresses configuration and document root directories
- Stores backups as `.tar.gz` files
- Generates verification logs

[Add screenshot of backup scripts ]

---

### 3. Manual Backup Execution
Backup scripts were executed manually to validate functionality. Backup archives were created successfully in the `/backups` directory.

[Add screenshot of backup files in /backups ]

---

### 4. Backup Integrity Verification
Backup integrity was verified by listing the contents of each compressed archive. Verification outputs were saved to log files.

[Add screenshot of apache_backup_verify.log ]  
[Add screenshot of nginx_backup_verify.log ]

---

### 5. Cron Job Configuration
Automated backups were scheduled to run every Tuesday at 12:00 AM using cron.

Cron configuration:
```

0 0 * * 2 /usr/local/bin/apache_backup.sh
0 0 * * 2 /usr/local/bin/nginx_backup.sh

```

[Add screenshot of crontab output ]  
[Add screenshot of cron_jobs.txt ]

---

## Outcome
- Automated backups configured for Apache and Nginx
- Backups stored securely with correct naming conventions
- Backup integrity verified through logs
- Cron jobs scheduled successfully

---

## Conclusion
This assignment successfully implemented system monitoring, secure user management, and automated backup procedures on an Ubuntu Linux environment. The setup follows standard DevOps practices and can be directly replicated on cloud platforms such as AWS EC2.

---

## Repository Contents
- Monitoring logs (Q1)
- Backup scripts and verification logs (Q3)
- Cron configuration
- Screenshots demonstrating successful execution
```

