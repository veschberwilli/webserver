#!/bin/bash

# script to backup the psql db
# to be run as cron job

# Author: veschberwilli
# Date: 29.11.2018

USR="postgres"
framework_db="django_framework"
date=`date +%Y-%m-%d_%H_%M_%S`
dest_path=$1

echo "backup dumped on ${date}."
pg_dump -U ${USR} -f "${dest_path}${framework_db}_${date}.sql" "$framework_db"
