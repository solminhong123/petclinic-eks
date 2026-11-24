#!/bin/bash
mysql -uroot -p"$MYSQL_ROOT_PASSWORD" <<SQL
CREATE USER 'petclinic_app'@'%' IDENTIFIED BY '${APP_DB_PASSWORD}';
GRANT SELECT, INSERT, UPDATE, DELETE ON petclinic.* TO 'petclinic_app'@'%';
SQL
