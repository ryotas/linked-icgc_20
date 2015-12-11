#!/bin/sh
cd ./input/$1
pwd
mysql -u root -pp < ./../../sql/00_database.sql
mysql -u linked_icgc_20 -pp -D linked_icgc_20 < ./../../sql/01_table_project.sql
mysql -u linked_icgc_20 -pp -D linked_icgc_20 < ./../../sql/02_table_donor.sql
mysql -u linked_icgc_20 -pp -D linked_icgc_20 < ./../../sql/03_table_specimen.sql
mysql -u linked_icgc_20 -pp -D linked_icgc_20 < ./../../sql/04_table_sample.sql
mysql -u linked_icgc_20 -pp -D linked_icgc_20 < ./../../sql/05_table_ssm.sql
mysql -u linked_icgc_20 -pp -D linked_icgc_20 < ./../../sql/11_load_project.sql
mysql -u linked_icgc_20 -pp -D linked_icgc_20 < ./../../sql/12_load_donor.sql
mysql -u linked_icgc_20 -pp -D linked_icgc_20 < ./../../sql/13_load_specimen.sql
mysql -u linked_icgc_20 -pp -D linked_icgc_20 < ./../../sql/14_load_sample.sql
mysql -u linked_icgc_20 -pp -D linked_icgc_20 < ./../../sql/15_load_ssm.sql
#mysql -u linked_icgc_20 -pp -D linked_icgc_20 < ./../../sql/21_donor.sql
#mysql -u linked_icgc_20 -pp -D linked_icgc_20 < ./../../sql/22_specimen.sql
#mysql -u linked_icgc_20 -pp -D linked_icgc_20 < ./../../sql/23_analyzed_sample.sql
mysql -u linked_icgc_20 -pp -D linked_icgc_20 < ./../../sql/24_ssm_mutation.sql
mysql -u linked_icgc_20 -pp -D linked_icgc_20 < ./../../sql/25_ssm_detection.sql
mysql -u linked_icgc_20 -pp -D linked_icgc_20 < ./../../sql/26_ssm_effect.sql
mysql -u linked_icgc_20 -pp -D linked_icgc_20 < ./../../sql/31_index.sql
cd ../../
