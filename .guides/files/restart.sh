#!/usr/bin/env bash

cd /home/codio/workspace/.guides/files/

#SAMPLE_DATA=sample-data/*.sql
#DB_NAME="EPCars"

#delete existing version
mysql < cleanup.sql
# populating the database
#for f in $SAMPLE_DATA
#do
#  echo "Processing $f file..."
#  mysql < "$f"
#done

#cd /home/codio/workspace

#SAMPLE_DATA=data/*.sql
#DB_NAME="sales"

#for f in $SAMPLE_DATA
#do
#  echo "Processing $f file..."
#  mysql < "$f"
#done

mysql < sales_blank.sql