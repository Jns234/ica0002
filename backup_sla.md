# Backup Service Level Agreement (SLA)

This document outlines the backup approach for the following services within our Ansible repository:

1. **Database Servers**
2. **InfluxDB**
3. **Ansible Repository**

## Database Servers
### Backup Coverage
- What is Backed Up: MySQL.
- What is Not Backed Up: Nginx, AGAMA, Grafana, Bind.

### RPO (Recovery Point Objective)
- RPO: Daily backups are taken, ensuring that data loss is minimal.

### Versioning and Retention
- Backup Versions: The last 7 daily backups are retained.
- Retention Period: Backups are kept for 30 days.

### Usability Checks
- Backup Usability: Backups are regularly tested to ensure they can be restored without errors.

### Restoration Criteria
- Backup Restoration: Database backups should be restored in case of data corruption or loss.
- RTO (Recovery Time Objective): The RTO for database restoration is within 4 hours.

## InfluxDB
### Backup Coverage
- What is Backed Up: InfluxDB data.
- What is Not Backed Up: InfluxDB configuration files, Nginx, AGAMA, Grafana, Bind.

### RPO (Recovery Point Objective)
- RPO: Daily backups are taken, minimizing data loss.

### Versioning and Retention
- Backup Versions: The last 7 daily backups are retained.
- Retention Period: Backups are kept for 30 days.

### Usability Checks
- Backup Usability: Regular tests are conducted to ensure the InfluxDB backups can be restored without issues.

### Restoration Criteria
- Backup Restoration: InfluxDB backups should be restored in case of data loss.
- RTO (Recovery Time Objective): The RTO for InfluxDB restoration is within 4 hours.

## Ansible Repository
### Backup Coverage
- What is Backed Up: The entire Ansible repository, including playbooks, roles, and inventory files.
- What is Not Backed Up: Non-essential files, such as temporary files and caches.

### RPO (Recovery Point Objective)
- RPO: Daily backups are taken, minimizing data loss.

### Versioning and Retention
- Backup Versions: The last 7 daily backups are retained.
- Retention Period: Backups are kept for 30 days.

### Usability Checks
- Backup Usability: Regular tests are conducted to ensure the Ansible repository backups can be restored without issues.

### Restoration Criteria
- Backup Restoration: The Ansible repository backups should be restored in case of data loss or corruption.
- RTO (Recovery Time Objective): The RTO for Ansible repository restoration is within 4 hours.

Please note that while certain services like Nginx, AGAMA, Grafana, and Bind are not backed up, it is acknowledged that they can be re-created from scratch using Ansible. In contrast, MySQL and InfluxDB contain critical data that cannot be restored via Ansible alone, making regular backups essential.
