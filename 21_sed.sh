#!/bin/sh
cd ./input/$1

cat donor.tsv | awk -F"\t" '{for(i=1;i<=NF;i++){if($i==""){$i="\\N"}}OFS="\t";print}' > donor_sed.tsv
cat project.tsv | awk -F"\t" '{for(i=1;i<=NF;i++){if($i==""){$i="\\N"}}OFS="\t";print}' > project_sed.tsv
cat specimen.tsv | awk -F"\t" '{for(i=1;i<=NF;i++){if($i==""){$i="\\N"}}OFS="\t";print}' > specimen_sed.tsv
cat sample.tsv | awk -F"\t" '{for(i=1;i<=NF;i++){if($i==""){$i="\\N"}}OFS="\t";print}' > sample_sed.tsv
cat ssm.tsv | awk -F"\t" '{for(i=1;i<=NF;i++){if($i==""){$i="\\N"}}OFS="\t";print}' > ssm_sed.tsv

