Install and configure infrastructure with Ansible:

    ansible-playbook infra.yaml

Restore MySQL data from the backup:

    sudo -u backup  duplicity --no-encryption restore rsync://Jns234@backup.jankang.jk/mysql /home/backup/restore/mysql
    
    mysql agama < /home/backup/restore/agama.sql

Restore Telegraf data from the backup:

    sudo -u backup  duplicity --no-encryption restore rsync://Jns234@backup.jankang.jk/influxdb /home/backup/restore/influxdb

    sudo -i service telegraf stop
    influx -execute 'DROP DATABASE telegraf'
    influxd restore -portable -database telegraf /home/backup/restore/influxdb
<add a few words here how the result of backup restore can be checked>