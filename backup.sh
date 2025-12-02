#!/bin/bash

BACKUP_DIR="./backups"
DATE=$(date +%Y%m%d_%H%M%S)

mkdir -p $BACKUP_DIR

# Backup PostgreSQL
docker-compose exec postgres pg_dump -U finance_user finance_db > $BACKUP_DIR/finance_db_$DATE.sql

# Backup logs
docker-compose logs --tail=1000 > $BACKUP_DIR/logs_$DATE.txt

echo "Backup completed: $BACKUP_DIR/finance_db_$DATE.sql"